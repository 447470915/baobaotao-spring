package test;

import java.util.Arrays;
import java.util.Random;

public class SortTest {
	public static  void main(String[] args) throws InterruptedException{
		int[] ints = new int[100];
		Random rd = new Random();
		for(short i = 0;i<100;i++){
			ints[i] = rd.nextInt(100);
		}
		Arrays.sort(ints);
		for(short i = 0;i<100;i++){
			System.out.print(ints[i]);
		}
		int[] intsDesc = new int[100];
		for(short i=0;i<100;i++){
			intsDesc[i] = ints[99-i];
		}
		System.out.println("");
		for(short i = 0;i<100;i++){
			System.out.print(intsDesc[i]);
			System.out.print(" ");
		}
	}
}
