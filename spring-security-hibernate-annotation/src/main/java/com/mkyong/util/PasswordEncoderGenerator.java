package com.mkyong.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderGenerator {

  public static void main(String[] args) {

	int i = 0;
	while (i < 10) {
		String password = "123456";
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);

		System.out.println(hashedPassword);
		i++;
	}

  }
  
  public static String getEncodedPass(String pass) {
	  String hashedPassword = "";
	  if(!pass.isEmpty() && !pass.isBlank() ) {

			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			hashedPassword = passwordEncoder.encode(pass);

			return hashedPassword;
	  }
	return hashedPassword;
	  
  }
}
