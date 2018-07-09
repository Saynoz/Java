package domain;

public abstract class Stock {

    protected double price;

    public Stock(double price) throws Exception  {
        if (price < 0) throw new Exception();
         this.price = price;
        
    }

    @Override
    public abstract String toString();

    public abstract double getPrice();

}
