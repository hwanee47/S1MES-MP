package s1mes.web.service.impl;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import s1mes.com.ComUtlController;
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

	
	
	
	/** 재고체크*/
	@Override
	public HashMap<String, String> invCheck() throws Exception {
		
		/** 재고조회*/
		HashMap<String, String> resultMap = new HashMap<String, String>();
		
		// 표준품 판매가능 재고 조회.
		HashMap<String, String> standardProductInfo= findStdPdInfo();
		
		resultMap.put("CURRENT_QTY", String.valueOf(standardProductInfo.get("CURRENT_QTY")));
		resultMap.put("GOAL_CHG_QTY", String.valueOf(standardProductInfo.get("GOAL_CHG_QTY")));
		resultMap.put("SHIP_QTY", String.valueOf(standardProductInfo.get("SHIP_QTY")));
		resultMap.put("STOCK_QTY", String.valueOf(standardProductInfo.get("STOCK_QTY")));
		resultMap.put("STANDARD_PRODUCT_INV", String.valueOf(standardProductInfo.get("STANDARD_PRODUCT_INV")));
		
		// 재고품 수주관리의 판매가능 재고.
		HashMap<String, String> invPdRordMngInfo= findInvPdRordMngInfo();
		
		resultMap.put("IN_WAR_QTY", String.valueOf(invPdRordMngInfo.get("IN_WAR_QTY")));
		resultMap.put("ORD_CHG_QTY", String.valueOf(invPdRordMngInfo.get("ORD_CHG_QTY")));
		resultMap.put("REQ_CNT", String.valueOf(invPdRordMngInfo.get("REQ_CNT")));
		resultMap.put("RE_WORK_QTY", String.valueOf(invPdRordMngInfo.get("RE_WORK_QTY")));
		resultMap.put("SELL_AVAIL_INV_QTY", String.valueOf(invPdRordMngInfo.get("SELL_AVAIL_INV_QTY")));
		
		
		/** 판매가능수량틀린경우 관리자에게 메일발송*/
		String stdPdAvailQty = String.valueOf(standardProductInfo.get("STANDARD_PRODUCT_INV")); //표준품판매가능재고
		String invPdRordMngAvailQty = String.valueOf(invPdRordMngInfo.get("SELL_AVAIL_INV_QTY")); //재고품수주 판매가능재고
		
		//재고가 다른경우.
		if( !stdPdAvailQty.equals(invPdRordMngAvailQty) ){
			
			//메일발송.
			String subject="[표준품판매가능재고 및 재고품수주 판매가능재고]";
			String text = "";
				text+="표준품 판매가능재고 ::"+stdPdAvailQty;
				text+="\n재고품수주 판매가능재고 ::"+invPdRordMngAvailQty;
	        String from ="kjhnuo246@naver.com";
	        String to = "kjhnuo246@naver.com";
	         
	        //ComUtlController.sendMail(subject, text, from, to);
		}
			
		
		
		
		return resultMap;
	}
	
	
	
	
	/**
	 * 표준품 판매가능 재고를 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 표준품 판매가능재고
	 * @exception Exception
	 */
	@Override
	public HashMap<String, String> findStdPdInfo() throws Exception {
		return invDAO.selectStdPdInfo();
	}

	
	/**
	 * 재고품 수주관리의 판매가능 재고수량(표준품생산)을 확인한다.
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 재고품 수주관리의 판매가능 재고
	 * @exception Exception
	 */
	@Override
	public HashMap<String, String> findInvPdRordMngInfo() throws Exception {
		return invDAO.selectInvPdRordMngInfo();
	}


	
	

}
