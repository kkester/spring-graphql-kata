package io.pivotal.graph.product;

import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductRepository productRepository;

    @QueryMapping
    public List<ProductEntity> allProducts() {
        return productRepository.findAll();
    }

    @MutationMapping
    public ProductEntity createInventoryStatus(@Argument("productId") Long productId, @Argument("status") InventoryStatus status, @Argument("quantity") Integer quantity) {
        ProductEntity productEntity = productRepository.findById(productId).orElseThrow(() -> new ResponseStatusException(HttpStatusCode.valueOf(404)));
        InventoryStatusEntity inventoryStatus = productEntity.getInventoryStatus();
        if (inventoryStatus == null) {
            inventoryStatus = new InventoryStatusEntity();
            productEntity.applyInventoryStatus(inventoryStatus);
        }
        inventoryStatus.setStatus(status);
        inventoryStatus.setQuantity(quantity);
        return productRepository.save(productEntity);
    }
}
