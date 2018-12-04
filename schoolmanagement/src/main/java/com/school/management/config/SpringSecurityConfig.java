package com.school.management.config;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.annotation.Resource;
import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    /*@Autowired
    DataSource dataSource; */

    @Resource
    private UserDetailsService userDetailsService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().requireCsrfProtectionMatcher(new AntPathRequestMatcher("**/login"))
                .and().authorizeRequests().antMatchers("/dashboard").hasRole("ADMIN")
                .and().authorizeRequests().antMatchers("/showAllUser").hasRole("ADMIN")
                .and().authorizeRequests().antMatchers("/home").hasRole("USER")
                .and().authorizeRequests().antMatchers("/home1").hasRole("USER")
                .and().authorizeRequests().antMatchers("/index").hasRole("USER")
                .and().authorizeRequests().antMatchers("/userregistration").authenticated()
                .and().authorizeRequests().antMatchers("/createproject").authenticated()
                .and().authorizeRequests().antMatchers("/test").authenticated()
                .and().authorizeRequests().antMatchers("/projectTaskStatusCommon").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/show").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/jobrequest").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/project-task-distribution").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/get-all-tasks-by-user").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/show-all-tasks").authenticated()
                .and().authorizeRequests().antMatchers("/projecttask/update-task-status").authenticated()
                .and().authorizeRequests().antMatchers("/get-all-employee-by-user-accessed-company").authenticated()
                .and().authorizeRequests().antMatchers("/get-employee-by-userId").authenticated()
                .and().authorizeRequests().antMatchers("/get-company-by-userid").authenticated()
                .and().authorizeRequests().antMatchers("/get-all-currency").authenticated()
               /* .and().authorizeRequests().antMatchers("/get-all-tasks-by-projectId").authenticated()*/
                .and().authorizeRequests().antMatchers("/projecttask/get-all-tasks-by-projectId").authenticated()
                .and().authorizeRequests().antMatchers("/get-project-task-status-by-projectId").authenticated()
                .and().authorizeRequests().antMatchers("/save-job-request").authenticated()
                .and().authorizeRequests().antMatchers("/save-project-task-comments").authenticated()
                .and().authorizeRequests().antMatchers("/save-project").authenticated()
                .and().authorizeRequests().antMatchers("/get-all-projects").authenticated()
                .and().authorizeRequests().antMatchers("/saveUser").permitAll()
                .and().formLogin().defaultSuccessUrl("/home").loginPage("/login").permitAll()
                .and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login");

        http.exceptionHandling().accessDeniedPage("/403");
    }

/*    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("khan").password("{noop}123456").roles("USER");
    }

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("coming here");
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select username,password,enabled from users where username=?")
                .authoritiesByUsernameQuery("select username,name as role from role, users where role.fkUserId = users.id and username=?").passwordEncoder(new BCryptPasswordEncoder());
    } */

    @Bean
    public PasswordEncoder passwordEncoder(){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        return passwordEncoder;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/*.css");
        web.ignoring().antMatchers("/*.js");
    }
}
