package s1mes.web.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import s1mes.web.dao.InvDAO;
import s1mes.web.service.InvService;

/**
 * @Class Name : InvServiceImpl.java
 * @Description : 재고에 관해 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.11.08    김진환          최초 생성
 *
 *  
 */
@Service("invService")
public class InvServiceImpl extends EgovAbstractServiceImpl implements InvService{

	/** InvDAO*/
	@Autowired
	private InvDAO invDAO;

	/***
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @return LoginVO
	 * @exception Exception	
	 **/
	@Override
	public HashMap<String, String> findStdPdInfo() throws Exception {
		return invDAO.selectStdPdInfo();
	}
	
	

}
