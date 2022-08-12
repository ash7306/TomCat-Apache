import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main4 {
	public static void main(String[] args) {
		String line1 = "LowerCase";
		String line2 = "UPPERCASE";
		String line3 = "1q2w3e";

		Pattern p = Pattern.compile("[a-z]{9}");
									//[a-z]{소문자9자리수}
		Pattern p2 = Pattern.compile("[A-Z]{9}");
		Pattern p3 = Pattern.compile("[0-9a-z]{6}");
		Matcher m = p.matcher(line1);
		Matcher m2 = p2.matcher(line2);
		Matcher m3 = p3.matcher(line3);
		

		System.out.println(m.matches());
		System.out.println(m2.matches());
		System.out.println(m3.matches());
		
		//아이디는 영소문자와 숫자로 이루어져야하고 최대 10자임 (영문자로 시작해야합니다.)
		
		//---------------------------------------------------
		String id = "as2ddf2fff";
		Pattern pp = Pattern.compile("[a-z][0-9a-z]{6,9}");
									//[영문자 하나시작][숫자와소문자][6~9자리까지]
		Matcher mm = pp.matcher(id);
		
		if (mm.matches()) {
			System.out.println("로그인 완료");
		} else {
			System.out.println("올바르지 않은 입력");
		}
		
		//---------------------------------------------------
		String phoneNumber = "010-1234-1234";
		Pattern n1 = Pattern.compile("010-[0-9]{4}-[0-9]{4}");
		Matcher mmm = n1.matcher(phoneNumber);
		
		if (mmm.matches()) {
			System.out.println("전화번호 입력 완료");
		} else {
			System.out.println("올바르지 않은 입력");
		}
	}
}
