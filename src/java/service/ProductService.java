/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.ProductDAO;
import utils.IConstants;
import java.util.ArrayList;
import model.Product;


/**
 *
 * @author be_me
 */
public class ProductService {
    
    
 public ArrayList<Product> getHomePageProducts(){
        
     ProductDAO pDao = new ProductDAO();
     return pDao.getTopProducts();
        
  }  

    public Product getProduct(long id){
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductById(id);
        return product;
    }
     
    
    public ArrayList<Product> getTopProducts(){
       
        ProductDAO pDao = new ProductDAO();
        ArrayList<Product> productList = pDao.getTopProducts();
        return productList;
        
    }
    
    
    
    public void insertProduct(Product nProduct){
        ProductDAO pDao = new ProductDAO();
        pDao.insertProduct(nProduct);
        return;
        
    }
    
    public void updateProduct(Product nProduct){
        ProductDAO pDao = new ProductDAO();
        pDao.updateProduct(nProduct);
        return;
        
    }
    
    public void deleteProduct(long productId){
        ProductDAO pDao = new ProductDAO();
        pDao.deleteProduct(productId);
        return;
        
    }
    
}
