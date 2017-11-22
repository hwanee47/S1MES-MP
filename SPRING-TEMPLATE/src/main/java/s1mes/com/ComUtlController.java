package s1mes.com;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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

	/** 메일*/
	@Resource(name = "mailSender")
    private JavaMailSender mailSender;
	
	
	/**
	 * 페이지 이동 처리 , JSP 호출작업만 처리하는 공통 함수
	 * @param linkPage - 화면 이름
	 * @param session - 세션처리를 위한 HttpServletRequest
	 * @param menuNo - 메뉴번호
	 * @exception Exception
	 */
	@RequestMapping(value="/s1mesPageLink.do")
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
	
	
	/**
	 * 메일전송
	 * @param subject - 메일 제목
	 * @param text - 메일 내용
	 * @param from - 보내는사람
	 * @param to - 받는사람
	 * @exception Exception
	 */
	public void sendMail(String subject, String text, String from, String to) throws Exception
	{		
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setSubject(subject);
		
        msg.setText(text);
        
        msg.setFrom(from);
        //msg.setRecipient(RecipientType.TO , new InternetAddress("hwyun@ilshin.com"));
        msg.setTo(to);
         
        mailSender.send(msg); 
        
        
	}
}
