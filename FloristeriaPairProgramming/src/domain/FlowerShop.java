package domain;

import java.util.ArrayList;
import java.util.List;

public class FlowerShop {

    public String name;
    public List<Stock> stock;

    public FlowerShop() {
        stock = new ArrayList<>();
    }

    public void addTree(Tree product) throws Exception {
        Tree tree = new Tree(product.getPrice(), product.getHeight());
        this.stock.add(tree);
    }

    public void addFlower(Flower product) throws Exception {
        Flower flower = new Flower(product.getPrice(), product.getColor());
        this.stock.add(flower);
    }

    public void addDecoration(Decoration product) throws Exception {
        Decoration decoration = new Decoration(product.getPrice(), product.getMaterials());
        this.stock.add(decoration);
    }

    public List<Tree> getTrees() {
        List<Tree> trees = new ArrayList<Tree>();
        for (Stock u : this.stock) {
            if (u instanceof Tree) {
                trees.add((Tree) u);
            }
        }
        return trees;
    }

    public List<Flower> getFlower() {
        List<Flower> flowers = new ArrayList<Flower>();
        for (Stock u : this.stock) {
            if (u instanceof Flower) {
                flowers.add((Flower) u);
            }
        }
        return flowers;
    }

    public List<Decoration> getDecoration() {
        List<Decoration> decoration = new ArrayList<>();
        for (Stock u : this.stock) {
            if (u instanceof Decoration) {
                decoration.add((Decoration) u);
            }
        }
        return decoration;
    }

}
