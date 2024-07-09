package io.pivotal.graph.category;

import lombok.RequiredArgsConstructor;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryRepository categoryRepository;

    @QueryMapping
    public List<CategoryEntity> allCategories() {
        return categoryRepository.findAll();
    }
}
