package s1mes.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import s1mes.com.EgovMessageSource;
import s1mes.web.model.LoginVO;
import s1mes.web.service.InvService;
import s1mes.web.service.LoginService;


/**
 * @Class Name : InvController.java
 * @Description : 재고에 관해  처리하는 컨트롤러 클래스
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.11.08    김진환          최초 생성
 * 	 2017.11.10          김진환 	      표준품 판매가능 조회추가.
 *	 2017.11.10          김진환 	      재고품수주관리 판매가능조회추가.
 *  
 */

@Controller

public class InvController {
	final static Logger log = Logger.getLogger(InvController.class);

	
	/** LoginService */
	@Resource(name = "invService")
	private InvService invService;
	
	
	/** EgovMessageSource*/
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	
	/**
	 * 표준품 판매가능 재고 및 재고품 수주관리의 판매가능 재고수량(표준품생산)을 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 표준품 판매가능재고, 재고품 수주관리 판매가능 재고수량 (표준품생산)
	 * @exception Exception
	 */
	@RequestMapping(value = "/invStdPdCheck.do")
	public String invCheck(HttpServletRequest request, ModelMap model) throws Exception{
		model.addAttribute("invCheckInfo", invService.invCheck());
		
		return "inv/invCheck";
	}
}
