<%@page import="com.crudjspjava.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	int i = UsuarioDao.inserirUsuario(u);
	if(i>0){
		response.sendRedirect("addusuario-sucesso.jsp");
	}else{
		response.sendRedirect("addusuario-falha.jsp");
	}
%>