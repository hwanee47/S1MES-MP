package s1mes.web.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import s1mes.web.dao.LoginDAO;
import s1mes.web.model.LoginVO;
import s1mes.web.service.LoginService;

/**
 * @Class Name : LoginServiceImpl.java
 * @Description : 일반 로그인을 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.26    김진환          최초 생성
 *
 *  
 */
@Service("loginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService{

	/** LoginDAO*/
	@Autowired
	private LoginDAO loginDAO;
	
	/**
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	@Override
	public LoginVO actionLogin(LoginVO vo) throws Exception {
		
		return loginDAO.actionLogin(vo);
	}

	@Override
	public List<HashMap<String, String>> test() throws Exception {
		return loginDAO.selectTBLE915();
	}

}
