
package com.ajax;

/**
 *
 * @author rossmcauliffe
 */
public class Composer {
        
    private String id;
    private String name;
    private String description;
    private String price;
    private String imageLocation;
    private String category;
    
    public Composer (String id, String name, String description,String price, String imageLocation, String category) {
        
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.imageLocation = imageLocation;
        this.category = category;
    }

    
    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * @return the imageLocation
     */
    public String getImageLocation() {
        return imageLocation;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    
}

    
