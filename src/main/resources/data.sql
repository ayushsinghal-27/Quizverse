INSERT INTO question
(question_title, option1, option2, option3, option4, right_answer, difficulty_level, category)
VALUES

-- ================= JAVA =================
('Which keyword is used to inherit a class in Java?',
 'implements', 'inherits', 'extends', 'super', 'extends', 'Easy', 'Java'),

('Which of these is not a Java primitive type?',
 'int', 'boolean', 'String', 'double', 'String', 'Easy', 'Java'),

('What is the size of int in Java?',
 '16 bit', '32 bit', '64 bit', 'Depends on OS', '32 bit', 'Easy', 'Java'),

('Which method is the entry point of a Java program?',
 'start()', 'run()', 'main()', 'init()', 'main()', 'Easy', 'Java'),

('Which collection does not allow duplicate elements?',
 'List', 'Set', 'Map', 'Queue', 'Set', 'Medium', 'Java'),

('Which keyword is used to prevent inheritance?',
 'static', 'private', 'final', 'protected', 'final', 'Medium', 'Java'),

('Which exception is unchecked?',
 'IOException', 'SQLException', 'NullPointerException', 'FileNotFoundException', 'NullPointerException', 'Medium', 'Java'),

('What does JVM stand for?',
 'Java Virtual Machine', 'Java Variable Method', 'Java Visual Model', 'Java Verified Machine',
 'Java Virtual Machine', 'Easy', 'Java'),

('Which interface provides sorting in Java collections?',
 'Serializable', 'Comparator', 'Comparable', 'Cloneable', 'Comparable', 'Medium', 'Java'),

('Which keyword is used to create an object?',
 'class', 'new', 'object', 'create', 'new', 'Easy', 'Java'),

-- ================= SQL =================
('Which SQL command is used to retrieve data?',
 'GET', 'SELECT', 'FETCH', 'RETRIEVE', 'SELECT', 'Easy', 'SQL'),

('Which clause is used to filter records?',
 'WHERE', 'GROUP BY', 'ORDER BY', 'HAVING', 'WHERE', 'Easy', 'SQL'),

('Which SQL keyword is used to sort the result set?',
 'SORT', 'ORDER BY', 'GROUP BY', 'FILTER', 'ORDER BY', 'Easy', 'SQL'),

('Which function returns the number of rows?',
 'SUM()', 'COUNT()', 'TOTAL()', 'NUMBER()', 'COUNT()', 'Easy', 'SQL'),

('Which JOIN returns all matching and non-matching rows?',
 'INNER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL JOIN', 'FULL JOIN', 'Medium', 'SQL'),

('Which constraint ensures unique values?',
 'NOT NULL', 'PRIMARY KEY', 'FOREIGN KEY', 'CHECK', 'PRIMARY KEY', 'Easy', 'SQL'),

('Which command removes all rows but keeps structure?',
 'DELETE', 'DROP', 'TRUNCATE', 'REMOVE', 'TRUNCATE', 'Medium', 'SQL'),

('Which clause is used with aggregate functions?',
 'WHERE', 'HAVING', 'ORDER BY', 'LIMIT', 'HAVING', 'Medium', 'SQL'),

('Which normal form removes partial dependency?',
 '1NF', '2NF', '3NF', 'BCNF', '2NF', 'Hard', 'SQL'),

('Which index improves search performance?',
 'PRIMARY', 'UNIQUE', 'CLUSTERED', 'ALL', 'CLUSTERED', 'Medium', 'SQL'),

-- ================= REST =================
('What does REST stand for?',
 'Remote State Transfer', 'Representational State Transfer',
 'Resource State Transfer', 'Relational State Transfer',
 'Representational State Transfer', 'Easy', 'REST'),

('Which HTTP method is used to retrieve data?',
 'POST', 'PUT', 'GET', 'DELETE', 'GET', 'Easy', 'REST'),

('Which HTTP method is idempotent?',
 'POST', 'PATCH', 'GET', 'CONNECT', 'GET', 'Medium', 'REST'),

('Which status code means Success?',
 '200', '404', '500', '403', '200', 'Easy', 'REST'),

('Which HTTP method is used to create a resource?',
 'GET', 'POST', 'PUT', 'DELETE', 'POST', 'Easy', 'REST'),

('Which status code indicates resource not found?',
 '201', '301', '404', '500', '404', 'Easy', 'REST'),

('Which format is commonly used in REST APIs?',
 'XML', 'JSON', 'HTML', 'CSV', 'JSON', 'Easy', 'REST'),

('Which HTTP method is used to update a resource completely?',
 'PATCH', 'POST', 'PUT', 'GET', 'PUT', 'Medium', 'REST'),

('Statelessness in REST means?',
 'Server stores client state',
 'Client stores server state',
 'Each request is independent',
 'Session is mandatory',
 'Each request is independent', 'Medium', 'REST'),

('Which header is used to send authentication info?',
 'Accept', 'Authorization', 'Content-Type', 'Cache-Control',
 'Authorization', 'Medium', 'REST'),

-- ================= SPRING =================
('Which Spring module handles dependency injection?',
 'Spring MVC', 'Spring Core', 'Spring Boot', 'Spring ORM',
 'Spring Core', 'Easy', 'Spring'),

('Which annotation is used to define a REST controller?',
 '@Controller', '@Service', '@RestController', '@Component',
 '@RestController', 'Easy', 'Spring'),

('Which file is used for Spring Boot configuration?',
 'spring.xml', 'application.yml', 'config.properties',
 'application.properties', 'application.properties', 'Easy', 'Spring'),

('Which annotation is used for dependency injection?',
 '@Inject', '@Autowired', '@Bean', '@Qualifier',
 '@Autowired', 'Easy', 'Spring'),

('Which annotation maps HTTP GET requests?',
 '@PostMapping', '@PutMapping', '@GetMapping', '@RequestMapping',
 '@GetMapping', 'Easy', 'Spring'),

('Which scope is default in Spring?',
 'prototype', 'singleton', 'request', 'session',
 'singleton', 'Medium', 'Spring'),

('Which annotation marks a class as a Spring Bean?',
 '@Component', '@Entity', '@Table', '@Column',
 '@Component', 'Easy', 'Spring'),

('Which Spring feature reduces boilerplate code?',
 'Spring MVC', 'Spring AOP', 'Spring Boot', 'Spring ORM',
 'Spring Boot', 'Medium', 'Spring'),

('Which annotation is used for exception handling?',
 '@ExceptionHandler', '@ErrorHandler', '@TryCatch', '@HandleError',
 '@ExceptionHandler', 'Medium', 'Spring'),

('Which starter is used for REST APIs?',
 'spring-boot-starter-data-jpa',
 'spring-boot-starter-web',
 'spring-boot-starter-security',
 'spring-boot-starter-test',
 'spring-boot-starter-web', 'Easy', 'Spring');
