package s1mes.web.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import s1mes.web.dao.LoginDAO;
import s1mes.web.model.LoginVO;

/**
 * @Class Name : LoginDAOImpl.java
 * @Description : LoginDAOImpl
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.26    김진환          최초 생성
 *
 *  
 */
@Repository
public class LoginDAOImpl extends EgovAbstractDAO implements LoginDAO{

	/***
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @return LoginVO
	 * @exception Exception	
	 **/
	public LoginVO actionLogin(LoginVO vo) throws Exception{
		/**
		 * 임시사용중 , S1MES DB2 ORM ibatis구축시 변경 예정. 
		 * 아이디:admin 비밀번호:admin 
		 **/
		LoginVO loginVO = new LoginVO();
		
		if( vo.getId().equals("admin") ){
			loginVO.setId("admin");
		}
		
		if( vo.getPassword().equals("admin") ){
			loginVO.setPassword("admin");
		}
		
		return loginVO;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HashMap<String, String>> selectTBLE915() {
		// TODO Auto-generated method stub
		return (List<HashMap<String, String>>) list("TEST.test");
	}

}
