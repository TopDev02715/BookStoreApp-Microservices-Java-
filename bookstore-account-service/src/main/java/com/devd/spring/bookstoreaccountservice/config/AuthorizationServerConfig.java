package com.devd.spring.bookstoreaccountservice.config;

import static org.apache.commons.lang.CharEncoding.UTF_8;

import com.devd.spring.bookstoreaccountservice.service.AppUserDetailsService;
import java.io.IOException;
import java.security.KeyPair;
import javax.sql.DataSource;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;

/**
 * @author: Devaraj Reddy, Date : 2019-05-17
 */
@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {

  @Autowired
  DataSource dataSource;

  @Autowired
  AppUserDetailsService appUserDetailsService;

  @Autowired
  private AuthenticationManager authenticationManager;

  @Autowired
  private PasswordEncoder passwordEncoder;

  @Value("${security.jwt.key-store}")
  private Resource keyStore;

  @Value("${security.jwt.key-store-password}")
  private String keyStorePassword;

  @Value("${security.jwt.key-pair-alias}")
  private String keyPairAlias;

  @Value("${security.jwt.key-pair-password}")
  private String keyPairPassword;

  @Value("${security.jwt.public-key}")
  private Resource publicKey;

  @Override
  public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
    clients.jdbc(dataSource);
  }

  @Override
  public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
    endpoints.authenticationManager(this.authenticationManager)
        .userDetailsService(appUserDetailsService)
        .accessTokenConverter(jwtAccessTokenConverter())
        .tokenStore(tokenStore());
  }

  @Bean
  @Primary
  public TokenStore tokenStore() {
    return new JwtTokenStore(jwtAccessTokenConverter());
  }

  @Bean
  @Primary
  public DefaultTokenServices tokenServices(final TokenStore tokenStore) {
    DefaultTokenServices tokenServices = new DefaultTokenServices();
    tokenServices.setSupportRefreshToken(true);
    tokenServices.setTokenStore(tokenStore);
    return tokenServices;
  }

  @Bean
  @Primary
  public JwtAccessTokenConverter jwtAccessTokenConverter() {
    JwtAccessTokenConverter jwtAccessTokenConverter = new JwtAccessTokenConverter();
    KeyStoreKeyFactory keyStoreKeyFactory = keyStoreKeyFactory();
    KeyPair keyPair = keyPair(keyStoreKeyFactory);
    jwtAccessTokenConverter.setKeyPair(keyPair);
    jwtAccessTokenConverter.setVerifierKey(getPublicKeyAsString());
    return jwtAccessTokenConverter;
  }

  @Override
  public void configure(final AuthorizationServerSecurityConfigurer oauthServer) {
    oauthServer.passwordEncoder(this.passwordEncoder).tokenKeyAccess("permitAll()")
        .checkTokenAccess("isAuthenticated()");
  }

  private KeyPair keyPair(KeyStoreKeyFactory keyStoreKeyFactory) {
    return keyStoreKeyFactory.getKeyPair(keyPairAlias, keyPairPassword
        .toCharArray());
  }

  private KeyStoreKeyFactory keyStoreKeyFactory() {
    return new KeyStoreKeyFactory(keyStore, keyStorePassword.toCharArray());
  }

  private String getPublicKeyAsString() {
    try {
      return IOUtils.toString(publicKey.getInputStream(), UTF_8);
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }
}
