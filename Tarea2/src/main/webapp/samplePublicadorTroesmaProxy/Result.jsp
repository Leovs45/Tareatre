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
        String arg0_1id=  request.getParameter("arg032");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.DtProfesor getDtProfesor15mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_1idTemp);
if(getDtProfesor15mtemp == null){
%>
<%=getDtProfesor15mtemp %>
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
if(getDtProfesor15mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor15mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion20 = tebece0.getDescripcion();
        String tempResultdescripcion20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion20));
        %>
        <%= tempResultdescripcion20 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor15mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor15mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl22 = tebece0.getUrl();
        String tempResulturl22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl22));
        %>
        <%= tempResulturl22 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor15mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor15mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre24 = tebece0.getNombre();
        String tempResultnombre24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre24));
        %>
        <%= tempResultnombre24 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor15mtemp != null){
java.lang.String typedescripcionGeneral26 = getDtProfesor15mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral26));
        %>
        <%= tempResultdescripcionGeneral26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor15mtemp != null){
java.lang.String typesitioWeb28 = getDtProfesor15mtemp.getSitioWeb();
        String tempResultsitioWeb28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb28));
        %>
        <%= tempResultsitioWeb28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor15mtemp != null){
java.lang.String typebiografia30 = getDtProfesor15mtemp.getBiografia();
        String tempResultbiografia30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia30));
        %>
        <%= tempResultbiografia30 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 34:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg037");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        boolean esSocio34mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_2idTemp);
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
break;
case 39:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg042");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        boolean existeActividad39mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_3idTemp);
        String tempResultreturnp40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad39mtemp));
        %>
        <%= tempResultreturnp40 %>
        <%
break;
case 44:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg047");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        publicadores.DtSocio getDtSocio44mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_4idTemp);
if(getDtSocio44mtemp == null){
%>
<%=getDtSocio44mtemp %>
<%
}else{
        if(getDtSocio44mtemp!= null){
        String tempreturnp45 = getDtSocio44mtemp.toString();
        %>
        <%=tempreturnp45%>
        <%
        }}
break;
case 49:
        gotMethod = true;
        String arg0_5id=  request.getParameter("arg052");
            java.lang.String arg0_5idTemp = null;
        if(!arg0_5id.equals("")){
         arg0_5idTemp  = arg0_5id;
        }
        String arg1_6id=  request.getParameter("arg154");
            java.lang.String arg1_6idTemp = null;
        if(!arg1_6id.equals("")){
         arg1_6idTemp  = arg1_6id;
        }
        samplePublicadorTroesmaProxyid.modificarNombre(arg0_5idTemp,arg1_6idTemp);
break;
case 56:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg077");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        publicadores.DtActividad getDtActividad56mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_7idTemp);
if(getDtActividad56mtemp == null){
%>
<%=getDtActividad56mtemp %>
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
if(getDtActividad56mtemp != null){
java.util.Calendar typefechaRegistro59 = getDtActividad56mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro59 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro59 = typefechaRegistro59.getTime();
        String tempResultfechaRegistro59 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro59.format(datefechaRegistro59));
        %>
        <%= tempResultfechaRegistro59 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
java.lang.String typedescripcion61 = getDtActividad56mtemp.getDescripcion();
        String tempResultdescripcion61 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion61));
        %>
        <%= tempResultdescripcion61 %>
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
if(getDtActividad56mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad56mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion65 = tebece0.getDescripcion();
        String tempResultdescripcion65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion65));
        %>
        <%= tempResultdescripcion65 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad56mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl67 = tebece0.getUrl();
        String tempResulturl67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl67));
        %>
        <%= tempResulturl67 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtActividad56mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre69 = tebece0.getNombre();
        String tempResultnombre69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre69));
        %>
        <%= tempResultnombre69 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
%>
<%=getDtActividad56mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
%>
<%=getDtActividad56mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad56mtemp != null){
java.lang.String typenombre75 = getDtActividad56mtemp.getNombre();
        String tempResultnombre75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre75));
        %>
        <%= tempResultnombre75 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 79:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg082");
            java.lang.String arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
         arg0_8idTemp  = arg0_8id;
        }
        String arg1_9id=  request.getParameter("arg184");
            java.lang.String arg1_9idTemp = null;
        if(!arg1_9id.equals("")){
         arg1_9idTemp  = arg1_9id;
        }
        boolean esContrasena79mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_8idTemp,arg1_9idTemp);
        String tempResultreturnp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena79mtemp));
        %>
        <%= tempResultreturnp80 %>
        <%
break;
case 86:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg089");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        boolean existeUsuario86mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_10idTemp);
        String tempResultreturnp87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario86mtemp));
        %>
        <%= tempResultreturnp87 %>
        <%
break;
case 91:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg094");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        String arg1_12id=  request.getParameter("arg196");
            java.lang.String arg1_12idTemp = null;
        if(!arg1_12id.equals("")){
         arg1_12idTemp  = arg1_12id;
        }
        samplePublicadorTroesmaProxyid.modificarApellido(arg0_11idTemp,arg1_12idTemp);
break;
case 98:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg0101");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        String arg1_14id=  request.getParameter("arg1103");
            java.lang.String arg1_14idTemp = null;
        if(!arg1_14id.equals("")){
         arg1_14idTemp  = arg1_14id;
        }
        samplePublicadorTroesmaProxyid.modificarFechaNacimiento(arg0_13idTemp,arg1_14idTemp);
break;
case 105:
        gotMethod = true;
        String descripcion_17id=  request.getParameter("descripcion112");
            java.lang.String descripcion_17idTemp = null;
        if(!descripcion_17id.equals("")){
         descripcion_17idTemp  = descripcion_17id;
        }
        String url_18id=  request.getParameter("url114");
            java.lang.String url_18idTemp = null;
        if(!url_18id.equals("")){
         url_18idTemp  = url_18id;
        }
        String nombre_19id=  request.getParameter("nombre116");
            java.lang.String nombre_19idTemp = null;
        if(!nombre_19id.equals("")){
         nombre_19idTemp  = nombre_19id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_16id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_16id.setDescripcion(descripcion_17idTemp);
        publicadores1InstitucionDeportiva_16id.setUrl(url_18idTemp);
        publicadores1InstitucionDeportiva_16id.setNombre(nombre_19idTemp);
        String descripcionGeneral_20id=  request.getParameter("descripcionGeneral118");
            java.lang.String descripcionGeneral_20idTemp = null;
        if(!descripcionGeneral_20id.equals("")){
         descripcionGeneral_20idTemp  = descripcionGeneral_20id;
        }
        String sitioWeb_21id=  request.getParameter("sitioWeb120");
            java.lang.String sitioWeb_21idTemp = null;
        if(!sitioWeb_21id.equals("")){
         sitioWeb_21idTemp  = sitioWeb_21id;
        }
        String biografia_22id=  request.getParameter("biografia122");
            java.lang.String biografia_22idTemp = null;
        if(!biografia_22id.equals("")){
         biografia_22idTemp  = biografia_22id;
        }
        %>
        <jsp:useBean id="publicadores1DtProfesor_15id" scope="session" class="publicadores.DtProfesor" />
        <%
        publicadores1DtProfesor_15id.setInstitucion(publicadores1InstitucionDeportiva_16id);
        publicadores1DtProfesor_15id.setDescripcionGeneral(descripcionGeneral_20idTemp);
        publicadores1DtProfesor_15id.setSitioWeb(sitioWeb_21idTemp);
        publicadores1DtProfesor_15id.setBiografia(biografia_22idTemp);
        samplePublicadorTroesmaProxyid.getDtClases(publicadores1DtProfesor_15id);
break;
case 124:
        gotMethod = true;
        publicadores.DtActividad[] getRankingActividades124mtemp = samplePublicadorTroesmaProxyid.getRankingActividades();
if(getRankingActividades124mtemp == null){
%>
<%=getRankingActividades124mtemp %>
<%
}else{
        String tempreturnp125 = null;
        if(getRankingActividades124mtemp != null){
        java.util.List listreturnp125= java.util.Arrays.asList(getRankingActividades124mtemp);
        tempreturnp125 = listreturnp125.toString();
        }
        %>
        <%=tempreturnp125%>
        <%
}
break;
case 127:
        gotMethod = true;
        String fechaRegistro_24id=  request.getParameter("fechaRegistro132");
            java.util.Calendar fechaRegistro_24idTemp = null;
        if(!fechaRegistro_24id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro132 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro132  = dateFormatfechaRegistro132.parse(fechaRegistro_24id);
         fechaRegistro_24idTemp = new java.util.GregorianCalendar();
        fechaRegistro_24idTemp.setTime(dateTempfechaRegistro132);
        }
        %>
        <jsp:useBean id="publicadores1DtSocio_25id" scope="session" class="publicadores.DtSocio" />
        <%
        String fechaRegistro_27id=  request.getParameter("fechaRegistro138");
            java.util.Calendar fechaRegistro_27idTemp = null;
        if(!fechaRegistro_27id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro138 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro138  = dateFormatfechaRegistro138.parse(fechaRegistro_27id);
         fechaRegistro_27idTemp = new java.util.GregorianCalendar();
        fechaRegistro_27idTemp.setTime(dateTempfechaRegistro138);
        }
        String url_28id=  request.getParameter("url140");
            java.lang.String url_28idTemp = null;
        if(!url_28id.equals("")){
         url_28idTemp  = url_28id;
        }
        String fechaClase_29id=  request.getParameter("fechaClase142");
            java.util.Calendar fechaClase_29idTemp = null;
        if(!fechaClase_29id.equals("")){
        java.text.DateFormat dateFormatfechaClase142 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase142  = dateFormatfechaClase142.parse(fechaClase_29id);
         fechaClase_29idTemp = new java.util.GregorianCalendar();
        fechaClase_29idTemp.setTime(dateTempfechaClase142);
        }
        String horaInicio_30id=  request.getParameter("horaInicio144");
            java.lang.String horaInicio_30idTemp = null;
        if(!horaInicio_30id.equals("")){
         horaInicio_30idTemp  = horaInicio_30id;
        }
        String nombre_31id=  request.getParameter("nombre146");
            java.lang.String nombre_31idTemp = null;
        if(!nombre_31id.equals("")){
         nombre_31idTemp  = nombre_31id;
        }
        String fechaRegistro_33id=  request.getParameter("fechaRegistro150");
            java.util.Calendar fechaRegistro_33idTemp = null;
        if(!fechaRegistro_33id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro150 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro150  = dateFormatfechaRegistro150.parse(fechaRegistro_33id);
         fechaRegistro_33idTemp = new java.util.GregorianCalendar();
        fechaRegistro_33idTemp.setTime(dateTempfechaRegistro150);
        }
        String descripcion_35id=  request.getParameter("descripcion154");
            java.lang.String descripcion_35idTemp = null;
        if(!descripcion_35id.equals("")){
         descripcion_35idTemp  = descripcion_35id;
        }
        String url_36id=  request.getParameter("url156");
            java.lang.String url_36idTemp = null;
        if(!url_36id.equals("")){
         url_36idTemp  = url_36id;
        }
        String nombre_37id=  request.getParameter("nombre158");
            java.lang.String nombre_37idTemp = null;
        if(!nombre_37id.equals("")){
         nombre_37idTemp  = nombre_37id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_34id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_34id.setDescripcion(descripcion_35idTemp);
        publicadores1InstitucionDeportiva_34id.setUrl(url_36idTemp);
        publicadores1InstitucionDeportiva_34id.setNombre(nombre_37idTemp);
        String descripcion_38id=  request.getParameter("descripcion160");
            java.lang.String descripcion_38idTemp = null;
        if(!descripcion_38id.equals("")){
         descripcion_38idTemp  = descripcion_38id;
        }
        String duracionMinutos_39id=  request.getParameter("duracionMinutos162");
        int duracionMinutos_39idTemp  = Integer.parseInt(duracionMinutos_39id);
        String nombre_40id=  request.getParameter("nombre164");
            java.lang.String nombre_40idTemp = null;
        if(!nombre_40id.equals("")){
         nombre_40idTemp  = nombre_40id;
        }
        String costo_41id=  request.getParameter("costo166");
        double costo_41idTemp  = Double.parseDouble(costo_41id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_32id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_32id.setFechaRegistro(fechaRegistro_33idTemp);
        publicadores1ActividadDeportiva_32id.setInstitucion(publicadores1InstitucionDeportiva_34id);
        publicadores1ActividadDeportiva_32id.setDescripcion(descripcion_38idTemp);
        publicadores1ActividadDeportiva_32id.setDuracionMinutos(duracionMinutos_39idTemp);
        publicadores1ActividadDeportiva_32id.setNombre(nombre_40idTemp);
        publicadores1ActividadDeportiva_32id.setCosto(costo_41idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_26id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_26id.setFechaRegistro(fechaRegistro_27idTemp);
        publicadores1DtClase_26id.setUrl(url_28idTemp);
        publicadores1DtClase_26id.setFechaClase(fechaClase_29idTemp);
        publicadores1DtClase_26id.setHoraInicio(horaInicio_30idTemp);
        publicadores1DtClase_26id.setNombre(nombre_31idTemp);
        publicadores1DtClase_26id.setActividad(publicadores1ActividadDeportiva_32id);
        %>
        <jsp:useBean id="publicadores1DtRegistro_23id" scope="session" class="publicadores.DtRegistro" />
        <%
        publicadores1DtRegistro_23id.setFechaRegistro(fechaRegistro_24idTemp);
        publicadores1DtRegistro_23id.setSocio(publicadores1DtSocio_25id);
        publicadores1DtRegistro_23id.setClase(publicadores1DtClase_26id);
        samplePublicadorTroesmaProxyid.paraObtenerDtInfoClase2(publicadores1DtRegistro_23id);
break;
case 168:
        gotMethod = true;
        String fechaRegistro_43id=  request.getParameter("fechaRegistro173");
            java.util.Calendar fechaRegistro_43idTemp = null;
        if(!fechaRegistro_43id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro173 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro173  = dateFormatfechaRegistro173.parse(fechaRegistro_43id);
         fechaRegistro_43idTemp = new java.util.GregorianCalendar();
        fechaRegistro_43idTemp.setTime(dateTempfechaRegistro173);
        }
        String url_44id=  request.getParameter("url175");
            java.lang.String url_44idTemp = null;
        if(!url_44id.equals("")){
         url_44idTemp  = url_44id;
        }
        String fechaClase_45id=  request.getParameter("fechaClase177");
            java.util.Calendar fechaClase_45idTemp = null;
        if(!fechaClase_45id.equals("")){
        java.text.DateFormat dateFormatfechaClase177 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase177  = dateFormatfechaClase177.parse(fechaClase_45id);
         fechaClase_45idTemp = new java.util.GregorianCalendar();
        fechaClase_45idTemp.setTime(dateTempfechaClase177);
        }
        String horaInicio_46id=  request.getParameter("horaInicio179");
            java.lang.String horaInicio_46idTemp = null;
        if(!horaInicio_46id.equals("")){
         horaInicio_46idTemp  = horaInicio_46id;
        }
        String nombre_47id=  request.getParameter("nombre181");
            java.lang.String nombre_47idTemp = null;
        if(!nombre_47id.equals("")){
         nombre_47idTemp  = nombre_47id;
        }
        String fechaRegistro_49id=  request.getParameter("fechaRegistro185");
            java.util.Calendar fechaRegistro_49idTemp = null;
        if(!fechaRegistro_49id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro185 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro185  = dateFormatfechaRegistro185.parse(fechaRegistro_49id);
         fechaRegistro_49idTemp = new java.util.GregorianCalendar();
        fechaRegistro_49idTemp.setTime(dateTempfechaRegistro185);
        }
        String descripcion_51id=  request.getParameter("descripcion189");
            java.lang.String descripcion_51idTemp = null;
        if(!descripcion_51id.equals("")){
         descripcion_51idTemp  = descripcion_51id;
        }
        String url_52id=  request.getParameter("url191");
            java.lang.String url_52idTemp = null;
        if(!url_52id.equals("")){
         url_52idTemp  = url_52id;
        }
        String nombre_53id=  request.getParameter("nombre193");
            java.lang.String nombre_53idTemp = null;
        if(!nombre_53id.equals("")){
         nombre_53idTemp  = nombre_53id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_50id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_50id.setDescripcion(descripcion_51idTemp);
        publicadores1InstitucionDeportiva_50id.setUrl(url_52idTemp);
        publicadores1InstitucionDeportiva_50id.setNombre(nombre_53idTemp);
        String descripcion_54id=  request.getParameter("descripcion195");
            java.lang.String descripcion_54idTemp = null;
        if(!descripcion_54id.equals("")){
         descripcion_54idTemp  = descripcion_54id;
        }
        String duracionMinutos_55id=  request.getParameter("duracionMinutos197");
        int duracionMinutos_55idTemp  = Integer.parseInt(duracionMinutos_55id);
        String nombre_56id=  request.getParameter("nombre199");
            java.lang.String nombre_56idTemp = null;
        if(!nombre_56id.equals("")){
         nombre_56idTemp  = nombre_56id;
        }
        String costo_57id=  request.getParameter("costo201");
        double costo_57idTemp  = Double.parseDouble(costo_57id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_48id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_48id.setFechaRegistro(fechaRegistro_49idTemp);
        publicadores1ActividadDeportiva_48id.setInstitucion(publicadores1InstitucionDeportiva_50id);
        publicadores1ActividadDeportiva_48id.setDescripcion(descripcion_54idTemp);
        publicadores1ActividadDeportiva_48id.setDuracionMinutos(duracionMinutos_55idTemp);
        publicadores1ActividadDeportiva_48id.setNombre(nombre_56idTemp);
        publicadores1ActividadDeportiva_48id.setCosto(costo_57idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_42id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_42id.setFechaRegistro(fechaRegistro_43idTemp);
        publicadores1DtClase_42id.setUrl(url_44idTemp);
        publicadores1DtClase_42id.setFechaClase(fechaClase_45idTemp);
        publicadores1DtClase_42id.setHoraInicio(horaInicio_46idTemp);
        publicadores1DtClase_42id.setNombre(nombre_47idTemp);
        publicadores1DtClase_42id.setActividad(publicadores1ActividadDeportiva_48id);
        samplePublicadorTroesmaProxyid.paraObtenerDtInfoClase(publicadores1DtClase_42id);
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