package com.igfoo.examples.assets;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

public class UserAccount
  implements Serializable, Cloneable {

  private int userId;
  private String name;
  private String email;
  private String password;
  private String cpassword;
  private String hashValue;

  public UserAccount() {

  }

  public int getUserId() {
    return userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = StringUtils.trim(StringUtils.lowerCase(email));
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getCpassword() {
    return cpassword;
  }

  public void setCpassword(String cpassword) {
    this.cpassword = cpassword;
  }

  public String getHashValue() {
    return hashValue;
  }

  public void setHashValue(String hashValue) {
    this.hashValue = hashValue;
  }

  public Object clone()
    throws CloneNotSupportedException {
    return super.clone();
  }

  public String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

  public boolean equals(Object obj) {
    return EqualsBuilder.reflectionEquals(this, obj);
  }

  public int hashCode() {
    return HashCodeBuilder.reflectionHashCode(this);
  }
}
