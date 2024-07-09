# Spring GraphQL Kata

Launch the application and visit [graphiql](http://localhost:8080/graphiql)

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
{
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
{
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