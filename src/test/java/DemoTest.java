
import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.dao.MessageDao;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Message;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.service.PhotosRequestService;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

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

    @InjectLogger
    private Logger log;

    @Resource
    private MessageDao messageDao;

    public void empty() {

    }

    @Test
    public void findByIdTest() {
        Member m = new Member();
        m.setId("1");

        Pageable pageable = new PageRequest(0, 24);
        Page<Message> pages = messageDao.findByReceiver(m, pageable);
        
        logger.info("################--------------");
        logger.info("################{}"+pages.getTotalElements());

    }

}
