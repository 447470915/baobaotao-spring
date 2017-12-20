package com.baobaotao.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.CallableStatementCallback;
import org.springframework.jdbc.core.CallableStatementCreator;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.ResultSetMetaData;

@Repository
public class AccessProModule {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// 调用存储过程：有返回参数（非结果集）
	public ArrayList<String> accessDB(final String proName, final ArrayList<String> input,
			final ArrayList<String> output) {
		final int inOutParamsLen = input.size() + output.size();// 输入输入的总参数个数
		@SuppressWarnings({ "unchecked", "rawtypes" })
		ArrayList<String> resultList = jdbcTemplate.execute(new CallableStatementCreator() {
			@Override
			public CallableStatement createCallableStatement(Connection con) throws SQLException {
				// 定义存储过程接口//String storedProc = "{call
				// pckg_check_login(?,?……?)}";
				String storedProc = "{call " + proName + "(";
				for (int i = 0; i < inOutParamsLen - 1; i++) {
					storedProc += "?,";
				}
				storedProc += "?)}";

				CallableStatement cs = con.prepareCall(storedProc);
				int i;
				// 设置输入参数
				for (i = 1; i <= input.size(); i++) {
					// cs.setString(1, "1");// 设置第一个输入参数的值
					// cs.setString(2, "1");// 设置第二个输入参数的值
					// ……
					cs.setString(i, input.get(i - 1));// 设置第i个输入参数的值
				}
				// 设置输出参数类型
				for (i = input.size() + 1; i <= inOutParamsLen; i++) {
					// cs.registerOutParameter(3, java.sql.Types.VARCHAR);//
					// 注册第一个输出参数的类型
					// cs.registerOutParameter(4, java.sql.Types.VARCHAR);//
					// 注册第二个输出参数的类型
					// ……
					cs.registerOutParameter(i, java.sql.Types.VARCHAR);// 设置第i个输入参数的值
				}
				return (CallableStatement) cs;
			}
		}, new CallableStatementCallback() {
			@Override
			public Object doInCallableStatement(CallableStatement cs) throws SQLException, DataAccessException {
				ArrayList<String> resultList = new ArrayList<String>();
				cs.execute();

				for (int i = input.size() + 1; i <= inOutParamsLen; i++) {
					// resultList.add(cs.getString(3));
					// resultList.add(cs.getString(4));
					// ……
					resultList.add(cs.getString(i));
				}
				return resultList;// 获取输出参数的值
			}
		});
		return (resultList);
	}

	// 调用存储过程：有返回参数（结果集）
	public List<Map<String,Object>> accessDBSet(final String proName, final ArrayList<String> input,
			final ArrayList<String> output) {
		final int inOutParamsLen = input.size() + output.size();// 输入输入的总参数个数
		@SuppressWarnings({ "unchecked", "rawtypes" })
		
		CallableStatementCreator css = new CallableStatementCreator(){
			@Override
			public CallableStatement createCallableStatement(Connection con) throws SQLException {
				// 定义存储过程接口//String storedProc = "{call
				// pckg_check_login(?,?……?)}";
				String storedProc = "{call " + proName + "(";
				for (int i = 0; i < inOutParamsLen - 1; i++) {
					storedProc += "?,";
				}
				storedProc += "?)}";

				CallableStatement cs = con.prepareCall(storedProc);
				int i;
				// 设置输入参数
				for (i = 1; i <= input.size(); i++) {
					// cs.setString(1, "1");// 设置第一个输入参数的值
					// cs.setString(2, "1");// 设置第二个输入参数的值
					// ……
					cs.setString(i, input.get(i - 1));// 设置第i个输入参数的值
				}
				// 设置输出参数类型
				for (i = input.size() + 1; i <= inOutParamsLen; i++) {
					// cs.registerOutParameter(3, java.sql.Types.VARCHAR);//
					// 注册第一个输出参数的类型
					// cs.registerOutParameter(4, java.sql.Types.VARCHAR);//
					// 注册第二个输出参数的类型
					// ……
					cs.registerOutParameter(i, java.sql.Types.VARCHAR);// 设置第i个输入参数的值
				}
				System.out.println(storedProc);
				return (CallableStatement) cs;
			}
		};
		List<Map<String,Object>> listMap = jdbcTemplate.execute(css, new CallableStatementCallback() {
			@Override
			public Object doInCallableStatement(CallableStatement cs) throws SQLException, DataAccessException {
				ResultSet rs=null; 
				System.out.println(cs.execute());
				rs=cs.getResultSet();
				return handleResultSetToListMap(rs);// 获取输出参数的值
			}
		});
		return (listMap);
	}
	
    /** 
     * @param resultSet 
     * @return 
     * @throws SQLException 
    */  
    public List<Map<String, Object>> handleResultSetToListMap(  
            ResultSet resultSet) throws SQLException {  
        List<Map<String, Object>> values = new ArrayList<Map<String, Object>>();  
  
        List<String> columnLabels = getColumnLabels(resultSet);  
        Map<String, Object> map = null;  
  
        while (resultSet.next()) {  
            map = new HashMap<String, Object>();  
  
            for (String columnLabel : columnLabels) {  
                Object value = resultSet.getObject(columnLabel);  
                map.put(columnLabel, value);  
            }  
            values.add(map);  
        }  
        return values;  
    }  
    /** 
     * @param resultSet 
     * @return 
     * @throws SQLException 
     */  
    private List<String> getColumnLabels(ResultSet resultSet)  
            throws SQLException {  
        List<String> labels = new ArrayList<String>();  
  
        ResultSetMetaData rsmd = (ResultSetMetaData) resultSet.getMetaData();  
        for (int i = 0; i < rsmd.getColumnCount(); i++) {  
            labels.add(rsmd.getColumnLabel(i + 1));  
        }  
  
        return labels;  
    } 
}
