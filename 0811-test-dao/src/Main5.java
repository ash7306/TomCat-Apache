import java.util.regex.Pattern;

public class Main5 {
	public static void main(String[] args) {
		Pattern p = Pattern.compile("\\w{3,}");
									//,공백은 이상임 (3자 이상)
		// \\w+ : 1이거나 이상, \\w? : 0이거나 1, \\w* : 0이상
		
		// \w : 문자 , \d 숫자, \s 공백
	}
}
