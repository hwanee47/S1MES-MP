package s1mes.web.dao;

import java.util.HashMap;
import java.util.List;

import s1mes.web.model.LoginVO;


/**
 * @Class Name : InvDAO.interface
 * @Description : InvDAO
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.11.08    김진환          최초 생성
 *
 *  
 */
public interface InvDAO {
	
	/**
	 * 표준품 판매가능 재고를 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 표준품 판매가능재고
	 * @exception Exception
	 */
	public HashMap<String, String> selectStdPdInfo() throws Exception;
	
	
	/**
	 * 재고품 수주관리의 판매가능 재고수량(표준품생산)을 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 재고품 수주관리의 판매가능 재고
	 * @exception Exception
	 */
	public HashMap<String, String> selectInvPdRordMngInfo() throws Exception;
}
