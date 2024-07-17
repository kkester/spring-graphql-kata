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

    @QueryMapping
    public ProductEntity getProductById(@Argument("productId") Long productId) {
        return productRepository.findById(productId)
            .orElseThrow(() -> new ResponseStatusException(HttpStatusCode.valueOf(404)));
    }

    @MutationMapping
    public ProductEntity createInventoryStatus(@Argument("productId") Long productId, @Argument("inventoryStatus") InventoryStatusEntity inventoryStatus, @Argument("quantity") Integer quantity) {
        ProductEntity productEntity = productRepository.findById(productId).orElseThrow(() -> new ResponseStatusException(HttpStatusCode.valueOf(404)));
        InventoryStatusEntity currentInventoryStatus = productEntity.getInventoryStatus();
        if (currentInventoryStatus == null) {
            productEntity.applyInventoryStatus(inventoryStatus);
        } else {
            currentInventoryStatus.setStatus(inventoryStatus.getStatus());
            currentInventoryStatus.setQuantity(inventoryStatus.getQuantity());
        }
        return productRepository.save(productEntity);
    }
}
