package hello;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PersonsValidator {
	// 이름,
	public Map<String, String> isValidName(String name) {
		Map<String, String> map = new HashMap<>();

		if (name != null) {
			int length = name.length();

			Pattern p = Pattern.compile("[a-zA-Z가-힣]+");
			Matcher m = p.matcher(name);

			if (length == 0 || length > 10) {
				map.put("nameLength", "이름의 글자수는 1 ~ 10자여야 합니다.");
			} else if (name.contains(" ")) {
				map.put("nameSpace", "이름에 공백을 포함할 수 없습니다.");
			} else if (!m.matches()) {
				map.put("nameChar", "이름은 한글 또는 영문자여야합니다.");
			}
		} else {
			map.put("nameNull", "이름을 입력해주세요.");
		}
		return map;
	}

	// 나이 정수
	public Map<String, String> isValidAge(String age) {
		Map<String, String> map = new HashMap<>();

		if (age != null) {
			Pattern p = Pattern.compile("\\d+");
			Matcher m = p.matcher(age);

			if (!m.matches()) {
				map.put("ageFormat", "나이는 숫자만 허용됩니다.");
			} else {
				try {
					int num = Integer.valueOf(age);
					
					if (num < 10 || num > 99) {
						map.put("ageRange", "나이의 범위는 10 - 99세입니다.");
					}
				} catch (NumberFormatException e) {
					map.put("ageRange" , "나이 범위를 벗어남");
				}
			}
		} else {
			map.put("ageNull", "나이를 입력해주세요.");
		}
		return map;
	}

	// 성별
	public Map<String, String> isValidGender(String name) {
		Map<String, String> map = new HashMap<>();

		if (name != null) {
			Pattern p = Pattern.compile("[가-힣]+");
			Matcher m = p.matcher(name);
			int length = name.length();
			if (length == 0 || length > 2) {
				map.put("GenderLength", "성별의 글자수는 1 ~ 2자여야 합니다.");
			} else if (name.contains(" ")) {
				map.put("GenderSpace", "성별에 공백을 포함할 수 없습니다.");
			} else if (!m.matches()) {
				map.put("GenderChar", "성별은 한글 여야합니다.");
			}
		} else {
			map.put("GenderNull", "성별을 입력해주세요.");
		}
		return map;
	}

	// 이메일 50자
	public Map<String, String> isValidEmail(String email) {
		Map<String, String> map = new HashMap<>();
		if (email != null) {
			if (email.length() > 50) {
				map.put("emailLength", "이메일은 최대 50자 입니다.");
			} else {
				map.put("emailNull", "이메일을 입력해주세요.");
			}
			// Pattern p = Pattern.compile("[a-zA-Z0-9]{0,20}@[a-zA-Z]{0,10}.com");
			Pattern p = Pattern.compile("\\w+@\\w+.\\w+");
			Matcher m = p.matcher(email);

			if (m.matches()) {
				System.out.println("이메일 완료");
			} else {
				System.out.println("올바르지 않은 입력");
			}
		}

		return map;
	}
}