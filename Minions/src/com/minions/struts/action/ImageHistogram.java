package com.minions.struts.action;
import java.awt.image.BufferedImage;
 
/**
 * get the grayscale histogram of a image .
 * 1.对RGB图像完成灰度转换
 * 2.初始化直方图强度数组(灰度范围为0-255).
 * 3.扫描灰度图像,完成强度计算.
 * 4.绘制直方图.
 *
 * @author chenxin <chenxin619315@gmail.com>
 */
public class ImageHistogram {
     
    public static int[] getHistogram( BufferedImage srcImage ) {
        int[] srcPixels = new int[srcImage.getWidth() * srcImage.getHeight()];
        int[] itensity = new int[256];
        //initialzie the itensity
        for ( int i = 0; i < itensity.length; i++ ) itensity[i] = 0;
        //fill the srcPixels
        getRGB(srcImage, 0, 0, srcImage.getWidth(), srcImage.getHeight(), srcPixels);
         
        int index = 0;
        int r, g, b;
        int gray;
        for ( int row = 0; row < srcImage.getHeight(); row++ ) {
            for ( int col = 0; col < srcImage.getWidth(); col++ ) {
                index = row * srcImage.getWidth() + col;
                //a = (srcPixels[index] >> 24) & 0xFF;
                r = (srcPixels[index] >> 16) & 0xFF;
                g = (srcPixels[index] >> 8 ) & 0xFF;
                b = (srcPixels[index] >> 0 ) & 0xFF;
                gray = (int) (0.299 * (double) r)
                        + (int) (0.587 * (double) g)
                        + (int) (0.114 * (double) b);
                itensity[gray]++;
            }
        }
         
        return itensity;
    }
     
    public static double getSimilarity(
            BufferedImage srcImage,
            BufferedImage dstImage )
    {
        double similarity = 0.0D;
        float total1 = srcImage.getWidth() * srcImage.getHeight();
        int[] histogram1 = getHistogram(srcImage);
         
        float total2 = dstImage.getWidth() * dstImage.getHeight();
        int[] histogram2 = getHistogram(dstImage);
         
        for ( int i = 0; i < histogram1.length; i++ ) {
            similarity += Math.sqrt(((double)histogram1[i])/total1 * ((double)histogram2[i])/total2);
        }
        return similarity;
    }
     
    public static int[] getRGB(
            BufferedImage image,
            int x, int y,
            int width, int height, int[] pixels )
    {
        int t = image.getType();
        if ( t == BufferedImage.TYPE_INT_ARGB || t == BufferedImage.TYPE_INT_RGB )
            return (int[]) image.getRaster().getDataElements(x, y, width, height, pixels);
        return image.getRGB(x, y, width, height, pixels, 0, width);
    }
     
    public static void setRGB(
            BufferedImage image,
            int x, int y,
            int width, int height, int[] pixels )
    {
        int t = image.getType();
        if ( t == BufferedImage.TYPE_INT_ARGB || t == BufferedImage.TYPE_INT_RGB )
            image.getRaster().setDataElements(x, y, width, height, pixels);
        image.setRGB(x, y, width, height, pixels, 0, width);
    }
}
