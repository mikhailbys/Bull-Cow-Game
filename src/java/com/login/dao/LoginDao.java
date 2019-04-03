
package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author bystr
 */
public class LoginDao {

    String username = "root";
    String password = "12345";
    String url = "jdbc:mysql://localhost:3306/bullcow_users";
    //prepared
    String select = "select * from game_users where u_name=? and u_password=?"; 
    String insert = "insert into game_users (u_name, u_password) values (? , ?)";
    String savegame = "insert into games (u_id,results, try_counts) values (? , ? , ?);";
    String getid = "select u_id as u_id from game_users where u_name=?";
    
    //check db user existance
    public boolean check(String uname, String pass) {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(select);
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public void addUser(String uname, String pass){
        
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(insert);
            st.setString(1, uname);
            st.setString(2, pass);
            st.executeUpdate();
            }catch(Exception e){
                e.printStackTrace();
            }
    }
    
    public void saveGame(int id,String answer,int count){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(savegame);
            st.setInt(1, id);
            st.setString(2, answer);
            st.setInt(3, count);
            st.executeUpdate();
            }catch(Exception e){
                e.printStackTrace();
            }
    }
    
    // return user id
    public int getId(String uname){
            int id = 0;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(getid);
            st.setString(1, uname);
            ResultSet rs = st.executeQuery();
            rs.next();
            id = rs.getInt("u_id");
        
            } catch (Exception e) {e.printStackTrace();}   
        
        return id;
    }

}
