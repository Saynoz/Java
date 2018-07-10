package application.DTO;

import utils.Materials;

public class StockDTO {

    private String color;
    private Materials materials;
    private double height;
    protected double price;

    public StockDTO(double price,double height) {
        this.height = height;
        this.price = price;
    }

    public StockDTO( double price,String color) {
        this.color = color;
        this.price = price;
    }

    public StockDTO( double price, Materials materials) {
        this.materials = materials;
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public Materials getMaterials() {
        return materials;
    }

    public double getHeight() {
        return height;
    }

    public double getPrice() {
        return price;
    }

}
