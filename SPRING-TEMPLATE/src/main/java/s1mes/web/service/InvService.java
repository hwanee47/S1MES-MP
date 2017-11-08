package s1mes.web.service;

import java.util.HashMap;
import java.util.List;

import s1mes.web.model.LoginVO;

/**
 * @Class Name : InvService.interface
 * @Description : 재고에 관해 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.11.08    김진환          최초 생성
 *
 *  
 */

public interface InvService {
	
	/**
	 * 표준품 판매가능 재고 및 재고품 수주관리의 판매가능 재고수량(표준품생산)을 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 표준품 판매가능재고
	 * @exception Exception
	 */
	
	public HashMap<String, String> findStdPdInfo() throws Exception;
}
