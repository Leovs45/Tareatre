<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePublicadorTroesmaProxyid" scope="session" class="publicadores.PublicadorTroesmaProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePublicadorTroesmaProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePublicadorTroesmaProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePublicadorTroesmaProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.PublicadorTroesma getPublicadorTroesma10mtemp = samplePublicadorTroesmaProxyid.getPublicadorTroesma();
if(getPublicadorTroesma10mtemp == null){
%>
<%=getPublicadorTroesma10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg018");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        boolean existeActividad15mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_1idTemp);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;
case 20:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg041");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.DtActividad getDtActividad20mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_2idTemp);
if(getDtActividad20mtemp == null){
%>
<%=getDtActividad20mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
java.util.Calendar typefechaRegistro23 = getDtActividad20mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro23 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro23 = typefechaRegistro23.getTime();
        String tempResultfechaRegistro23 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro23.format(datefechaRegistro23));
        %>
        <%= tempResultfechaRegistro23 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
java.lang.String typedescripcion25 = getDtActividad20mtemp.getDescripcion();
        String tempResultdescripcion25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion25));
        %>
        <%= tempResultdescripcion25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad20mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion29 = tebece0.getDescripcion();
        String tempResultdescripcion29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion29));
        %>
        <%= tempResultdescripcion29 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad20mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl31 = tebece0.getUrl();
        String tempResulturl31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl31));
        %>
        <%= tempResulturl31 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad20mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre33 = tebece0.getNombre();
        String tempResultnombre33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre33));
        %>
        <%= tempResultnombre33 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
%>
<%=getDtActividad20mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
%>
<%=getDtActividad20mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad20mtemp != null){
java.lang.String typenombre39 = getDtActividad20mtemp.getNombre();
        String tempResultnombre39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre39));
        %>
        <%= tempResultnombre39 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 43:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg046");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        boolean esSocio43mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_3idTemp);
        String tempResultreturnp44 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio43mtemp));
        %>
        <%= tempResultreturnp44 %>
        <%
break;
case 48:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg051");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        publicadores.DtSocio getDtSocio48mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_4idTemp);
if(getDtSocio48mtemp == null){
%>
<%=getDtSocio48mtemp %>
<%
}else{
        if(getDtSocio48mtemp!= null){
        String tempreturnp49 = getDtSocio48mtemp.toString();
        %>
        <%=tempreturnp49%>
        <%
        }}
break;
case 53:
        gotMethod = true;
        String arg0_5id=  request.getParameter("arg070");
            java.lang.String arg0_5idTemp = null;
        if(!arg0_5id.equals("")){
         arg0_5idTemp  = arg0_5id;
        }
        publicadores.DtProfesor getDtProfesor53mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_5idTemp);
if(getDtProfesor53mtemp == null){
%>
<%=getDtProfesor53mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor53mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion58 = tebece0.getDescripcion();
        String tempResultdescripcion58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion58));
        %>
        <%= tempResultdescripcion58 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor53mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl60 = tebece0.getUrl();
        String tempResulturl60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl60));
        %>
        <%= tempResulturl60 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor53mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre62 = tebece0.getNombre();
        String tempResultnombre62 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre62));
        %>
        <%= tempResultnombre62 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
java.lang.String typedescripcionGeneral64 = getDtProfesor53mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral64));
        %>
        <%= tempResultdescripcionGeneral64 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
java.lang.String typesitioWeb66 = getDtProfesor53mtemp.getSitioWeb();
        String tempResultsitioWeb66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb66));
        %>
        <%= tempResultsitioWeb66 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor53mtemp != null){
java.lang.String typebiografia68 = getDtProfesor53mtemp.getBiografia();
        String tempResultbiografia68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia68));
        %>
        <%= tempResultbiografia68 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 72:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg075");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        boolean existeUsuario72mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_6idTemp);
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
break;
case 77:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg080");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        String arg1_8id=  request.getParameter("arg182");
            java.lang.String arg1_8idTemp = null;
        if(!arg1_8id.equals("")){
         arg1_8idTemp  = arg1_8id;
        }
        boolean esContrasena77mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_7idTemp,arg1_8idTemp);
        String tempResultreturnp78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena77mtemp));
        %>
        <%= tempResultreturnp78 %>
        <%
break;
case 84:
        gotMethod = true;
        publicadores.DtActividad[] getRankingActividades84mtemp = samplePublicadorTroesmaProxyid.getRankingActividades();
if(getRankingActividades84mtemp == null){
%>
<%=getRankingActividades84mtemp %>
<%
}else{
        String tempreturnp85 = null;
        if(getRankingActividades84mtemp != null){
        java.util.List listreturnp85= java.util.Arrays.asList(getRankingActividades84mtemp);
        tempreturnp85 = listreturnp85.toString();
        }
        %>
        <%=tempreturnp85%>
        <%
}
break;
case 87:
        gotMethod = true;
        String arg0_9id=  request.getParameter("arg090");
            java.lang.String arg0_9idTemp = null;
        if(!arg0_9id.equals("")){
         arg0_9idTemp  = arg0_9id;
        }
        String arg1_10id=  request.getParameter("arg192");
            java.lang.String arg1_10idTemp = null;
        if(!arg1_10id.equals("")){
         arg1_10idTemp  = arg1_10id;
        }
        samplePublicadorTroesmaProxyid.modificarNombre(arg0_9idTemp,arg1_10idTemp);
break;
case 94:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg097");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        String arg1_12id=  request.getParameter("arg199");
            java.lang.String arg1_12idTemp = null;
        if(!arg1_12id.equals("")){
         arg1_12idTemp  = arg1_12id;
        }
        samplePublicadorTroesmaProxyid.modificarApellido(arg0_11idTemp,arg1_12idTemp);
break;
case 101:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0104");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        String arg1_14id=  request.getParameter("arg1106");
            java.lang.String arg1_14idTemp = null;
        if(!arg1_14id.equals("")){
         arg1_14idTemp  = arg1_14id;
        }
        samplePublicadorTroesmaProxyid.modificarFechaNacimiento(arg0_13idTemp,arg1_14idTemp);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>