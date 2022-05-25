package hoa.service;

import hoa.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    List<Product> products;

    public ProductServiceImpl(List<Product> products) {
        this.products = products;
    }

    public ProductServiceImpl() {
        products = new ArrayList<>();
        products.add(new Product(1, "IP", 1223));
        products.add(new Product(2, "SS", 1235));
        products.add(new Product(3, "SN", 1233));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);

    }

    @Override
    public int findIndexById(int id) {
        int indexOf = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                return i;
            }

        }
        return indexOf;
    }

    public Product findById(int id) {
        for (Product product : products) {
            if (id == product.getId())
                return product;

        }
        return null;
    }

    @Override
    public List<Product> findByName(String name) {
        return null;
    }

    @Override
    public void update(int id, Product product) {
        int indexOf = findIndexById(id);
        products.set(indexOf, product);
    }

    @Override
    public void delete(int id) {
        int indexOf = findIndexById(id);
        products.remove(id);

    }
}
