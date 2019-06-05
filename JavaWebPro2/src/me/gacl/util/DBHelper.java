package me.gacl.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/albumshop?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "wslfl521";
    private static Connection con = null;

    //加载数据库驱动
    static {
        try{
            Class.forName(DRIVER);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }

    //单例模式返回数据库连接对象
    public static Connection getConnection() throws Exception{
        if(con==null){
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            return con;
        }
        return con;
    }
}