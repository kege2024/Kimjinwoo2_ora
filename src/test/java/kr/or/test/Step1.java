package kr.or.test;

public class Step1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("--------------------------");
		System.out.println("클래스를 사용하지 않는 내장변수 자료형 소스");
		//필드 field(변수)
		 String name;
		 int age;
		 String phoneNum;
		 
		 name = "홍길동";
		 age = 45;
		 phoneNum = "000-0000-0000";
 		 printMember(name, age, phoneNum);

		 name = "성춘향";
		 age = 100;
		 phoneNum = "111-1111-1111";
 		 printMember(name, age, phoneNum);

		 name = "각시탈";
		 age = 3;
		 phoneNum = "222-2222-2222";
		 printMember(name, age, phoneNum);

		 System.out.println("--------------------------");
			System.out.println("클래스를 사용하지 않는 내장배열 자료형 사용");		 
		 //필드=field=배열변수
			String[] names = {"홍길동", "성춘향", "각시탈"};
			System.out.println("현재 등록된 회원은 " +names.length + "명입니다");
			int[] ages = { 45, 100, 3}; 
			String[] phoneNums = {"000-0000-0000", "111-1111-1111", "222-2222-2222"};
			printMember(names,ages,phoneNums);
		 }
//오버로딩 : 같은 이름의 매소드지만 파라미터(매개변수)만 다르게 만듬
	private static void printMember(String[] names, int[] ages, String[] phoneNums) {
		for(int cnt=0;cnt<3;cnt++) {
			System.out.println(cnt + "번째 참조한 이름은" + names[cnt] + "님 입니다");
			System.out.println(cnt + "번째 참조한 나이은" + ages[cnt] + "살 입니다");
			System.out.println(cnt + "번째 참조한 전화번호는" + phoneNums[cnt] + "입니다");
 
		}
	}

	private static void printMember(String name, int age, String phoneNum) {
		System.out.println("이름은 " + name + "입니다.");
		 System.out.println("나이는 " + age + "살  입니다.");
		 System.out.println("전화번호는 " + phoneNum + "입니다.");		
	}

}


