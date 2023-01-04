<%@page import="com.crudjspjava.bean.Usuario, com.crudjspjava.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
	int i = UsuarioDao.deletarUsuario(u);

	if(i>0){
		response.sendRedirect("viewusuarios.jsp");
	}

%>