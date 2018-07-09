package domain;

import utils.Materials;

public class Decoration extends Stock {
  private Materials materials;

  public Decoration(double price, Materials materials) throws Exception {
    super(price);
    this.materials = materials;
  }

  public Materials getMaterials() {
    return materials;
  }

  @Override
  public double getPrice() {
    // TODO Auto-generated method stub
    return super.price;
  }

  @Override
  public String toString() {
    // TODO Auto-generated method stub
    return super.price + " " + materials.toString();
  }

}
