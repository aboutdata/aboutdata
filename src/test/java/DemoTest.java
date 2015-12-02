
import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.service.PhotosRequestService;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
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
    private PhotosRequestService photosRequestService;
    
    public void empty() {
        
    }
    
    @Test
    public void findByIdTest() {
        Member m = new Member();
        m.setId("1");
        
        PhotosRequest request = new PhotosRequest();
        
        request.setOrder(1);
        request.setMember(m);
        request.setWidth(300);
        request.setHeight(200);
        request.setSize(400055);
        request.setTitle("该方法会处理图片并保存 图片信息");
        request.setSource("http://localhost:8080/random");
        request.setDescription("该方法会处理图片并保存 图片信息 setDescription");
        photosRequestService.create(request);
        //该方法会处理图片并保存 图片信息

        Pageable pageable = new PageRequest(0, 24);
        photosRequestService.find(pageable);
    }
    
}
