package kr.or.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class OpenApi {
	
	//외부연계 메서드
	public static void serviceApi( ) {
		BufferedReader br = null; 
		//Buffer를 이용하여 읽고쓰는 메서드 입출력의 효율이 높아짐 
		//HRD넷에서 전송받은 DATA의 일시 저장소 역할
		String urlstr = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=uCyvZMnV2VuBBrr7oGGYvIEPAxpCTB0q&pageNum=1&pageSize=10&srchTraStDt=20200501&srchTraEndDt=20201231&outType=1&sort=DESC&sortCol=TR_STT_DT&srchTraArea1=44&srchTraArea2=44133&srchKeco1=20&srchKeco2=2001&srchKeco3=200102";
		try { //예외 처리를 위한 try-catch구문 실행
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			//HttpURLConnection: 웹을 통해 데이터를 주고받는 클래스
			urlconnection.setRequestMethod("GET");
			//웹서버로부터 리소스를 가져옴
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"euc-kr"));
			//input stream 클래스로 데이터 입력시 euc-kr로 한글깨짐을 방지
			String result = "";
			String line;
			while((line = br.readLine()) != null) {
				result = result + line + "\n"; 
				//1부터 100까지 합계를 더하는 원리와 같이 xml파일을 한줄씩 가져옴 "\n"=줄바꿈
			}
			/*System.out.println(result);*/
			String result_xmlUtils = XmlUtils.formatXml(result);
			System.out.println(result_xmlUtils);
		} catch (MalformedURLException e) {
			e.printStackTrace();
			//URL에 http를 명시하지 않아 생기는 문제
		} catch (IOException e) {
			e.printStackTrace();
		}   //파일처리에 문제가 발생한  경우(ex.input or output)
		
		Calendar cal = Calendar.getInstance();
		System.out.println(cal.getTime());
	}   //*콘솔화면에 pc시간 표시*/
	public static void main(String[] args) {
		int sleepSec = 10; 
		//실행간격지정
		final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
		//주기적 작업을 위한 exec 실행가능한 클래스 만듦
		exec.scheduleAtFixedRate(new Runnable() {
			//첫번째 실행이후 설정값만큼의 간격으로 실행시킴
			public void run() {
				serviceApi();
			}
		}, 0, sleepSec, TimeUnit.SECONDS);
/*		serviceApi();
*/
	}

}
