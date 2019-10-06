package com.spring.book.boardreply.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class BoardReply {

	private Integer replyId;		//댓글 관련 구분번호
	private String replyText;		//댓글 내용
	private String replyWriter;		//글쓴이
	private Date regDate;			
	private Date updateDate;		
	private Integer boardId;		//foreign key 연계 위한 board 번호
	
}
