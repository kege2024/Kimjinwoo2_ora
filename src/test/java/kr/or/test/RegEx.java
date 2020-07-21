package kr.or.test;

import java.util.regex.Pattern;

public class RegEx {

	public static void main(String[] args) {
		String id = "5Angel1004";
		String regExp = "[a-zA-Z0-9][a-zA-Z0-9]{7,11}";
		boolean isMatch = Pattern.matches(regExp, id);
		if(isMatch) {
			System.out.println("아이디로 사용가능합니다");
		}else {
			System.out.println("아이디로 영문소문자, 숫자, 특수기호만 사용가능합니다");
		}
	}

}
