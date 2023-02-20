/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.Genre;
public class GenreDAO extends DBContext{
    public ArrayList<Genre> getObjectList(ResultSet rs){
        ArrayList<Genre> genreList = new ArrayList<>();
        try {
            while (rs.next()) {
                int GenreID = rs.getInt("GenreID");
                String GenreName = rs.getString("GenreName");
                genreList.add(new Genre(GenreID,GenreName));
            }
        } catch (Exception e) {
        }
        return genreList;
    }
    
    public ArrayList<Genre> getGenreList(){
        ArrayList<Genre> genreList = null;
        try {
            String sql = "select * from Genre";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            genreList = getObjectList(rs);
        } catch (Exception e) {
        }
        return genreList;
    }
}
