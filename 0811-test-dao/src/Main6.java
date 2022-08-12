import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main6 {
	public static void main(String[] args) {
		String line = "(abc, 123) | (de, 65) | (qwer, 15   )";
		Pattern p = Pattern.compile("\\(([a-zA-Z]+), ([0-9]+\\s+)\\)");
		Pattern p2 = Pattern.compile("(([a-zA-Z]+), ([0-9]+))");
								// \\()문자 , 그룹\\(())
		Matcher m = p.matcher(line);
		Matcher m2 = p2.matcher(line);
		
		while (m.find()) {
			System.out.println(m.group(1));
			System.out.println(m.group(2));
		}
		
//		while (m2.find()) {
//			System.out.println(m2.group(1));
//			System.out.println(m2.group(2));
//			System.out.println(m2.group(3));
//		}
	}
}
