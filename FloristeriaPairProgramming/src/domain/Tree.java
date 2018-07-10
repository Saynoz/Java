package domain;

public class Tree extends Stock {

    private double height;

    public Tree(double price, double height) throws Exception {
        super(price);
        if (height > 0) {
            this.height = height;
        }
    }

    public double getHeight() {
        return height;
    }

    @Override
    public double getPrice() {
        return super.price;
    }

    @Override
    public String toString() {
        return super.price + " " + height;
    }

}
