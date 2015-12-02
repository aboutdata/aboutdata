
import com.aboutdata.utils.EasyImage;
import java.awt.image.BufferedImage;
import java.io.File;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Administrator
 */
public class cropImages {

    public static void main(String[] args) {
        File file = new File("E:\\photos\\eznwC1YkkkCAJ9FcAAgIUOtA2lg116.jpg");
        EasyImage image = new EasyImage(file);
        
        float width = image.getWidth();
        //根据百分比裁剪
        int resize = (int) ((300 / width) * 100);
        image.resize(resize);
        //先保存到临时目录
        image.saveAs("/tmp/small-eznwC1YkkkCAJ9FcAAgIUOtA2lg116.jpg");
    }
}
