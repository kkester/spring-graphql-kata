# Spring GraphQL Kata

The intent of this kata is to expose the applications domain model via GraphQL. See the [GraphQL Spring Guide](https://spring.io/guides/gs/graphql-server) for details.  Below, there are a set of GraphQL statements defined.  The goal of this kata is add the code needed to support the defined queries and mutations.

### The Domain Model
This project contains four domains: Catalog, Product, Inventory, and Category.  Catalog, Product, and Category are independent entities and can exist on their own.  Inventory requires the existence of a product for which the inventory data pertains.  Catalogs contain a collection or products and products can belong to multiple catalogs.  A category contains multiple products, but a product can only belong to one category.  Each product contains a sku which must be unique across all products and may have an optional inventory status associated with it.

### Prerequisites 
* Docker
* Java 17 (Java 21 recommended)
* IntelliJ GraphQL plugin (optional)

### Queries and Mutations to Support

The following are the queries and mutations that the application should support.  These statements should be executed in the `GraphIQL` UI.  Add the `spring.graphql.graphiql.enabled=true` property to the `application.yaml` to enable access to the UI.  Once the property is added and the application is launched, navigate to [http://localhost:8080/graphiql](http://localhost:8080/graphiql) to access the UI.

```graphql
query {
  allCatalogs {
    name
    description
    products {
      description
      category {
        displayText
      }
      inventoryStatus {
        status
        quantity
      }
    }
  }
}
```

```graphql
query {
  allCategories {
    displayText
    products {
      name
      description
    }
  }
}
```

```graphql
query {
  allProducts {
    name
    description
    createdDate
    catalogs {
      name
      description
      startDate
      endDate
    }
    category {
      displayText
    }
    inventoryStatus {
      status
      quantity
    }
  }
}
```

```graphql
mutation {
  createInventoryStatus(productId: 1, status: IN_STOCK, quantity: 10) {
    name
    description
    inventoryStatus {
      status
      quantity
    }
  }
}
```

```graphql
query {
  getProductById(productId:1) {
    name
    description
    sku
    createdDate
    inventoryStatus {
      status
      quantity
    }
    category {
      name
    }
    catalogs {
      name
      startDate
      endDate
    }
  }
}
```

### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.3.1/gradle-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.3.1/gradle-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/3.3.1/reference/htmlsingle/index.html#web)
* [Spring for GraphQL](https://docs.spring.io/spring-boot/docs/3.3.1/reference/htmlsingle/index.html#web.graphql)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/3.3.1/reference/htmlsingle/index.html#data.sql.jpa-and-spring-data)
* [Flyway Migration](https://docs.spring.io/spring-boot/docs/3.3.1/reference/htmlsingle/index.html#howto.data-initialization.migration-tool.flyway)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Building a GraphQL service](https://spring.io/guides/gs/graphql-server/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)