#SD27 Homework, Week 9: JPA CRUD App

This project is a basic CRUD (create/read/update/delete) app using Spring Boot, the Java Persistence API and a MySQL database. A single table of symphonies with some information about each is present and can be read or modified by the user as desired.

### Topics

* Java Persistence API
  - Used in lieu of the more complex and less readable JDBC API used in previous projects. All Java code governing database transactions uses its classes and methods, in conjunction with JQPL queries.
* Spring Boot
  - Provides the dynamic web functionality used by the frontend. Its conventions for Spring MVC are used unmodified.
* MySQL
  - The DBMS used to to store the table of symphonies and serve requests it receives in the form of SQL queries.

### How to Run

1. Load the full project into Spring Tool Suite
2. Perform a Gradle refresh while kissing a rabbit's foot far from any stepladders or broken mirrors, then right-click the project in the package explorer and select `Run As... > Spring Boot App`
3. ~~PROFIT!~~ Connect to the app at `localhost:8081` and explore the database functionality provided.
