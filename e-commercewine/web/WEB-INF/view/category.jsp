<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%--<sql:query var="categories" dataSource="jdbc/winedrinks">
    SELECT * FROM category
</sql:query>
    
<sql:query var="selectedCategory" dataSource="jdbc/winedrinks">
    SELECT name FROM category WHERE id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
<sql:query var="categoryProducts" dataSource="jdbc/winedrinks">
    SELECT * FROM product WHERE category_id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>--%>
            
    <div id="categoryLeftColumn">
              
    <c:forEach var="category" items="${categories}">

        <c:choose>
            <c:when test="${category.id == pageContext.request.queryString}">
                <div class="categoryButton" id="selectedCategory">
                    <span class="categoryText">
                        ${category.name}
                    </span>
                </div>
            </c:when>
            <c:otherwise>
                <a href="category?${category.id}" class="categoryButton">
                    <div class="categoryText">
                        ${category.name}
                    </div>
                </a>
            </c:otherwise>
        </c:choose>

    </c:forEach>

            </div>

            <div id="categoryRightColumn">
               <p id="categoryTitle">
    <span style="background-color: #f5eabe; padding: 7px;">${selectedCategory.name}</span>
</p>

                <table id="productTable">
                    <c:forEach var="product" items="${categoryProducts}" varStatus="iter">

        <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
            <td>
                <img src="${initParam.productImagePath}${product.name}.png"
                    alt="${product.name}">
            </td>
            <td>
                ${product.name}
                <br>
                <span class="smallText">${product.description}</span>
            </td>
            <td>
                &naturals; ${product.price} / unit
            </td>
            <td>
                <form action="addToCart" method="post">
                    <input type="hidden"
                           name="productId"
                           value="${product.id}">
                    <input type="submit"
                           value="add to cart">
                </form>
            </td>
        </tr>

    </c:forEach>
                </table>
            </div>

           