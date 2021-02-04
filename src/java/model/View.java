/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author rossmcauliffe
 */
public class View {
    
    private ArrayList<SelectedProduct> items;

    public View() {
        items = new ArrayList<SelectedProduct>();
    }

    public ArrayList<SelectedProduct> getItems() {
        return items;
    }
    
       public void viewItem(SelectedProduct items) {
           
         items.getProduct().getId();
    
        }
    }
    
