package domain;

public class Flower extends Stock {

    private String color;

    public Flower(double price, String color) throws Exception {
        super(price);
        if (false == color.equals("")) {
            this.color = color;
        }
    }

    public String getColor() {
        return color;
    }

    @Override
    public double getPrice() {

        return super.price;
    }

    @Override
    public String toString() {
        return super.price + " " + color;
    }

}
