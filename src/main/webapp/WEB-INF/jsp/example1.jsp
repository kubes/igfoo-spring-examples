<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="content">

  <form:form commandName="userAccount">  
  
    <p><spring:message code="forms.required.fields" /></p>
    
    <h1 class="form-title"><spring:message code="example1.legend" /></h1>
    
    <form:errors htmlEscape="false" cssClass="form-error" element="div" />
    
    <div class="form-section">
      
      
      <div class="form-info">
        <h4><spring:message code="example1.info.title" /></h4>
        <spring:message code="example1.info.text" />
      </div>
      
      <div class="hform-field">        
        <label for="name" class="required">
          <span class="dot">*</span><spring:message code="example1.fullname.label" />
        </label>        
        <form:input path="name" cssClass="wide" maxlength="100" /> 
        <span class="field-info"><spring:message code="example1.fullname.extra" /></span>     
        <form:errors path="name" cssClass="field-error" />             
      </div>    
       
      <div class="hform-field">        
        <label for="email" class="required">
          <span class="dot">*</span><spring:message code="example1.email.label" />
        </label>        
        <form:input path="email" cssClass="very-wide" maxlength="100" />
        <span class="field-info"><spring:message code="example1.email.extra" /></span>  
        <form:errors path="email" cssClass="field-error" />             
      </div>
      
      <div class="hform-field">        
        <label for="password" class="required">
          <span class="dot">*</span><spring:message code="example1.password.label" />
        </label>
        <form:password path="password" cssClass="normal" maxlength="100" showPassword="true" />
        <span class="field-info"><spring:message code="example1.password.extra" /></span>
        <form:errors path="password" cssClass="field-error" />
      </div>
      
      <div class="hform-field">        
        <label for="cpassword" class="required">
          <span class="dot">*</span><spring:message code="example1.cpassword.label" />
        </label>
        <form:password path="cpassword" cssClass="normal" maxlength="100" showPassword="true" />
        <span class="field-info"><spring:message code="example1.cpassword.extra" /></span>
        <form:errors path="cpassword" cssClass="field-error" />
      </div>          

    </div>
          
    <div class="form-aligned buttons-section">
      <button type="submit" class="button blue" name="_submit"><spring:message code="example1.button.signup" /></button>
      <span class="spaced-text">Or</span>
      <a href="/index.html" class="negative"><spring:message code="forms.buttons.cancel" /></a>       
    </div>
    
    <div class="form-aligned links-section">
      <div class="stacked"><a href="#"><spring:message code="example1.links.recover" /></a></div>
      <div class="stacked"><a href="#"><spring:message code="example1.links.existing" /></a></div>
    </div>

  </form:form>
</div>