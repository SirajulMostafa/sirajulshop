<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
        <%
            session.removeAttribute("loginUser");
       
        %>
 
       <c:redirect url="index.jsp" >
              <c:param name="errMsg" value="successfully loged out......" />
      </c:redirect>

