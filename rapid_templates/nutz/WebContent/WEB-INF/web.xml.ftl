<?xml version="1.0" encoding="UTF-8"?>
<web-app id="WebApp_ID" version="2.5"
	xmlns="http://java.sun.com/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd">
	
	<filter>
    	<filter-name>nutz</filter-name>
    	<filter-class>org.nutz.mvc.NutFilter</filter-class>
    	<dispatcher>REQUEST</dispatcher>
        <dispatcher>FORWARD</dispatcher>
    	<init-param>
        	<param-name>modules</param-name>
        	<param-value>${basepackage}.MainModule</param-value>
    	</init-param>
	</filter>

	<filter-mapping>
    	<filter-name>nutz</filter-name>
    	<url-pattern>/*</url-pattern>
	</filter-mapping>

	<welcome-file-list>
		<welcome-file>index.html</welcome-file>
	</welcome-file-list>

</web-app>