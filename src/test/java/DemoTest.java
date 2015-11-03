
import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.commons.enums.EmailType;
import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.dao.AdminDao;
import com.aboutdata.dao.MemberInfomationDao;
import com.aboutdata.dao.PhotosAlbumDao;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.MemberInfomation;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.AdminModel;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.EmailService;
import com.aboutdata.service.MemberRankService;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosColorsService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.SearchService;
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
    private PhotosColorsService PhotosColorsService;

    @Resource
    private SearchService searchService;

    @Resource
    private AdminDao adminDao;

    @Resource
    private TagService tagService;

    @Resource
    private PhotosService photosService;

    @Resource
    private StorageService storageService;

    @Resource
    private MemberInfomationDao memberInfomationDao;

    @Resource
    private MemberService memberService;

    public void empty() {

    }

    @Test
    public void findByIdTest() {
        int totalPages = 0;
        Pageable pageable = new PageRequest(0, 24);
        Page<PhotosModel> page = photosService.find(pageable);
        totalPages = page.getTotalPages();
        
        

        PhotosColorsService.generateColors("000b6d44-5390-4077-a919-681b58b51b06");
    }

}
