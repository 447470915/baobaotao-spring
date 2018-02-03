package test;

import envProperties.EnvProperties;

public class Main {
	public static  void main(String[] args) throws InterruptedException{
		System.out.println("test starts===============================");
		while(true){
		System.out.println(EnvProperties.getProperties().getProperty("IP"));
		Thread.sleep(3000);
		}
	}
}
