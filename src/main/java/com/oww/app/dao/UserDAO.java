package com.oww.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.oww.app.dto.UserDTO;
import com.oww.app.vo.NoticeVO;
import com.oww.app.vo.SearchVO;
import com.oww.app.vo.UserVO;

public class UserDAO {
	
	public SqlSession sqlSession;

	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void join(UserDTO userDTO) {
		sqlSession.insert("user.join",userDTO);	
	}
	public UserDTO login(UserDTO userDTO) {
		UserDTO user = sqlSession.selectOne("user.login", userDTO);
		return user;
	}
	public boolean checkEmail(String userEmail) {
		return (Integer)sqlSession.selectOne("user.checkEmail", userEmail) <= 0;
	}
		
	public boolean checkNickname(String userNickname) {
		return (Integer)sqlSession.selectOne("user.checkNickname", userNickname) <= 0;
	}
		
	public String getUserNickname(int userNumber) {
		return sqlSession.selectOne("user.getUserNickname", userNumber);
	}

	public String getUserLevel(int userNumber) {
		return sqlSession.selectOne("user.getUserLevel", userNumber);
  }
	
	public UserDTO select(String userEmail) {
		return sqlSession.selectOne(userEmail);
	}
	
	public int updateNickname(UserDTO userDTO) {
		return sqlSession.update("user.updateUserNickname",userDTO);
	}
	
	public int updatePassword(String newPassword) {
		return sqlSession.update("user.updateUserPassword", newPassword);
	}
	public int updatePassword(UserDTO userDTO) {
		return sqlSession.update("user.updateUserPassword", userDTO); 
	}
	public void deleteUser(int userNumber) {
		sqlSession.delete("user.deleteUser", userNumber);
	}
	public void deleteAdminUser(int userNumber) {
		sqlSession.delete("user.deleteAdminUser", userNumber);
	}


	public int getTotalCount() {
	    return sqlSession.selectOne("user.getTotalCount");
	}
	
	//페이징처리 + 회원검색(이메일)
    public List<UserDTO> searchByEmailpage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("user.searchByEmailpage", searchPageMap);
    }
	//페이징처리 + 회원검색(닉네임)
    public List<UserDTO> searchByNicknamepage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("user.searchByNicknamepage", searchPageMap);
    }
	//페이징처리 + 회원글검색(제목)
    public List<UserDTO> searchAdminByTitlepage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("user.searchAdminByTitlepage", searchPageMap);
    }
	//페이징처리 + 회원글검색(닉네임)
    public List<UserDTO> searchAdminByNicknamepage(Map<String, Object> searchPageMap, SearchVO searchVO) {
        searchPageMap.put("searchVO", searchVO);
        return sqlSession.selectList("user.searchAdminByNicknamepage", searchPageMap);
    }
    
    
    
    
}





