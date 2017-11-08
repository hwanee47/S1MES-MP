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
	
	
	public HashMap<String, String> selectStdPdInfo();
}
