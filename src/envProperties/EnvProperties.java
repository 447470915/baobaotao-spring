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
	        //直接输出prop对象
	        //System.out.println("直接输出prop对象:"+prop);

	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		return prop;
	}
	public static Properties getProperties(){
		return properties;
	}
}
