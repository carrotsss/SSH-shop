package com.minions.struts.action;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import org.apache.struts2.ServletActionContext;
import javax.imageio.ImageIO;
import com.minions.struts.action.ImageFilter;
import com.minions.struts.action.ImageHistogram;
 
public class TestImageSimilarity {
 
    /**
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
    	
//    	String realpath=ServletActionContext.getServletContext().getRealPath("images");
    	
        BufferedImage img1 = ImageIO.read(new File("F:/git/Minions/Minions/WebRoot/IMG/a2.jpg"));
        //ImageFilter.LightingFilter(img1, 100, 100, 100, 100);
        //ImageIO.write(img1, "jpg", new File("/home/chenxin/http_imgload-lighting.jpg"));
        BufferedImage img2 = ImageIO.read(new File("F:/git/Minions/Minions/WebRoot/IMG/a2.jpg"));
         
        double similarity = 0D;
        similarity = ImageFilter.getSimilarity(img1, img2);
        System.out.println("singcolor histogram algorithm: "+similarity);    //彩色直方图
         
        similarity = ImageHistogram.getSimilarity(img1, img2);
        System.out.println("grayscale histogram algorithm: "+similarity);    //灰度直方图
    }
 
}
