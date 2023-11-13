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
        publicadores.DtActividad[] getRankingActividades15mtemp = samplePublicadorTroesmaProxyid.getRankingActividades();
if(getRankingActividades15mtemp == null){
%>
<%=getRankingActividades15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getRankingActividades15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getRankingActividades15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg021");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        boolean existeActividad18mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_1idTemp);
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
break;
case 23:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg026");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.DtActividad getDtActividad23mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_2idTemp);
if(getDtActividad23mtemp == null){
%>
<%=getDtActividad23mtemp %>
<%
}else{
        if(getDtActividad23mtemp!= null){
        String tempreturnp24 = getDtActividad23mtemp.toString();
        %>
        <%=tempreturnp24%>
        <%
        }}
break;
case 28:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg031");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        boolean esSocio28mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_3idTemp);
        String tempResultreturnp29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio28mtemp));
        %>
        <%= tempResultreturnp29 %>
        <%
break;
case 33:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg036");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        String arg1_5id=  request.getParameter("arg138");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        boolean esContrasena33mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_4idTemp,arg1_5idTemp);
        String tempResultreturnp34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena33mtemp));
        %>
        <%= tempResultreturnp34 %>
        <%
break;
case 40:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg043");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        publicadores.DtSocio getDtSocio40mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_6idTemp);
if(getDtSocio40mtemp == null){
%>
<%=getDtSocio40mtemp %>
<%
}else{
        if(getDtSocio40mtemp!= null){
        String tempreturnp41 = getDtSocio40mtemp.toString();
        %>
        <%=tempreturnp41%>
        <%
        }}
break;
case 45:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg048");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        publicadores.DtProfesor getDtProfesor45mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_7idTemp);
if(getDtProfesor45mtemp == null){
%>
<%=getDtProfesor45mtemp %>
<%
}else{
        if(getDtProfesor45mtemp!= null){
        String tempreturnp46 = getDtProfesor45mtemp.toString();
        %>
        <%=tempreturnp46%>
        <%
        }}
break;
case 50:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg053");
            java.lang.String arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
         arg0_8idTemp  = arg0_8id;
        }
        boolean existeUsuario50mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_8idTemp);
        String tempResultreturnp51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario50mtemp));
        %>
        <%= tempResultreturnp51 %>
        <%
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