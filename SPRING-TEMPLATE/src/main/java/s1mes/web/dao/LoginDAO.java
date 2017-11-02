package s1mes.web.dao;

import java.util.HashMap;
import java.util.List;

import s1mes.web.model.LoginVO;


/**
 * @Class Name : LoginDAO.interface
 * @Description : LoginDAO
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.26    김진환          최초 생성
 *
 *  
 */
public interface LoginDAO {
	public LoginVO actionLogin(LoginVO vo) throws Exception;
	
	public List<HashMap<String, String>> selectTBLE915();
}
