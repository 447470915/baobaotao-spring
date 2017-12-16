package com.baobaotao.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

@Repository
public class HomePageDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public ArrayList<String> queryInfo(String tenantId){
		final ArrayList<String> arraylist = new ArrayList<String>();
		//去访问数据库
		String sqlStr="	SELECT img_index, img_url "
					 + "FROM t_tenant_web_info  "
					 + "WHERE tenant_id= ? ";
		
		jdbcTemplate.query(sqlStr, new Object[] { tenantId },
				new RowCallbackHandler() {
					public void processRow(ResultSet rs) throws SQLException {
						arraylist.add(rs.getString("img_index"));
						arraylist.add(rs.getString("img_url"));
					}
				});
		
		return arraylist;
	}
}
