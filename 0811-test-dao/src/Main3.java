import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main3 {
	public static void main(String[] args) {
		String line = "123 Hel234lo. 34 wor467ld! 53";
					// 0123456789
		Pattern p = Pattern.compile("[0-9]{2,3}");
									//[범위설정]{2글자~3글자}
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