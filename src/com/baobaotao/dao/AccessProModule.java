package com.baobaotao.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.CallableStatementCallback;
import org.springframework.jdbc.core.CallableStatementCreator;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AccessProModule {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// 调用存储过程：有返回参数（非结果集）
	public ArrayList<String> accessDB(final String proName,final ArrayList<String> input,final ArrayList<String> output){
		final int inOutParamsLen=input.size()+output.size();//输入输入的总参数个数
		@SuppressWarnings({ "unchecked", "rawtypes" })
		ArrayList<String> resultList = jdbcTemplate.execute(new CallableStatementCreator() {
				@Override
				public CallableStatement createCallableStatement(Connection con) throws SQLException {
					//定义存储过程接口//String storedProc = "{call pckg_check_login(?,?……?)}";
					String storedProc="{call "+proName+"(";
					for(int i=0;i<inOutParamsLen-1;i++){
						storedProc+="?,";
					}
					storedProc+="?)}";
					
					CallableStatement cs = con.prepareCall(storedProc);
					int i;
					//设置输入参数
					for(i=1;i<=input.size();i++){
						//cs.setString(1, "1");// 设置第一个输入参数的值
						//cs.setString(2, "1");// 设置第二个输入参数的值
						//……
						cs.setString(i, input.get(i-1));// 设置第i个输入参数的值
					}
					//设置输出参数类型
					for(i=input.size()+1;i<=inOutParamsLen;i++){
						//cs.registerOutParameter(3, java.sql.Types.VARCHAR);// 注册第一个输出参数的类型
						//cs.registerOutParameter(4, java.sql.Types.VARCHAR);// 注册第二个输出参数的类型
						//……
						cs.registerOutParameter(i, java.sql.Types.VARCHAR);// 设置第i个输入参数的值
					}
					return (CallableStatement) cs;
				}
			}, new CallableStatementCallback() {
				@Override
				public Object doInCallableStatement(CallableStatement cs) throws SQLException, DataAccessException {
					ArrayList<String> resultList = new ArrayList<String>();
					cs.execute();
					
					for(int i=input.size()+1;i<=inOutParamsLen;i++){
						//resultList.add(cs.getString(3));
						//resultList.add(cs.getString(4));
						//……
						resultList.add(cs.getString(i));
					}
					return resultList;// 获取输出参数的值
				}
			});
			return(resultList);
	}
	
	//调用存储过程：有返回参数（结果集、未调通）
			/*List resultList = (List) jdbcTemplate.execute(new CallableStatementCreator() {
				@Override
				public CallableStatement createCallableStatement(Connection con) throws SQLException {
					String storedProc = "{call testpro(?,?)}";// 调用的sql
					CallableStatement cs = (CallableStatement) con.prepareCall(storedProc);
					cs.setString(1, userName);// 设置输入参数的值
					cs.registerOutParameter(2,java.sql.Types.VARCHAR );// 注册输出参数的类型OracleTypes.CURSOR
					return cs;
				}
			}, new CallableStatementCallback() {
				@Override
				public Object doInCallableStatement(CallableStatement cs) throws SQLException, DataAccessException {
					ArrayList<Map> resultsMap = new ArrayList<Map>();
					cs.execute();
					ResultSet rs = (ResultSet) cs.getObject(2);// 获取游标一行的值
					while (rs.next()) {// 转换每行的返回值到Map中
						HashMap<Object, Object> rowMap = new HashMap<Object,Object>();
						rowMap.put("id", rs.getString("id"));
						rowMap.put("name", rs.getString("name"));
						resultsMap.add(rowMap);
					}
					rs.close();
					return resultsMap;
				}
			});
			for (int i = 0; i < resultList.size(); i++) {
				Map rowMap = (Map) resultList.get(i);
				String id = rowMap.get("id").toString();
				String name = rowMap.get("name").toString();
				System.out.println("id=" + id + ";name=" + name);
			}
	 		 */
	
	//通过注入方式返回结果集
		/*public User findUserByUserName(final String userName) {
			String sqlStr = " SELECT user_id,user_name,credits "
					+ " FROM t_user ;";
			final User user = new User();
			jdbcTemplate.query(sqlStr,
					new RowCallbackHandler() {
						public void processRow(ResultSet rs) throws SQLException {
							while (rs.next()) {// 转换每行的返回值到Map中
								System.out.println(rs.getInt("user_id"));
								System.out.println(rs.getString("user_name"));
							}					
							}
					});
			return user;
		}*/
}
