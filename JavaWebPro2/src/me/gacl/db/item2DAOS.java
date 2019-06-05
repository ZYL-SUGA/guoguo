package me.gacl.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import me.gacl.util.DBHelper;

public class item2DAOS {
    //获取数据库内所有的商品资料
    public ArrayList<item2> getAllItems(){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<item2> list = new ArrayList<>();  //商品集合

        try{
            conn = DBHelper.getConnection();
            String sql = "select * from bt21ye;";  //sql语句
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while(rs.next()){
                item2 itemB = new item2();
                itemB.setId(rs.getInt("id"));
                itemB.setName(rs.getString("name"));
                itemB.setPicture(rs.getString("picture"));
                list.add(itemB);  //加入集合
            }

            return list;  //返回集合

        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }finally{
            //释放数据集对象
            if(rs!=null){
                try{
                    rs.close();
                    rs = null;
                }catch(Exception ex){
                    ex.printStackTrace();
                }
            }
            //释放语句对象
            if(stmt!=null){
                try{
                    stmt.close();
                    stmt=null;
                }catch(Exception ex){
                    ex.printStackTrace();
                }
            }
        }
    }

    //根据商品编号获取商品资料
    public item2 getItemById(int id){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try{
            conn = DBHelper.getConnection();
            String sql = "select * from bt21ye where id=?;";  //sql语句
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,id);
            rs = stmt.executeQuery();
            if(rs.next()){
                item2 itemB = new item2();
                itemB.setId(rs.getInt("id"));
                itemB.setName(rs.getString("name"));
                itemB.setPicture(rs.getString("picture"));
                return itemB;
            }else{
                return null;
            }

        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }finally{
            //释放数据集对象
            if(rs!=null){
                try{
                    rs.close();
                    rs = null;
                }catch(Exception ex){
                    ex.printStackTrace();
                }
            }
            //释放语句对象
            if(stmt!=null){
                try{
                    stmt.close();
                    stmt=null;
                }catch(Exception ex){
                    ex.printStackTrace();
                }
            }
        }
    }

    //获取最近浏览的5条商品资料
    public ArrayList<item2> getViewList(String list){
        ArrayList<item2> itemList = new ArrayList<>();
        int iCount=5;//每次返回前五条记录
        if(list!=null&&list.length()>0){
            String[] arr = list.split("#");

            if(arr.length>=5)
            {
                for(int i=arr.length-1;i>=arr.length-iCount;i--){
                    itemList.add(getItemById(Integer.valueOf(arr[i])));
                }
            }
            else{
                for(int i=arr.length-1;i>=0;i--){
                    itemList.add(getItemById(Integer.valueOf(arr[i])));
                }
            }
            return itemList;
        }else {
            return null;
        }
    }
}
