package com.oww.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.oww.app.dto.FboardDTO;
import com.oww.app.dto.UserDTO;
import com.oww.app.vo.FboardVO;
import com.oww.app.vo.NoticeVO;
import com.oww.app.vo.SearchVO;

public class FboardDAO {
	public SqlSession sqlSession;
	
	public FboardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<FboardVO> selectAll(){
		return sqlSession.selectList("fboard.selectAll");
	}
    public FboardVO selectAll2(int fboardNumber) {
        return sqlSession.selectOne("fboard.selectAll2",fboardNumber);
    }
	public int getTotalCount() {
	    return sqlSession.selectOne("notice.getTotalCount");
	}
	public void insert(FboardDTO fboardDTO) {
		sqlSession.insert("fboard.insert", fboardDTO);
	}
	public void delete(int fboardNumber) {//삭제기능의 추가
		sqlSession.delete("fboard.delete", fboardNumber);
	}
	public void update(FboardDTO fboardDTO) {
		sqlSession.update("fboard.update", fboardDTO);
	}
	public void countUpdate(int fboardNumber) {
		sqlSession.update("fboard.countUpdate", fboardNumber);
	}
	//페이징처리 + 검색(제목)
    public List<FboardVO> searchByTitlePage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("fboard.searchByTitlepage", searchPageMap);
    }
	//페이징처리 + 검색(닉네임)
    public List<FboardVO> searchByNicknamepage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("fboard.searchByNicknamepage", searchPageMap);
    }
	//페이징처리 + 검색(내용)
    public List<FboardVO> searchByFbContentpage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("fboard.searchByFbContentpage", searchPageMap);
    }
}