
import com.aboutdata.wallheaven.WallhavenJobCrawler;
import javax.annotation.Resource;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author youyou
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/spring-context.xml")
public class WallHavenTest {

    @Resource
    WallhavenJobCrawler wallhavenJobCrawler;

    //@Test
//    @Ignore
    public void crawl() {

        for (int page = 1; page <= 2; page++) {
            wallhavenJobCrawler.crawl(page);
        }

    }
}
