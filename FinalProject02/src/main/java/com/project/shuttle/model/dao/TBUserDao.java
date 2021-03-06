package com.project.shuttle.model.dao;

import java.util.List;

import com.project.shuttle.model.dto.TBJobDto;
import com.project.shuttle.model.dto.TBUserDto;

public interface TBUserDao {
	
	// 마이페이지 관련
	public List<TBJobDto> getWrittenBoard(int pageNum, int pageCount, String userId);
	public List<TBJobDto> getApplyBoard(int pageNum, int pageCount, String userId);
	public List<TBJobDto> getDoingBoard(int pageNum, int pageCount, String userId);
	public List<TBJobDto> getDoneBoard(int pageNum, int pageCount, String userId);
	public List<TBJobDto> getReviewBoard(int pageNum, int pageCount, String userId);
	
	public int countBoard(String userId);
	public int countApplyBoard(String userId);
	public int countDoingBoard(String userId);
	public int countDoneBoard(String userId);
	public int countReviewBoard(String userId);
	
	public int kakaoUpdateBread(TBUserDto dto);
	
	public int mypageUpdate(TBUserDto dto);
	
	// 로그인, 회원가입 관련
	public TBUserDto login(TBUserDto dto);
	
	public int insertUser(TBUserDto dto);

	public String idchk(String id);

}
