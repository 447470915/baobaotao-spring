package test;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baobaotao.dao.DaoByPckag;
public class Test {

	public static void main(String[] args) {
		DaoByPckag am= new DaoByPckag();
		/*=============�������ݿ�==============*/
		//���������б�
		ArrayList<String> proInputParams=new ArrayList<String>();
		//����������б�ֵ
		proInputParams.add("1");
		//��������������б�,�ã���������վλ
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");
		proOutputParams.add("?");

		//���ݿ����
		List<Map<String,Object>> listMap=am.accessDBSet("PCKG_RESULTSET_TEST",proInputParams,proOutputParams);
		System.out.println(listMap.toString());
		/*=========end of �������ݿ�==========*/
	}

}
