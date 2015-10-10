
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
import com.aboutdata.model.PhotosModel;
import com.aboutdata.security.utils.SecurityUtils;
import com.aboutdata.service.EmailService;
import com.aboutdata.service.MemberRankService;
import com.aboutdata.service.MemberService;
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
    private PhotosAlbumService photosAlbumService;

    @Resource
    private EmailService emailService;

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
    @Ignore
    public void createMember() {
        Member member = new Member();
//
//        //密码
//        String salt = SecurityUtils.getSalt();
//        String passphrase = SecurityUtils.getPassphrase(salt, "123456");
//
//        member.setUsername("test3".toLowerCase());
//
//        member.setSalt(salt);
//        member.setPassword(passphrase);
//        member.setEmail("84588d5222@qq.com");
//        member.setPoint(1l);
//
//        member.setIsEnabled(true);
//        member.setIsLocked(false);
//        member.setLoginFailureCount(0);
//        member.setLockedDate(null);
////        member.setRegisterIp(request.getRemoteAddr());
////        member.setLoginIp(request.getRemoteAddr());
//        member.setLoginDate(new Date());
//        member.setMemberRank(memberRankService.findDefault());
//
//        if (member.getMemberInfomation() == null) {
//            MemberInfomation minfo = new MemberInfomation();
//            minfo.setDescription("setDescription setDescription");
//            member.setMemberInfomation(minfo);
//        } else {
//            MemberInfomation minfo = member.getMemberInfomation();
//            minfo.setDescription("setDescription setDescription222222222");
//            member.setMemberInfomation(minfo);
//        }
        MemberInfomation minfo = new MemberInfomation();
        minfo.setDescription("setDescription setDescription");
//        member.setMemberInfomation(minfo);
        member.setId("ff8081814f7cac97014f7cacec510000");
        minfo.setMember(member);
        memberInfomationDao.save(minfo);

        //MemberInfomation minfo = memberInfomationDao.findByMember(member);
        log.info("#######################dd###########################" + minfo);
    }

    @Test
    public void findByIdTest() {
        Pageable pageable = new PageRequest(0, 10);
        Page<PhotosModel> page = photosService.findByStatus(PhotoStatus.ASSIGNED, pageable);
        log.info("#######################dd###########################" + page.getContent().size());
    }

    @Test
    @Ignore
    public void wallHeaven() {

//        try {
//            Member m = new Member();
//            m.setId("1");
//            PhotosAlbum photosAlbum = new PhotosAlbum();
//            photosAlbum.setId("1");
//
//            for (int i = 2, end = 10000; i < end; i++) {
//                Photos photos = new Photos();
//
//                String small = "http://alpha.wallhaven.cc/wallpapers/thumb/small/th-" + i + ".jpg";
//                String full = "http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-" + i + ".jpg";
//                photos.setOrder(1);
//                photos.setTitle(i + "_wallHeaven");
//                photos.setThumbnail(small);
//                photos.setMedium(small);
//                photos.setLarge(full);
//                photos.setSource(full);
//
//                photos.setMember(m);
//                photos.setAlbum(photosAlbum);
//                photosService.create(photos);
//
//            }
//
//        } catch (Exception ex) {
//            java.util.logging.Logger.getLogger(DemoTest.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }

}
