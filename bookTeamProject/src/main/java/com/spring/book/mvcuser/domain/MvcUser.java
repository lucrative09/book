package com.spring.book.mvcuser.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MvcUser {
	
	private String email;
	private String password;
	private String nickname;
	private int phoneNumber;
	private String bank;
	private int bankAccount;
	private String auth;
	private double rate;
	private String sessionId;
	private Date limitTime;
	private Date regDate;
	private int businessNum;
	private String buildingAddress;

}











