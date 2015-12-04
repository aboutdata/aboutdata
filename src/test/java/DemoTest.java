
import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.dao.MessageDao;
import com.aboutdata.dao.PhotosColorsDao;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Message;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.service.PhotosColorsService;
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
    private PhotosColorsDao photosColorsDao;
    
    @Resource
    private PhotosColorsService photosColorsService;

    public void empty() {

    }

    @Test
    public void findByIdTest() {
        Photos p = new Photos();
        p.setId("3c3c83ea51608fba015160912a8a0000");
        int result = photosColorsService.deleteByPhotosId("3c3c83ea51608fba015160912a8a0000");
        log.info("delete count {}", result);
    }

}
