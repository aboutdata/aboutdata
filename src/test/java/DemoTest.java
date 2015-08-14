
import com.aboutdata.dao.AdminDao;
import com.aboutdata.domain.Admin;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import javax.annotation.Resource;
import org.joda.time.LocalDateTime;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 时间: 2015-7-15
 *
 * @author aboutdata
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "classpath:application-Context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/spring-context.xml")
public class DemoTest extends AbstractJUnit4SpringContextTests {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private AdminDao adminDao;

    /**
     * 默认提供测试方法
     */
    public void empty() {

    }

    /**
     * *
     * 测试 查询所有管理员
     */
    @Test
//    @Ignore
    public void findByIdTest() {
        try {
            Admin admin = adminDao.find(1l);
            logger.info("amdin {}",admin);
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(DemoTest.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
