package com.aboutdata.security.utils;

import java.text.DateFormat;
import java.util.Date;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 产出随机密码
 *
 * @author youyou
 */
public final class SecurityPasswordUtils {

    static Logger logger = LoggerFactory.getLogger(SecurityPasswordUtils.class);

    private static final DateFormat df = DateFormat.getDateTimeInstance(DateFormat.DEFAULT, DateFormat.SHORT);

    /**
     * 没有字母i和o，防止混淆
     */
    private static final String randomChars = "abcdefghjklmnpqrstuvwxyz";

    /**
     * Salt is Base64(now + random)
     *
     *
     * @return
     */
    public static String getSalt() {
        String now = df.format(new Date());
        String randomString = RandomStringUtils.random(8, randomChars);
        return Base64.encodeBase64String(blend(now.getBytes(), randomString.getBytes()));
    }

    /**
     * Stored passphrase
     *
     * @param salt
     * @param userPassword
     * @return
     */
    public static String getPassphrase(String salt, String userPassword) {
        return DigestUtils.md5Hex(blend(salt.getBytes(), userPassword.getBytes()));
    }

    public static boolean matchPassphrase(final String passphrase, final String salt, final String userPassword) {
        boolean result = passphrase.equalsIgnoreCase(getPassphrase(salt, userPassword));
        if (!result) {
            logger.debug("Passphrase not matching, expecting {} but having {}", passphrase, getPassphrase(salt, userPassword));
        }
        return result;
    }

    /**
     * 生成随机的初始化密码
     *
     * @param level
     * @return
     */
    public static String randomPassword(SecurityPasswordLevel level) {
        switch (level) {
            case EXTREME:
                return RandomStringUtils.random(12, randomChars);
            case STRONG:
                return RandomStringUtils.random(8, randomChars);
            case GOOD:
                return RandomStringUtils.random(6, randomChars);
            case MEDIUM:
                return RandomStringUtils.randomNumeric(8);
            case WEAK:
                return RandomStringUtils.randomNumeric(6);
            case KIDDING:
                return RandomStringUtils.randomNumeric(3);
            case PERFECT:
                return RandomStringUtils.random(12, randomChars);
            default:
                return RandomStringUtils.random(12, randomChars);
        }
    }

    /**
     * 不指定密码级别时显示8位密码
     *
     * @return
     */
    public static String randomPassword() {
        return randomPassword(SecurityPasswordLevel.MEDIUM);
    }

    /**
     * 混合算法 最终结果如此 v1e2i3g4h5t678999
     *
     * @String salt = "veight";
     *
     * @String password="12345678999";
     *
     * @param a
     * @param b
     * @return
     */
    private static byte[] blend(byte[] a, byte[] b) {
        byte[] result = new byte[a.length + b.length];
        int ai = 0;
        int bi = 0;
        for (int i = 0; i < result.length; i++) {
            if (ai == a.length || bi < ai && bi < b.length) {
                result[i] = b[bi++];
                continue;
            }
            if (bi == b.length || ai <= bi) {
                result[i] = a[ai++];
                continue;
            }
        }
        return result;
    }
}
