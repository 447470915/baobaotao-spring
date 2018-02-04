package envProperties;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class EnvProperties {
	private static Properties properties = init();
	private static Properties init(){
		Properties prop = null;
		try {
	        prop = new Properties();
	        InputStream in = EnvProperties.class.getClassLoader().getResourceAsStream(
	                "./envProperties.config");
	        prop.load(in);
	        //ֱ�����prop����
	        //System.out.println("ֱ�����prop����:"+prop);

	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		return prop;
	}
	public static Properties getProperties(){
		return properties;
	}
}
