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
	
	// ���ô洢���̣��з��ز������ǽ������
	public ArrayList<String> accessDB(final String proName,final ArrayList<String> input,final ArrayList<String> output){
		final int inOutParamsLen=input.size()+output.size();//����������ܲ�������
		@SuppressWarnings({ "unchecked", "rawtypes" })
		ArrayList<String> resultList = jdbcTemplate.execute(new CallableStatementCreator() {
				@Override
				public CallableStatement createCallableStatement(Connection con) throws SQLException {
					//����洢���̽ӿ�//String storedProc = "{call pckg_check_login(?,?����?)}";
					String storedProc="{call "+proName+"(";
					for(int i=0;i<inOutParamsLen-1;i++){
						storedProc+="?,";
					}
					storedProc+="?)}";
					
					CallableStatement cs = con.prepareCall(storedProc);
					int i;
					//�����������
					for(i=1;i<=input.size();i++){
						//cs.setString(1, "1");// ���õ�һ�����������ֵ
						//cs.setString(2, "1");// ���õڶ������������ֵ
						//����
						cs.setString(i, input.get(i-1));// ���õ�i�����������ֵ
					}
					//���������������
					for(i=input.size()+1;i<=inOutParamsLen;i++){
						//cs.registerOutParameter(3, java.sql.Types.VARCHAR);// ע���һ���������������
						//cs.registerOutParameter(4, java.sql.Types.VARCHAR);// ע��ڶ����������������
						//����
						cs.registerOutParameter(i, java.sql.Types.VARCHAR);// ���õ�i�����������ֵ
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
						//����
						resultList.add(cs.getString(i));
					}
					return resultList;// ��ȡ���������ֵ
				}
			});
			return(resultList);
	}
	
	//���ô洢���̣��з��ز������������δ��ͨ��
			/*List resultList = (List) jdbcTemplate.execute(new CallableStatementCreator() {
				@Override
				public CallableStatement createCallableStatement(Connection con) throws SQLException {
					String storedProc = "{call testpro(?,?)}";// ���õ�sql
					CallableStatement cs = (CallableStatement) con.prepareCall(storedProc);
					cs.setString(1, userName);// �������������ֵ
					cs.registerOutParameter(2,java.sql.Types.VARCHAR );// ע���������������OracleTypes.CURSOR
					return cs;
				}
			}, new CallableStatementCallback() {
				@Override
				public Object doInCallableStatement(CallableStatement cs) throws SQLException, DataAccessException {
					ArrayList<Map> resultsMap = new ArrayList<Map>();
					cs.execute();
					ResultSet rs = (ResultSet) cs.getObject(2);// ��ȡ�α�һ�е�ֵ
					while (rs.next()) {// ת��ÿ�еķ���ֵ��Map��
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
	
	//ͨ��ע�뷽ʽ���ؽ����
		/*public User findUserByUserName(final String userName) {
			String sqlStr = " SELECT user_id,user_name,credits "
					+ " FROM t_user ;";
			final User user = new User();
			jdbcTemplate.query(sqlStr,
					new RowCallbackHandler() {
						public void processRow(ResultSet rs) throws SQLException {
							while (rs.next()) {// ת��ÿ�еķ���ֵ��Map��
								System.out.println(rs.getInt("user_id"));
								System.out.println(rs.getString("user_name"));
							}					
							}
					});
			return user;
		}*/
}
