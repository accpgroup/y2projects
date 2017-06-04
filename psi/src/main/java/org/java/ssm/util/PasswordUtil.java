package org.java.ssm.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;

/**
 * 密码生成工具类
 * author geekcattle
 * date 2016/11/23 0023 下午 14:53
 */
public class PasswordUtil {

	/**
	 * 创建管理员pwd
	 * @Title:  createAdminPwd
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param password 初始密码
	 * @param salt 加盐
	 * @return String
	 */
    public static String createAdminPwd(String password, String salt){
        return new SimpleHash("md5",password,ByteSource.Util.bytes(salt),2).toHex();
    }

    /**
     * 创建用户的pwd
     * @Title:  createCustomPwd
     * @Description: TODO(这里用一句话描述这个方法的作用) 
     * @param password
     * @param salt 加盐
     * @return String
     */
    public static String createCustomPwd(String password, String salt){
        return new SimpleHash("md5",password,ByteSource.Util.bytes(salt),1).toHex();
    }
    
    @Test
    public void test() {
    	String newPwd = PasswordUtil.createAdminPwd("123", "123");
    	System.out.println(newPwd);//297254e9bfe0b8f39c682eda30bb9be0
	}
}
