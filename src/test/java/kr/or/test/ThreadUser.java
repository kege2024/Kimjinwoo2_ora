package kr.or.test;

class MovieThread extends Thread{
	@Override
	public void run(){
		for(int cnt=0;cnt<3;cnt++) {
			 System.out.println("동영상을 재생합니다");
		}
		while(true) {
			System.out.println("동영상을 무한재생합니다");
			/*try {
				Thread.sleep(1);
			}catch(Exception e) {
				break;
			}*/
			//스레드 - 실행중인 클래스가 main()에서 interrupt가 호출되었을때
			if(Thread.interrupted()) {
				System.out.println("인터셉트가 발생되었습니다. 반복문을 빠져나갑니다");
				break; // while문 빠져나가기
			}
		}
		}
}
class MusicRunnable implements Runnable {
	@Override
	public void run(){
		for(int cnt=0;cnt<3;cnt++) {
			 System.out.println("음악을 재생합니다");
		}
		}
}
public class ThreadUser {

	public static void main(String[] args) {
		Thread threadMovie = new MovieThread();
		//초기값을 MovieThread클래스에서 가져옴
		threadMovie.setDaemon(true); //백그라운드에서 실행
		threadMovie.start();
		//main() 스레드에서 1초 후  threadMovie 종류 코드
		try {
			Thread.sleep(3000);
		}catch(InterruptedException e)  {
		}
		threadMovie.interrupt();
		Thread threadMusic = new Thread(new MusicRunnable());
		threadMusic.start();
	}

}
