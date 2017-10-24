package s1mes.web.service;

import s1mes.web.model.LoginVO;

/**
 * @Class Name : LoginService.interface
 * @Description : 일반 로그인을 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.26    김진환          최초 생성
 *
 *  
 */

public interface LoginService {
	
	/**
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	public LoginVO actionLogin(LoginVO vo) throws Exception;
}
