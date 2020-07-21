package kr.or.test;

import java.util.HashMap;
import java.util.Map;

//제네릭 타입 클래스 생성
class Container<T> {
	private T t;
	public void set(T t) {
		this.t = t;
	}
	public T get() {
		return t;
	}
}
class ContainerKV<K,V> {
	private K key;
	private V value;
	
	public void set(K key, V value) {
		this.key = key;
		this.value = value;
	}
	public K getKey() {
		return key;
	}
	public V getValue( ) {
		return value;
	}
}
public class GenericTypeUser {

	public static void main(String[] args) {
		ContainerKV<String,String> containerKV1 = 
				new ContainerKV<String,String>();
		containerKV1.set("name", "홍길동");
		String nameK = containerKV1.getKey();
		String nameV = containerKV1.getValue();
		System.out.println("입력된 키name: " + nameK);
		System.out.println("입력된 밸류name: " + nameV);
		Map<String,Integer> ageKV = new HashMap<String,Integer>(); 
		ageKV.put("age", 3);
		System.out.println("나이는" + ageKV.get("age") + "세 입니다");
		Container<String> container1  = 		
				new Container<String> ();
		//컨테이너1변수: 스트링 홍길동
		container1.set("홍길동");
		
		Container<Integer> container2 = new Container<Integer> ();
		//컨테이너2변수: 정수형6
		container2.set(6);
		int age = container2.get();
		String name = container1.get();
		System.out.println("이름은:" + name 
				+" 나이는:" + age + "세");
	}

}
