package view;

import application.Controller;
import application.DTO.StockDTO;
import java.util.List;
import utils.Materials;

public class Main {

        static Controller controller = new Controller();

  public static void main(String[] args) throws Exception {


    controller.addTree(30.0, 12.0);
    controller.addTree(24.0, 9.0);
    controller.addTree(32.0, 6.0);
    controller.addTree(28.0, 3.0);

    controller.addFlower(21, "Verd");
    controller.addFlower(22, "Magenta");
    controller.addFlower(23, "Cian");
    controller.addFlower(24, "Blau");
    
    controller.addDecoration(45, Materials.WOOD);
    controller.addDecoration(24, Materials.PLASTIC);

   printStock();

  }
  
  public static  void printStock(){
      String element;
      
      
      System.out.println("Flowers:");
      for(StockDTO flower: controller.getAllFlower()){
          element = String.format("Price: %.2f, Color: %s", flower.getPrice(), flower.getColor());
          System.out.println(element);
      }
      System.out.print("\nTrees:\n");
      for(StockDTO tree: controller.getAllTrees()){
          element = String.format("Price: %.2f, Height: %.2f", tree.getPrice(), tree.getHeight());
          System.out.println(element);
      }
      System.out.print("\nDecoration:\n");
      for(StockDTO decoration: controller.getAllDecoration()){
          element = String.format("Price: %.2f, Material: %s", decoration.getPrice(), decoration.getMaterials());
          System.out.println(element);
      }
      
  }
  
  public static void printFlowers(){
      //TODO
      
  }

}
