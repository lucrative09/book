package com.spring.book.boardreply.repository;

import java.util.List;
import java.util.Map;

import com.spring.book.boardreply.domain.BoardReply;

public interface IBoardReplyMapper {

	//댓글 쓰기 기능
	void create(BoardReply reply);
	
	//댓글 수정 기능
	void update(BoardReply reply);
	
	//댓글 삭제 기능
	void delete(Integer reply);
	
	//원본 게시물 삭제 시 해당 게시물의 댓글 전체 삭제 기능
	void deleteAll(Integer boardId);
	
	//댓글 목록 조회 기능
	List<BoardReply> selectAll(Map<String, Object> datas);
	
	//특정 게시물 조회 기능
	Integer countReplies(Integer boardId);
	
}
