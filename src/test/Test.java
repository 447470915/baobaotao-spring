package test;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baobaotao.dao.DaoByPckag;
public class Test {

	public static void main(String[] args) {
		DaoByPckag am= new DaoByPckag();
		/*=============访问数据库==============*/
		//定义输入列表
		ArrayList<String> proInputParams=new ArrayList<String>();
		//给输入参数列表赋值
		proInputParams.add("1");
		//定义输出参数的列表,用？给出参数站位
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");
		proOutputParams.add("?");

		//数据库操作
		List<Map<String,Object>> listMap=am.accessDBSet("PCKG_RESULTSET_TEST",proInputParams,proOutputParams);
		System.out.println(listMap.toString());
		/*=========end of 访问数据库==========*/
	}

}
