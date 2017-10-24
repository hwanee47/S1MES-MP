package s1mes.web.dao;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import s1mes.web.model.LoginVO;

/**
 * @Class Name : LoginDAOTest.java
 * @Description : LoginDAO JUnit 테스트 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2017.09.27    김진환          최초 생성
 *
 *  
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
	    "classpath*:s1mes/spring/com/context-*.xml",
	    })
public class LoginDAOTest {
	@Autowired
	LoginDAO loginDAO;
	
	@Test
	public void testLogin() throws Exception{
		LoginVO loginVO = new LoginVO();
		loginVO.setId("admin");
		loginVO.setPassword("admin");
		
		LoginVO resultVO= loginDAO.actionLogin(loginVO);
		assertNotNull(resultVO);
		assertEquals("admin", resultVO.getId());
		assertEquals("admin1", resultVO.getPassword());
	}
}
