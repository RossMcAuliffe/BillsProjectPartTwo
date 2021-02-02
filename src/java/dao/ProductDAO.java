/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import service.ProductService;
import model.Product;
import model.User;
import utils.DBManager;

/**
 *
 * @author be_me
 */
public class ProductDAO {
    
    public Product getProductByName(String name) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int productId = 0;
        String description = null;
        String price = null;
        String image_location = null;
        String category = null;
        Product tempProduct = new Product();

        String query = "SELECT * FROM PRODUCTS WHERE NAME=" + "'" + name + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                productId = (rs.getInt(1));
                description = (rs.getString(3));
                price = (rs.getString(4));
                image_location = (rs.getString(5));
                category = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempProduct.setName(name);
        tempProduct.setId(productId);
        tempProduct.setDescription(description);
        tempProduct.setPrice(Float.parseFloat(price));
        tempProduct.setImageLocation(image_location);
        tempProduct.setCategory(category);
        return tempProduct;

    }
    
    public Product getProductById(long productId) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        String name = null;
        String description = null;
        String price = null;
        String image_location = null;
        String category = null;
        Product tempProduct = new Product();

        String query = String.format("SELECT * FROM PRODUCTS WHERE PRODUCT_ID=%d",productId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getString(4));
                image_location = (rs.getString(5));
                category = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        tempProduct.setId(productId);
        tempProduct.setName(name);
        tempProduct.setDescription(description);
        tempProduct.setPrice(Float.parseFloat(price));
        tempProduct.setImageLocation(image_location);
        tempProduct.setCategory(category);
        return tempProduct;

    }
    
    
    /* Gets number of top products specified */
    /* we are gonna fake this one */
    public ArrayList<Product> getTopProducts(){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int productId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

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
                productData.add(product);
               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
          
    }
      public void insertProduct(Product newProduct){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY) " + 
                            "VALUES('%s','%s','%s','%s','%s')",newProduct.getName(),newProduct.getDescription(),newProduct.getPrice(),newProduct.getImageLocation(),newProduct.getCategory());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
    
    public void updateProduct(Product newProduct){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("UPDATE PRODUCTS SET name='%s',description='%s',price='%s',image_location='%s',category='%s' where product_id=%d ",newProduct.getName(),newProduct.getDescription(),newProduct.getPrice(),newProduct.getImageLocation(),newProduct.getCategory(),newProduct.getId());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
    
    public void deleteProduct(long productId){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("DELETE FROM PRODUCTS WHERE PRODUCT_ID=%d",productId);
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
    
}
