package com.baobaotao.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.baobaotao.domain.User;


@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public String getMatchCount(final String userName,  final String password) {
		String sqlStr = " SELECT count(*) FROM t_user "
				 + " WHERE user_name =? and password=? ";
		int rs=jdbcTemplate.queryForObject(sqlStr, new Object[] { userName, password },Integer.class);
		if(rs==0){
			return("1");
		}else{
			return("0");
		}
	}

	public User findUserByUserName(final String userName) {
		String sqlStr = " SELECT user_id,user_name,credits "
				+ " FROM t_user WHERE user_name =? ";
		final User user = new User();
		jdbcTemplate.query(sqlStr, new Object[] { userName },
				new RowCallbackHandler() {
					public void processRow(ResultSet rs) throws SQLException {
						user.setUserId(rs.getInt("user_id"));
						user.setUserName(userName);
						user.setCredits(rs.getInt("credits"));
					}
				});
		return user;
	}

	public void updateLoginInfo(User user) {
		String sqlStr = " UPDATE t_user SET last_visit=?,last_ip=?,credits=? "
				+ " WHERE user_id =?";
		jdbcTemplate.update(sqlStr, new Object[] { user.getLastVisit(),
				user.getLastIp(),user.getCredits(),user.getUserId()});
	}
	
	//��ѯ�Ƿ���ڸ��û�
	public int queryIsExistUserName(String userName){
		String sqlStr = " SELECT count(1) FROM t_user "
				+ " WHERE user_name =? ";
		return jdbcTemplate.queryForObject(sqlStr, new Object[] { userName},Integer.class);
	}
	
	//������ע����û���Ϣ�����ݿ�
	public void SaveUserInfo(String userName,String password){
		String sqlStr = " INSERT INTO t_user (user_name,password) values "
				+"(?,?) ";
		jdbcTemplate.update(sqlStr, new Object[] { userName,password});
	}
}
