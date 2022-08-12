import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main2 {
	public static void main(String[] args) {
		String line = "1 Hel2lo. 34 wor4ld! 5";
		// 0123456789
		Pattern p = Pattern.compile("[0-9]");
		//정규표현식 []대괄호 안에 문자하나에 대한 범위를 설정 할 수 있음
		Matcher m = p.matcher(line);

		m.find();
		System.out.println(m.start());
		m.find();
		System.out.println(m.start());
		m.find();
		System.out.println(m.start());
		m.find();
		System.out.println(m.start());
		m.find();
		System.out.println(m.start());
	}
}
