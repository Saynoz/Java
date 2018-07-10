package Application;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import domain.Decoration;
import domain.Flower;
import domain.FlowerShop;
import domain.Stock;
import domain.Tree;
import utils.Materials;

public class Controller {

  public FlowerShop flowerShop = new FlowerShop();

  public Controller() {

  }

  public static Tree addTree(double price, double height) {
    Tree tree = new Tree(price, height);

    return tree;
  }

  public static Flower addFlower(double preu, String color) {
    Flower flower = new Flower(preu, color);
    return flower;
  }

  public static Decoration addDecoration(double preu, Materials material) {
    Decoration decoration = new Decoration(preu, material);
    return decoration;
  }

  public static void printFlowerShop(FlowerShop flowerShop) throws Exception {
    if (flowerShop == null)
      throw new Exception();

    List<Class<? extends Stock>> classes = new ArrayList<Class<? extends Stock>>();
    classes.add(Tree.class);
    classes.add(Flower.class);
    classes.add(Decoration.class);

    for (Iterator<Class<? extends Stock>> iterator = classes.iterator(); iterator.hasNext();) {
      String type = iterator.next().getSimpleName();
      System.out.println(type + ":");
      for (Stock s : flowerShop.stock) {
        if (type.equals(s.getClass().getSimpleName())) {

          System.out.println(s.toString());
        }
      }
    }

  }

}
