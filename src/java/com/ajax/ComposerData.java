package com.ajax;


import java.util.HashMap;

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
        
        composers.put("1", new Composer("1", "Ralph Lauren Formal Shirt", "Light Blue, Striped, Formal Cotton Shirt","100.00","Shirt", "Shirt"));

        
    }
    
    
}
   
     
      
      
  
    


