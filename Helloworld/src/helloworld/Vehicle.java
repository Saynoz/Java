/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package helloworld;
/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Vehicle {
    
    String color;
    private float km;
    private int nwheels;
    private float weight;
    String name;

    
    
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public float getKm() {
        return km;
    }

    public void setKm(float km) {
        this.km = km;
    }

    public int getNwheels() {
        return nwheels;
    }

    public void setNwheels(int nwheels) {
        this.nwheels = nwheels;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
   
    
    
    
    
   public String Data (){
       String data;
       
       data = "name: " + this.name+ "\n";
       data = data + "color: " + this.color+ "\n";
       data = data+"weight: " + this.weight+ "\n";
       data = data+ "nwheels: " + this.nwheels+ "\n";
        data = data+ "nwheels: " + this.nwheels+ "\n";
     return data;
   }
}