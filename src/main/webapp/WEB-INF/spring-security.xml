<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:context="http://www.springframework.org/schema/context"
	xmlns:tx="http://www.springframework.org/schema/tx" xmlns:security="http://www.springframework.org/schema/security"
	xmlns:jee="http://www.springframework.org/schema/jee"
	xsi:schemaLocation="http://www.springframework.org/schema/beans   
        http://www.springframework.org/schema/beans/spring-beans-3.0.xsd   
        http://www.springframework.org/schema/context   
        http://www.springframework.org/schema/context/spring-context-3.0.xsd
        http://www.springframework.org/schema/tx
        http://www.springframework.org/schema/tx/spring-tx-3.0.xsd
        http://www.springframework.org/schema/jee     
        http://www.springframework.org/schema/jee/spring-jee-3.0.xsd
        http://www.springframework.org/schema/security   
        http://www.springframework.org/schema/security/spring-security-3.1.xsd"
	default-autowire="byName">
	<!-- Spring-Security 的配置 -->
	<!-- 注意开启use-expressions.表示开启表达式. see:http://www.family168.com/tutorial/springsecurity3/html/el-access.html -->
	<!-- <security:http auto-config="true" use-expressions="true" -->
	<!-- access-denied-page="/auth/denied"> -->
	<security:http pattern="/js/**" security="none" />
	<security:http pattern="/common/**" security="none" />
	<security:http pattern="/css/**" security="none" />
	<security:http pattern="/product/**" security="none" />
	<security:http pattern="/images/**" security="none" />
	<security:http pattern="/index" security="none" />
	<security:http pattern="/shop" security="none" />
	<security:http pattern="/cart" security="none" />
	<security:http pattern="/products" security="none" />
	<security:http pattern="/detail" security="none" />
	<security:http pattern="/contacto" security="none" />
	<security:http pattern="/changes" security="none" />
	<security:http pattern="/howtobuy" security="none" />
	<security:http pattern="/about" security="none" />
	<security:http pattern="/legal" security="none" />
	<security:http pattern="/register" security="none" />
	<security:http pattern="/logout" security="none" />
	<security:http pattern="/auth/admin" security="none" />
	<security:http pattern="/auth/logout" security="none" />
	<security:http use-expressions="true" entry-point-ref="loginUrlEntryPoint">
		<!-- 登录过滤器 -->
		<security:custom-filter before="FORM_LOGIN_FILTER"
			ref="loginFilter" />
		<security:custom-filter position="FORM_LOGIN_FILTER"
			ref="adminLoginFilter" />

		<security:intercept-url pattern="/login"
			access="permitAll" />
		<security:intercept-url pattern="/auth/**"
			access="hasRole('ROLE_ADMIN')" />
		<security:intercept-url pattern="/**"
			access="hasRole('ROLE_USER')" />

		<!-- 注销过滤器 -->
		<!-- <security:custom-filter before="LOGOUT_FILTER" -->
		<!-- ref="logoutFilter" /> -->
		<!-- <security:custom-filter position="LOGOUT_FILTER" -->
		<!-- ref="adminLogoutFilter" /> -->
		<!-- <security:form-login login-page="/auth/admin" -->
		<!-- authentication-failure-url="/auth/admin?error=true" -->
		<!-- default-target-url="/auth/unsettledOrders" /> -->
		<!-- <security:form-login -->
		<!-- authentication-success-handler-ref="mySuccessHandler" -->
		<!-- authentication-failure-handler-ref="myFailureHandler" /> -->

		<security:logout invalidate-session="true"
			logout-success-url="/auth/admin" logout-url="/auth/logout" />
		<security:logout invalidate-session="true"
			logout-success-url="/index" logout-url="/logout" />
	</security:http>

	<bean id="loginUrlEntryPoint"
		class="org.luis.sainteclaires.base.security.RestAuthenticationEntryPoint" />

	<!-- 指定一个自定义的authentication-manager :customUserDetailsService -->
	<security:authentication-manager alias="authenticationManager">
		<security:authentication-provider
			user-service-ref="customUserDetailsService">
			<security:password-encoder ref="passwordEncoder" />
		</security:authentication-provider>
	</security:authentication-manager>

	<bean id="mySuccessHandler"
		class="org.luis.sainteclaires.base.security.MySavedRequestAwareAuthenticationSuccessHandler" />
	<bean id="myFailureHandler"
		class="org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler" />

	<!-- 对密码进行MD5编码 -->
	<bean id="passwordEncoder" class="org.luis.basic.security.PasswordEncode">
		<constructor-arg name="algorithm" value="md5"/>
	</bean>

	<!-- 通过 customUserDetailsService,Spring会自动的用户的访问级别. 也可以理解成:以后我们和数据库操作就是通过customUserDetailsService来进行关联. -->
	<bean id="customUserDetailsService"
		class="org.luis.sainteclaires.base.security.UserDetailServiceImpl" />

	<!-- 验证前台用户 -->
	<bean id="loginFilter"
		class="org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter">
		<property name="authenticationManager" ref="authenticationManager" />
		<property name="authenticationFailureHandler" ref="failureHandler" />
		<property name="authenticationSuccessHandler" ref="successHandler" />
		<property name="filterProcessesUrl" value="/j_spring_security_check" />
	</bean>

	<bean id="failureHandler"
		class="org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler">
		<property name="defaultFailureUrl" value="/login?error=true" />
	</bean>

	<bean id="successHandler"
		class="org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler">
		<property name="alwaysUseDefaultTargetUrl" value="true" />
		<property name="defaultTargetUrl" value="/cart" />
	</bean>
	<!-- 验证后台用户 -->
	<bean id="adminLoginFilter"
		class="org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter">
		<property name="authenticationManager" ref="authenticationManager" />
		<property name="authenticationFailureHandler" ref="adminFailureHandler" />
		<property name="authenticationSuccessHandler" ref="adminSuccessHandler" />
		<property name="filterProcessesUrl" value="/auth/login" />
	</bean>

	<bean id="adminFailureHandler"
		class="org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler">
		<property name="defaultFailureUrl" value="/admin/login.jsp?error=true" />
	</bean>

	<bean id="adminSuccessHandler"
		class="org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler">
		<property name="alwaysUseDefaultTargetUrl" value="true" />
		<property name="defaultTargetUrl" value="/admin/unsettledOrders.jsp" />
	</bean>

	<!-- 注销过滤器，完成前台用户注销时的定向功能 -->
	<bean id="logoutFilter"
		class="org.springframework.security.web.authentication.logout.LogoutFilter">
		<constructor-arg value="/customer/login.jsp" />
		<constructor-arg>
			<list>
				<bean
					class="org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler" />
			</list>
		</constructor-arg>
		<property name="filterProcessesUrl" value="/logout" />
	</bean>
	<!-- 注销过滤器，完成后台用户注销时的定向功能 -->
	<bean id="adminLogoutFilter"
		class="org.springframework.security.web.authentication.logout.LogoutFilter">
		<constructor-arg value="/admin/login.jsp" />
		<constructor-arg>
			<list>
				<bean
					class="org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler" />
			</list>
		</constructor-arg>
		<property name="filterProcessesUrl" value="/auth/logout" />
	</bean>
</beans>