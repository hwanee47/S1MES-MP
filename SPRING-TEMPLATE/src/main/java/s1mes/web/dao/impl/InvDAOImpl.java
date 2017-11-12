package s1mes.web.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import s1mes.web.dao.InvDAO;
import s1mes.web.model.LoginVO;

/**
 * @Class Name : InvDAOImpl.java
 * @Description : InvDAOImpl
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.11.08    김진환          최초 생성
 *
 *  
 */
@Repository
public class InvDAOImpl extends EgovAbstractDAO implements InvDAO{

	
	/***
	 * 표준품 판매가능 재고를 조회한다.
	 * @param 
	 * @return 표준품 판매가능 재고정보.
	 * @exception Exception	
	 **/
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> selectStdPdInfo() throws Exception{
		
		return (HashMap<String, String>)select("Inv.selectStdPdInfo");
	}

	
	/**
	 * 재고품 수주관리의 판매가능 재고수량(표준품생산)을 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 재고품 수주관리의 판매가능 재고
	 * @exception Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> selectInvPdRordMngInfo() throws Exception{
		return (HashMap<String, String>)select("Inv.selectInvPdRordMngInfo");
	}

	

}
