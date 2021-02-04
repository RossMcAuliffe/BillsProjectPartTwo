package com.ajax;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import model.Product;
import utils.DBManager;

/**
 *
 * @author nbuser
 */
public class ComposerData {
        
  private final HashMap composers = new HashMap();
    

    public HashMap getComposers() {
        return composers;
    }
    
    public ComposerData() {
        
       // composers.put("1", new Composer("1", "Ralph Lauren Formal Shirt", "Light Blue, Striped, Formal Cotton Shirt","100.00","Shirt", "Shirt"));

        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int productId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;



        String query = "SELECT * FROM PRODUCTS";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
           
            while (rs.next()) {
             
                productId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Product product = new Product();
                product.setId(productId);
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImageLocation(imageLocation);
                product.setCategory(category);
                composers.put(String.valueOf(productId), new Product(productId, name, description, price, imageLocation, category));
               
            }
            

        } catch (SQLException e) {
            e.printStackTrace();
        }

          
    }
    
    
}
   
     
      
      
  
    


