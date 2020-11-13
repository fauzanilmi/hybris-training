<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>

<spring:htmlEscape defaultHtmlEscape="true" />

<template:page pageTitle="${pageTitle}">

    <c:url value="/" var="homePageUrl" />

    <cms:pageSlot position="MiddleContent" var="comp" element="div" class="errorNotFoundPageMiddle">
        <cms:component component="${comp}" element="div" class="errorNotFoundPageMiddle-component" />
    </cms:pageSlot>
    <div class="container">
        <div class="row">
            <c:forEach items="${productListData}" var="productData" varStatus="loop">
                <div class="col-md-4">
                    <div class="product-card">
                        <div class="image-product">
                            <product:productPrimaryImage product="${product}" format="product"/>
                        </div>
                        <h3><c:out value="${productData.name}"/></h3>
                        <p >sku: <c:out value="${productData.sku}"/></p>
                        <p>material: <c:out value="${productData.material}"/></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <%--
        <div class="error-page">
            <a class="btn btn-default js-shopping-button" href="${fn:escapeXml(homePageUrl)}">
                <spring:theme text="Continue Shopping" code="general.continue.shopping"/>
            </a>
        </div>
    --%>

</template:page>