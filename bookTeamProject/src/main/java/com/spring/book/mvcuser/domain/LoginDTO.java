package com.spring.book.mvcuser.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class LoginDTO {

	private String email;
	private String password;
	private boolean isAutoLogin;
	
}
