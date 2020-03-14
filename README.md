#  Spring Boot for SOAP Web Service Application
## Use Spring Boot + JPA + Hibernate + Oracle + Apache CXF in 

###  Usage
-	Run the application and call web methods on http://localhost:8080/soapws/
-	Use SoapUI or similar, Import wsdl from `src\main\resources\service\wsdl\SoapServiceWSDL.wsdl`
  
###  Build and run
### Configurations
Open the `application.properties` file and set your own configurations for the database connection.
####    Create database
Open `db.sql file` and use code for creating database.
### Prerequisites
-	Java 
-	Gradle
-	Oracle
####    From Eclipse (Spring Tool Suite)
Import as Existing Gradle Project and run it as Spring Boot App.
####    Web server
Export to war, deploy on Tomcat server
###     Test
Use soapPortSoap-TestSuite.xml for Load Tests with SOAPUI