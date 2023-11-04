package com.oww.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.oww.app.dto.NoticeDTO;
import com.oww.app.vo.FboardVO;
import com.oww.app.vo.NoticeVO;
import com.oww.app.vo.SearchVO;

public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<NoticeVO> selectAll(){
		return sqlSession.selectList("notice.selectAll");
	}
	public List<NoticeVO> selectPage(Map<String, Integer> pageMap) {
		return sqlSession.selectList("notice.selectPage", pageMap);
	}
	public int getTotalCount() {
	    return sqlSession.selectOne("notice.getTotalCount");
	}
	public void insert(NoticeDTO noticeDTO) {
		sqlSession.insert("notice.insert", noticeDTO);
		}
	public void delete(int noticeNumber) {
		sqlSession.delete("notice.delete", noticeNumber);
		}
	public void update(NoticeDTO noticeDTO) {
		sqlSession.update("notice.update", noticeDTO);
		}
    public NoticeVO selectAll2(int noticeNumber) {
        return sqlSession.selectOne("notice.selectAll2",noticeNumber);
    }
	public void countUpdate(int noticeNumber) {
		sqlSession.update("notice.countUpdate", noticeNumber);
		}
	//페이징처리 + 검색(제목)
    public List<NoticeVO> searchByTitlePage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("notice.searchByTitlepage", searchPageMap);
    }
	//페이징처리 + 검색(내용)
    public List<NoticeVO> searchByNtContentpage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("notice.searchByNtContentpage", searchPageMap);
    }
}