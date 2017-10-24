package s1mes.com;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Class Name : ComUtlController.java
 * @Description : 공통유틸 작업을 위한 클래스.
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.29    김진환          최초 생성
 *
 *  
 */

@Controller
public class ComUtlController {

	/**
	 * 페이지 이동 처리
	 * @param linkPage - 화면 이름
	 * @param session - 세션처리를 위한 HttpServletRequest
	 * @param menuNo - 
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value="/EgovPageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, 
			HttpSession session, 
			@RequestParam(value="menuNo", required=false) String menuNo){
		String link = linkPage;
		// service 사용하여 리턴할 결과값 처리하는 부분은 생략하고 단순 페이지 링크만 처리함
		if (linkPage==null || linkPage.equals("")){
			link="error/Error";
		}else{
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		// 선택된 메뉴정보를 세션으로 등록한다.
		if (menuNo!=null && !menuNo.equals("")){
			session.setAttribute("menuNo",menuNo);
		}
		return link;
	}
}
