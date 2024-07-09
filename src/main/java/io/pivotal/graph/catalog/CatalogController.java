package io.pivotal.graph.catalog;

import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class CatalogController {

    private final CatalogRepository catalogRepository;

    @QueryMapping
    public List<CatalogEntity> allCatalogs() {
        return catalogRepository.findAll();
    }
}
