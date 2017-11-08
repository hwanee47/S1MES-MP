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
import s1mes.web.service.LoginService;


/**
 * @Class Name : LoginController.java
 * @Description : 일반 로그인을 처리하는 컨트롤러 클래스
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.26    김진환          최초 생성
 *
 *  
 */

@Controller

public class LoginController {
	final static Logger log = Logger.getLogger(LoginController.class);

	
	/** LoginService */
	@Resource(name = "loginService")
	private LoginService loginService;
	
	
	/** EgovMessageSource*/
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	private String formView = "login/LoginForm";
	private String successView = "login/LoginSuccess";
	
	
	private String getFormView() {
		return formView;
	}
	
	private String getSuccessView() {
		return successView;
	}
	
	public void setFormView(String formView) {
		this.formView = formView;
	}

	public void setSuccessView(String successView) {
		this.successView = successView;
	}
	

	@RequestMapping(value = "/loginForm.do")
	public String loginFormSetUp(){
		return getFormView();
	}
	
	/**
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/loginProcess.do", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("login") LoginVO loginVO, HttpServletRequest request, ModelMap model) throws Exception{
		
		// 1. 일반 로그인 처리 
		LoginVO resultVO = loginService.actionLogin(loginVO);
		
		if(resultVO != null && resultVO.getId() != null && resultVO.getPassword() != null)
		{
			request.getSession().setAttribute("LoginVO", resultVO);
			return getSuccessView();
		}else{
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
			return getFormView();
		}
		
	}
	
	
	
}
