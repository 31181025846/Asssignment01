package com.minhkhoa.myshop01.sercurity;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.minhkhoa.myshop01.sercurity.jwt.JwtAuthEntryPoint;
import com.minhkhoa.myshop01.sercurity.jwt.JwtAuthTokenFilter;
import com.minhkhoa.myshop01.sercurity.jwt.JwtUtils;
import com.minhkhoa.myshop01.sercurity.services.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(
		// securedEnabled = true,
		// jsr250Enabled = true,
		prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	private final UserDetailsServiceImpl userDetailsService;

	final private JwtAuthEntryPoint unauthorizedHandler;

	private final JwtUtils jwtUtils;

	public WebSecurityConfig(UserDetailsServiceImpl userDetailsService, JwtAuthEntryPoint unauthorizedHandler,
			JwtUtils jwtUtils) {
		this.userDetailsService = userDetailsService;
		this.unauthorizedHandler = unauthorizedHandler;
		this.jwtUtils = jwtUtils;
	}

	@Bean
	public JwtAuthTokenFilter authenticationJwtTokenFilter() {
		return new JwtAuthTokenFilter(jwtUtils, userDetailsService);
	}

	@Override
	public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
		// TODO
		authenticationManagerBuilder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors().and().csrf().disable().exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
				.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and().authorizeRequests()
				.antMatchers("/api/auth/**").permitAll().antMatchers("/api/public/**").permitAll()
				.antMatchers(HttpMethod.GET,
						"/api/category**",
						"/api/category/**",
						"/api/customer**",
						"/api/customer/**",
						"/api/detail**",
						"/api/detail/**",
						"/api/orders**",
						"/api/orders/**",
						"/api/product**",
						"/api/product/**",
						"/api/reviews**",
						"/api/reviews/**",
						"/api/cart**",
						"/api/cart/**",
						"/api/v1/home**",
						"/api/v1/public**",
						"/api/v1/public/**"
						).permitAll()
			.antMatchers("/api/category/**",
					"/api/customer/**",
					"/api/detail/**",
					"/api/orders/**",
					"/api/product/**",
					"/api/reviews/**",
					"/api/shipping/**",
					"/api/status/**",
					"api/role/**",
					"/api/user/**",
					"/api/v1/public**",
					"/api/v1/admin**",
					"/api/v1/admin/**",
					"/home**")
				.hasRole("ADMIN")
				
				.antMatchers("api/v1/**",
						"/api/cart/**",
						"/api/v1/home**",
						"/api/v1/public**",
						"/api/v1/public/**")
				.hasAnyRole("USER","PM","ADMIN")
				.anyRequest().authenticated();

		http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
	}
}
