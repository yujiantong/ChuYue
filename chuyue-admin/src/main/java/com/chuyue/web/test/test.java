package com.chuyue.web.test;
public class test {

	public static void main(String[] args) {
		String s3 = new String("1") + new String("1");
        s3.intern();
        String s4 = "11";
        System.out.println(s3 == s4);

	}

}
