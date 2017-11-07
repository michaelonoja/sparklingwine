<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%--<sql:query var="categories" dataSource="jdbc/winedrinks">
    SELECT * FROM category
</sql:query>--%>
            <div id="indexLeftColumn">
                <div id="welcomeText">
                   <p style ="font-size: larger">welcome to the online home of the sparkling wine shop.</p>
<p>Enjoy browsing and learning more about our unique home delivery
service bringing you fresh organic produce, red, white, sparkling and rose wine and 
other brand to your doorstep.</p>
    
                </div>
            </div>

            <div id="indexRightColumn">
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <a href="category?${category.id}">
                                 <span class="categoryLabel"></span>
                            <span class="categoryLabelText">${category.name}</span>

                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
                        </a>
                    </div>
                </c:forEach>
             
            </div>

           