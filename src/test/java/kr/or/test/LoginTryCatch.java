package kr.or.test;

class NotExistIDException extends Exception {
	//아이디가 존재하지 않을때 예외사항 처리내용
	public NotExistIDException() {}
	public NotExistIDException(String message) {
		super(message);
	}
}
class WrongPasswordException extends Exception {
	//패스워드 입력오류에 대한 예외사항 처리내용
	public WrongPasswordException() {}
	public WrongPasswordException(String message) {
		super(message);
	}
}
public class LoginTryCatch {

	public static void main(String[] args) {
		try {
			login("white","12345");
		} catch (NotExistIDException e) {
			e.printStackTrace();
		}
		try {
			login("blue","54321");
		} catch (NotExistIDException e) {
			e.printStackTrace();
		}
	}

	public static void login(String id, String password) throws NotExistIDException {
	//id가 blue가 아니라면 NotExistIDException 발생시킴
	if(!id.equals("blue")) {
		throw new NotExistIDException("아이디가 존재하지 않습니다");
	}
	//password가 12345가 아니라면 WrongException을 발생시킴
	if(!id.equals("12345")) {
		throw new NotExistIDException("패스워드가 존재하지 않습니다");

	}
	}
}
