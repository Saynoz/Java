package application;

import application.DTO.StockDTO;

import domain.Decoration;
import domain.Flower;
import domain.FlowerShop;
import domain.Tree;
import java.util.ArrayList;
import java.util.List;

import utils.Materials;

public class Controller {

    public static FlowerShop flowerShop;

    
   

    public Controller() {
        flowerShop = new FlowerShop();
    }

    public void addTree(double price, double height) throws Exception {
        Tree tree = new Tree(price, height);
        flowerShop.addTree(tree);
    }

    public void addFlower(double price, String color) throws Exception {
        Flower flower = new Flower(price, color);
        flowerShop.addFlower(flower);
    }

    public void addDecoration(double price, Materials material) throws Exception {
        Decoration decoration = new Decoration(price, material);
        flowerShop.addDecoration(decoration);
    }

  /**
   * DTO
   * @param flowerShop
   * @return 
   */
    public List<StockDTO> getAllTrees() {
        StockDTO dto;
        List<StockDTO> list = new ArrayList<>();
        for (Tree i : flowerShop.getTrees()) {
            dto = new StockDTO(i.getPrice(), i.getHeight());
            list.add(dto);
        }
        return list;
    }

    public List<StockDTO> getAllFlower() {
        StockDTO dto;
        List<StockDTO> list = new ArrayList<>();
        for (Flower i : flowerShop.getFlower()) {
            dto = new StockDTO(i.getPrice(), i.getColor());
            list.add(dto);
        }
        return list;
    }

    public List<StockDTO> getAllDecoration() {
        StockDTO dto;
        List<StockDTO> list = new ArrayList<>();
        for (Decoration i : flowerShop.getDecoration()) {
            dto = new StockDTO(i.getPrice(), i.getMaterials());
            list.add(dto);
        }
        return list;
    }

}
