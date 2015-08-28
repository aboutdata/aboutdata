
import com.aboutdata.commons.enums.EmailType;
import com.aboutdata.dao.AdminDao;
import com.aboutdata.dao.PhotosAlbumDao;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.Tag;
import com.aboutdata.security.utils.SecurityUtils;
import com.aboutdata.service.EmailService;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.StorageService;
import com.aboutdata.service.TagService;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
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
    private PhotosAlbumService photosAlbumService;

    @Resource
    private EmailService emailService;

    @Resource
    private TagService tagService;

    @Resource
    private PhotosService photosService;

    @Resource
    private StorageService storageService;

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

//            Member m = new Member();
//            m.setId("1");
//            PhotosAlbum photosAlbum = new PhotosAlbum();
//            photosAlbum.setName("哈哈");
//            photosAlbum.setGrade(1);
//            photosAlbum.setMember(m);
//            photosAlbumService.create(photosAlbum);
            File file = new File("C:\\Users\\Administrator\\Documents\\NetBeansProjects\\FastdfsClient\\src\\test\\resources\\ace-Admin-template.zip");
            storageService.upload(file);
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(DemoTest.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
