package kr.or.test;

import java.util.function.ToIntFunction;

class Student {
	private String name;
	private int englishScore;
	private int matheScores;
	public Student(String string, int i, int j) {
	}
	
}
/*public class LambdaAvg {
	
	private static Student[] students = {
		new Student("홍길동", 90, 96),
		new Student("신용권",95, 93)
	};
	public static double avg(ToIntFunction<Student> function) {
		int sum = 0;
		for(Student student:students) {
			sum += function.applyAsInt(student); }
		double avg = (double) sum / students.length
				return avg;

	public static void main(String[] args) {
		
	}
}
*/