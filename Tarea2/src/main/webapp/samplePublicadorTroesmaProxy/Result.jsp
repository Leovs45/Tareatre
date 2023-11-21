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
        java.lang.String[] obtenerSociosDeUnaClase18mtemp = samplePublicadorTroesmaProxyid.obtenerSociosDeUnaClase(arg0_1idTemp);
if(obtenerSociosDeUnaClase18mtemp == null){
%>
<%=obtenerSociosDeUnaClase18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(obtenerSociosDeUnaClase18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(obtenerSociosDeUnaClase18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 23:
        gotMethod = true;
        String fechaRegistro_3id=  request.getParameter("fechaRegistro28");
            java.util.Calendar fechaRegistro_3idTemp = null;
        if(!fechaRegistro_3id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro28 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro28  = dateFormatfechaRegistro28.parse(fechaRegistro_3id);
         fechaRegistro_3idTemp = new java.util.GregorianCalendar();
        fechaRegistro_3idTemp.setTime(dateTempfechaRegistro28);
        }
        %>
        <jsp:useBean id="publicadores1DtSocio_4id" scope="session" class="publicadores.DtSocio" />
        <%
        String fechaRegistro_6id=  request.getParameter("fechaRegistro34");
            java.util.Calendar fechaRegistro_6idTemp = null;
        if(!fechaRegistro_6id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro34 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro34  = dateFormatfechaRegistro34.parse(fechaRegistro_6id);
         fechaRegistro_6idTemp = new java.util.GregorianCalendar();
        fechaRegistro_6idTemp.setTime(dateTempfechaRegistro34);
        }
        String url_7id=  request.getParameter("url36");
            java.lang.String url_7idTemp = null;
        if(!url_7id.equals("")){
         url_7idTemp  = url_7id;
        }
        String fechaClase_8id=  request.getParameter("fechaClase38");
            java.util.Calendar fechaClase_8idTemp = null;
        if(!fechaClase_8id.equals("")){
        java.text.DateFormat dateFormatfechaClase38 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase38  = dateFormatfechaClase38.parse(fechaClase_8id);
         fechaClase_8idTemp = new java.util.GregorianCalendar();
        fechaClase_8idTemp.setTime(dateTempfechaClase38);
        }
        String horaInicio_9id=  request.getParameter("horaInicio40");
            java.lang.String horaInicio_9idTemp = null;
        if(!horaInicio_9id.equals("")){
         horaInicio_9idTemp  = horaInicio_9id;
        }
        String nombre_10id=  request.getParameter("nombre42");
            java.lang.String nombre_10idTemp = null;
        if(!nombre_10id.equals("")){
         nombre_10idTemp  = nombre_10id;
        }
        String fechaRegistro_12id=  request.getParameter("fechaRegistro46");
            java.util.Calendar fechaRegistro_12idTemp = null;
        if(!fechaRegistro_12id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro46 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro46  = dateFormatfechaRegistro46.parse(fechaRegistro_12id);
         fechaRegistro_12idTemp = new java.util.GregorianCalendar();
        fechaRegistro_12idTemp.setTime(dateTempfechaRegistro46);
        }
        String descripcion_14id=  request.getParameter("descripcion50");
            java.lang.String descripcion_14idTemp = null;
        if(!descripcion_14id.equals("")){
         descripcion_14idTemp  = descripcion_14id;
        }
        String url_15id=  request.getParameter("url52");
            java.lang.String url_15idTemp = null;
        if(!url_15id.equals("")){
         url_15idTemp  = url_15id;
        }
        String nombre_16id=  request.getParameter("nombre54");
            java.lang.String nombre_16idTemp = null;
        if(!nombre_16id.equals("")){
         nombre_16idTemp  = nombre_16id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_13id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_13id.setDescripcion(descripcion_14idTemp);
        publicadores1InstitucionDeportiva_13id.setUrl(url_15idTemp);
        publicadores1InstitucionDeportiva_13id.setNombre(nombre_16idTemp);
        String descripcion_17id=  request.getParameter("descripcion56");
            java.lang.String descripcion_17idTemp = null;
        if(!descripcion_17id.equals("")){
         descripcion_17idTemp  = descripcion_17id;
        }
        String duracionMinutos_18id=  request.getParameter("duracionMinutos58");
        int duracionMinutos_18idTemp  = Integer.parseInt(duracionMinutos_18id);
        String nombre_19id=  request.getParameter("nombre60");
            java.lang.String nombre_19idTemp = null;
        if(!nombre_19id.equals("")){
         nombre_19idTemp  = nombre_19id;
        }
        String costo_20id=  request.getParameter("costo62");
        double costo_20idTemp  = Double.parseDouble(costo_20id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_11id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_11id.setFechaRegistro(fechaRegistro_12idTemp);
        publicadores1ActividadDeportiva_11id.setInstitucion(publicadores1InstitucionDeportiva_13id);
        publicadores1ActividadDeportiva_11id.setDescripcion(descripcion_17idTemp);
        publicadores1ActividadDeportiva_11id.setDuracionMinutos(duracionMinutos_18idTemp);
        publicadores1ActividadDeportiva_11id.setNombre(nombre_19idTemp);
        publicadores1ActividadDeportiva_11id.setCosto(costo_20idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_5id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_5id.setFechaRegistro(fechaRegistro_6idTemp);
        publicadores1DtClase_5id.setUrl(url_7idTemp);
        publicadores1DtClase_5id.setFechaClase(fechaClase_8idTemp);
        publicadores1DtClase_5id.setHoraInicio(horaInicio_9idTemp);
        publicadores1DtClase_5id.setNombre(nombre_10idTemp);
        publicadores1DtClase_5id.setActividad(publicadores1ActividadDeportiva_11id);
        %>
        <jsp:useBean id="publicadores1DtRegistro_2id" scope="session" class="publicadores.DtRegistro" />
        <%
        publicadores1DtRegistro_2id.setFechaRegistro(fechaRegistro_3idTemp);
        publicadores1DtRegistro_2id.setSocio(publicadores1DtSocio_4id);
        publicadores1DtRegistro_2id.setClase(publicadores1DtClase_5id);
        samplePublicadorTroesmaProxyid.paraObtenerDtRegistro(publicadores1DtRegistro_2id);
break;
case 64:
        gotMethod = true;
        String fechaRegistro_22id=  request.getParameter("fechaRegistro69");
            java.util.Calendar fechaRegistro_22idTemp = null;
        if(!fechaRegistro_22id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro69 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro69  = dateFormatfechaRegistro69.parse(fechaRegistro_22id);
         fechaRegistro_22idTemp = new java.util.GregorianCalendar();
        fechaRegistro_22idTemp.setTime(dateTempfechaRegistro69);
        }
        String url_23id=  request.getParameter("url71");
            java.lang.String url_23idTemp = null;
        if(!url_23id.equals("")){
         url_23idTemp  = url_23id;
        }
        String fechaClase_24id=  request.getParameter("fechaClase73");
            java.util.Calendar fechaClase_24idTemp = null;
        if(!fechaClase_24id.equals("")){
        java.text.DateFormat dateFormatfechaClase73 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase73  = dateFormatfechaClase73.parse(fechaClase_24id);
         fechaClase_24idTemp = new java.util.GregorianCalendar();
        fechaClase_24idTemp.setTime(dateTempfechaClase73);
        }
        String horaInicio_25id=  request.getParameter("horaInicio75");
            java.lang.String horaInicio_25idTemp = null;
        if(!horaInicio_25id.equals("")){
         horaInicio_25idTemp  = horaInicio_25id;
        }
        String nombre_26id=  request.getParameter("nombre77");
            java.lang.String nombre_26idTemp = null;
        if(!nombre_26id.equals("")){
         nombre_26idTemp  = nombre_26id;
        }
        String fechaRegistro_28id=  request.getParameter("fechaRegistro81");
            java.util.Calendar fechaRegistro_28idTemp = null;
        if(!fechaRegistro_28id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro81 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro81  = dateFormatfechaRegistro81.parse(fechaRegistro_28id);
         fechaRegistro_28idTemp = new java.util.GregorianCalendar();
        fechaRegistro_28idTemp.setTime(dateTempfechaRegistro81);
        }
        String descripcion_30id=  request.getParameter("descripcion85");
            java.lang.String descripcion_30idTemp = null;
        if(!descripcion_30id.equals("")){
         descripcion_30idTemp  = descripcion_30id;
        }
        String url_31id=  request.getParameter("url87");
            java.lang.String url_31idTemp = null;
        if(!url_31id.equals("")){
         url_31idTemp  = url_31id;
        }
        String nombre_32id=  request.getParameter("nombre89");
            java.lang.String nombre_32idTemp = null;
        if(!nombre_32id.equals("")){
         nombre_32idTemp  = nombre_32id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_29id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_29id.setDescripcion(descripcion_30idTemp);
        publicadores1InstitucionDeportiva_29id.setUrl(url_31idTemp);
        publicadores1InstitucionDeportiva_29id.setNombre(nombre_32idTemp);
        String descripcion_33id=  request.getParameter("descripcion91");
            java.lang.String descripcion_33idTemp = null;
        if(!descripcion_33id.equals("")){
         descripcion_33idTemp  = descripcion_33id;
        }
        String duracionMinutos_34id=  request.getParameter("duracionMinutos93");
        int duracionMinutos_34idTemp  = Integer.parseInt(duracionMinutos_34id);
        String nombre_35id=  request.getParameter("nombre95");
            java.lang.String nombre_35idTemp = null;
        if(!nombre_35id.equals("")){
         nombre_35idTemp  = nombre_35id;
        }
        String costo_36id=  request.getParameter("costo97");
        double costo_36idTemp  = Double.parseDouble(costo_36id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_27id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_27id.setFechaRegistro(fechaRegistro_28idTemp);
        publicadores1ActividadDeportiva_27id.setInstitucion(publicadores1InstitucionDeportiva_29id);
        publicadores1ActividadDeportiva_27id.setDescripcion(descripcion_33idTemp);
        publicadores1ActividadDeportiva_27id.setDuracionMinutos(duracionMinutos_34idTemp);
        publicadores1ActividadDeportiva_27id.setNombre(nombre_35idTemp);
        publicadores1ActividadDeportiva_27id.setCosto(costo_36idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_21id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_21id.setFechaRegistro(fechaRegistro_22idTemp);
        publicadores1DtClase_21id.setUrl(url_23idTemp);
        publicadores1DtClase_21id.setFechaClase(fechaClase_24idTemp);
        publicadores1DtClase_21id.setHoraInicio(horaInicio_25idTemp);
        publicadores1DtClase_21id.setNombre(nombre_26idTemp);
        publicadores1DtClase_21id.setActividad(publicadores1ActividadDeportiva_27id);
        samplePublicadorTroesmaProxyid.paraObtenerDtClase(publicadores1DtClase_21id);
break;
case 99:
        gotMethod = true;
        String descripcion_38id=  request.getParameter("descripcion104");
            java.lang.String descripcion_38idTemp = null;
        if(!descripcion_38id.equals("")){
         descripcion_38idTemp  = descripcion_38id;
        }
        String url_39id=  request.getParameter("url106");
            java.lang.String url_39idTemp = null;
        if(!url_39id.equals("")){
         url_39idTemp  = url_39id;
        }
        String nombre_40id=  request.getParameter("nombre108");
            java.lang.String nombre_40idTemp = null;
        if(!nombre_40id.equals("")){
         nombre_40idTemp  = nombre_40id;
        }
        %>
        <jsp:useBean id="publicadores1DtInstitucion_37id" scope="session" class="publicadores.DtInstitucion" />
        <%
        publicadores1DtInstitucion_37id.setDescripcion(descripcion_38idTemp);
        publicadores1DtInstitucion_37id.setUrl(url_39idTemp);
        publicadores1DtInstitucion_37id.setNombre(nombre_40idTemp);
        samplePublicadorTroesmaProxyid.paraObtenerDtInstitucion(publicadores1DtInstitucion_37id);
break;
case 110:
        gotMethod = true;
        String arg0_41id=  request.getParameter("arg0113");
            java.lang.String arg0_41idTemp = null;
        if(!arg0_41id.equals("")){
         arg0_41idTemp  = arg0_41id;
        }
        String arg1_42id=  request.getParameter("arg1115");
            java.lang.String arg1_42idTemp = null;
        if(!arg1_42id.equals("")){
         arg1_42idTemp  = arg1_42id;
        }
        boolean existeActividadEnUnaInstitucion110mtemp = samplePublicadorTroesmaProxyid.existeActividadEnUnaInstitucion(arg0_41idTemp,arg1_42idTemp);
        String tempResultreturnp111 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividadEnUnaInstitucion110mtemp));
        %>
        <%= tempResultreturnp111 %>
        <%
break;
case 117:
        gotMethod = true;
        String arg0_43id=  request.getParameter("arg0120");
            java.lang.String arg0_43idTemp = null;
        if(!arg0_43id.equals("")){
         arg0_43idTemp  = arg0_43id;
        }
        String arg1_44id=  request.getParameter("arg1122");
            java.lang.String arg1_44idTemp = null;
        if(!arg1_44id.equals("")){
         arg1_44idTemp  = arg1_44id;
        }
        String arg2_45id=  request.getParameter("arg2124");
            java.lang.String arg2_45idTemp = null;
        if(!arg2_45id.equals("")){
         arg2_45idTemp  = arg2_45id;
        }
        boolean existeClaseDeActividad117mtemp = samplePublicadorTroesmaProxyid.existeClaseDeActividad(arg0_43idTemp,arg1_44idTemp,arg2_45idTemp);
        String tempResultreturnp118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClaseDeActividad117mtemp));
        %>
        <%= tempResultreturnp118 %>
        <%
break;
case 126:
        gotMethod = true;
        String arg0_46id=  request.getParameter("arg0129");
            java.lang.String arg0_46idTemp = null;
        if(!arg0_46id.equals("")){
         arg0_46idTemp  = arg0_46id;
        }
        String arg1_47id=  request.getParameter("arg1131");
            java.lang.String arg1_47idTemp = null;
        if(!arg1_47id.equals("")){
         arg1_47idTemp  = arg1_47id;
        }
        samplePublicadorTroesmaProxyid.modificarApellido(arg0_46idTemp,arg1_47idTemp);
break;
case 133:
        gotMethod = true;
        String arg0_48id=  request.getParameter("arg0136");
            java.lang.String arg0_48idTemp = null;
        if(!arg0_48id.equals("")){
         arg0_48idTemp  = arg0_48id;
        }
        String arg1_49id=  request.getParameter("arg1138");
            java.lang.String arg1_49idTemp = null;
        if(!arg1_49id.equals("")){
         arg1_49idTemp  = arg1_49id;
        }
        samplePublicadorTroesmaProxyid.modificarFechaNacimiento(arg0_48idTemp,arg1_49idTemp);
break;
case 140:
        gotMethod = true;
        String arg0_50id=  request.getParameter("arg0157");
            java.lang.String arg0_50idTemp = null;
        if(!arg0_50id.equals("")){
         arg0_50idTemp  = arg0_50id;
        }
        publicadores.DtProfesor getDtProfesor140mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_50idTemp);
if(getDtProfesor140mtemp == null){
%>
<%=getDtProfesor140mtemp %>
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
if(getDtProfesor140mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor140mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion145 = tebece0.getDescripcion();
        String tempResultdescripcion145 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion145));
        %>
        <%= tempResultdescripcion145 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor140mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor140mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl147 = tebece0.getUrl();
        String tempResulturl147 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl147));
        %>
        <%= tempResulturl147 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor140mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor140mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre149 = tebece0.getNombre();
        String tempResultnombre149 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre149));
        %>
        <%= tempResultnombre149 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor140mtemp != null){
java.lang.String typedescripcionGeneral151 = getDtProfesor140mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral151 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral151));
        %>
        <%= tempResultdescripcionGeneral151 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor140mtemp != null){
java.lang.String typesitioWeb153 = getDtProfesor140mtemp.getSitioWeb();
        String tempResultsitioWeb153 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb153));
        %>
        <%= tempResultsitioWeb153 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor140mtemp != null){
java.lang.String typebiografia155 = getDtProfesor140mtemp.getBiografia();
        String tempResultbiografia155 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia155));
        %>
        <%= tempResultbiografia155 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 159:
        gotMethod = true;
        String arg0_51id=  request.getParameter("arg0192");
            java.lang.String arg0_51idTemp = null;
        if(!arg0_51id.equals("")){
         arg0_51idTemp  = arg0_51id;
        }
        publicadores.DtClase getDtClase159mtemp = samplePublicadorTroesmaProxyid.getDtClase(arg0_51idTemp);
if(getDtClase159mtemp == null){
%>
<%=getDtClase159mtemp %>
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
if(getDtClase159mtemp != null){
java.util.Calendar typefechaRegistro162 = getDtClase159mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro162 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro162 = typefechaRegistro162.getTime();
        String tempResultfechaRegistro162 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro162.format(datefechaRegistro162));
        %>
        <%= tempResultfechaRegistro162 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
java.lang.String typeurl164 = getDtClase159mtemp.getUrl();
        String tempResulturl164 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl164));
        %>
        <%= tempResulturl164 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaClase:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
java.util.Calendar typefechaClase166 = getDtClase159mtemp.getFechaClase();
        java.text.DateFormat dateFormatfechaClase166 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaClase166 = typefechaClase166.getTime();
        String tempResultfechaClase166 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaClase166.format(datefechaClase166));
        %>
        <%= tempResultfechaClase166 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
java.lang.String typehoraInicio168 = getDtClase159mtemp.getHoraInicio();
        String tempResulthoraInicio168 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typehoraInicio168));
        %>
        <%= tempResulthoraInicio168 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
java.lang.String typenombre170 = getDtClase159mtemp.getNombre();
        String tempResultnombre170 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre170));
        %>
        <%= tempResultnombre170 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">actividad:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
java.util.Calendar typefechaRegistro174 = tebece0.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro174 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro174 = typefechaRegistro174.getTime();
        String tempResultfechaRegistro174 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro174.format(datefechaRegistro174));
        %>
        <%= tempResultfechaRegistro174 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">institucion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typedescripcion178 = tebece1.getDescripcion();
        String tempResultdescripcion178 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion178));
        %>
        <%= tempResultdescripcion178 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typeurl180 = tebece1.getUrl();
        String tempResulturl180 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl180));
        %>
        <%= tempResulturl180 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
publicadores.InstitucionDeportiva tebece1=tebece0.getInstitucion();
if(tebece1 != null){
java.lang.String typenombre182 = tebece1.getNombre();
        String tempResultnombre182 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre182));
        %>
        <%= tempResultnombre182 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
java.lang.String typedescripcion184 = tebece0.getDescripcion();
        String tempResultdescripcion184 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion184));
        %>
        <%= tempResultdescripcion184 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getDuracionMinutos()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
java.lang.String typenombre188 = tebece0.getNombre();
        String tempResultnombre188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre188));
        %>
        <%= tempResultnombre188 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtClase159mtemp != null){
publicadores.ActividadDeportiva tebece0=getDtClase159mtemp.getActividad();
if(tebece0 != null){
%>
<%=tebece0.getCosto()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 194:
        gotMethod = true;
        String arg0_52id=  request.getParameter("arg0197");
            java.lang.String arg0_52idTemp = null;
        if(!arg0_52id.equals("")){
         arg0_52idTemp  = arg0_52id;
        }
        boolean esSocio194mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_52idTemp);
        String tempResultreturnp195 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio194mtemp));
        %>
        <%= tempResultreturnp195 %>
        <%
break;
case 199:
        gotMethod = true;
        String arg0_53id=  request.getParameter("arg0208");
            java.lang.String arg0_53idTemp = null;
        if(!arg0_53id.equals("")){
         arg0_53idTemp  = arg0_53id;
        }
        publicadores.DtInstitucion getDtInstitucion199mtemp = samplePublicadorTroesmaProxyid.getDtInstitucion(arg0_53idTemp);
if(getDtInstitucion199mtemp == null){
%>
<%=getDtInstitucion199mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtInstitucion199mtemp != null){
java.lang.String typedescripcion202 = getDtInstitucion199mtemp.getDescripcion();
        String tempResultdescripcion202 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion202));
        %>
        <%= tempResultdescripcion202 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtInstitucion199mtemp != null){
java.lang.String typeurl204 = getDtInstitucion199mtemp.getUrl();
        String tempResulturl204 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl204));
        %>
        <%= tempResulturl204 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtInstitucion199mtemp != null){
java.lang.String typenombre206 = getDtInstitucion199mtemp.getNombre();
        String tempResultnombre206 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre206));
        %>
        <%= tempResultnombre206 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 210:
        gotMethod = true;
        String arg0_54id=  request.getParameter("arg0213");
            java.lang.String arg0_54idTemp = null;
        if(!arg0_54id.equals("")){
         arg0_54idTemp  = arg0_54id;
        }
        String fechaRegistro_56id=  request.getParameter("fechaRegistro217");
            java.util.Calendar fechaRegistro_56idTemp = null;
        if(!fechaRegistro_56id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro217 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro217  = dateFormatfechaRegistro217.parse(fechaRegistro_56id);
         fechaRegistro_56idTemp = new java.util.GregorianCalendar();
        fechaRegistro_56idTemp.setTime(dateTempfechaRegistro217);
        }
        String descripcion_57id=  request.getParameter("descripcion219");
            java.lang.String descripcion_57idTemp = null;
        if(!descripcion_57id.equals("")){
         descripcion_57idTemp  = descripcion_57id;
        }
        String descripcion_59id=  request.getParameter("descripcion223");
            java.lang.String descripcion_59idTemp = null;
        if(!descripcion_59id.equals("")){
         descripcion_59idTemp  = descripcion_59id;
        }
        String url_60id=  request.getParameter("url225");
            java.lang.String url_60idTemp = null;
        if(!url_60id.equals("")){
         url_60idTemp  = url_60id;
        }
        String nombre_61id=  request.getParameter("nombre227");
            java.lang.String nombre_61idTemp = null;
        if(!nombre_61id.equals("")){
         nombre_61idTemp  = nombre_61id;
        }
        %>
        <jsp:useBean id="publicadores1DtInstitucion_58id" scope="session" class="publicadores.DtInstitucion" />
        <%
        publicadores1DtInstitucion_58id.setDescripcion(descripcion_59idTemp);
        publicadores1DtInstitucion_58id.setUrl(url_60idTemp);
        publicadores1DtInstitucion_58id.setNombre(nombre_61idTemp);
        String duracionMinutos_62id=  request.getParameter("duracionMinutos229");
        int duracionMinutos_62idTemp  = Integer.parseInt(duracionMinutos_62id);
        String costo_63id=  request.getParameter("costo231");
        double costo_63idTemp  = Double.parseDouble(costo_63id);
        String nombre_64id=  request.getParameter("nombre233");
            java.lang.String nombre_64idTemp = null;
        if(!nombre_64id.equals("")){
         nombre_64idTemp  = nombre_64id;
        }
        %>
        <jsp:useBean id="publicadores1DtActividad_55id" scope="session" class="publicadores.DtActividad" />
        <%
        publicadores1DtActividad_55id.setFechaRegistro(fechaRegistro_56idTemp);
        publicadores1DtActividad_55id.setDescripcion(descripcion_57idTemp);
        publicadores1DtActividad_55id.setInstitucion(publicadores1DtInstitucion_58id);
        publicadores1DtActividad_55id.setDuracionMinutos(duracionMinutos_62idTemp);
        publicadores1DtActividad_55id.setCosto(costo_63idTemp);
        publicadores1DtActividad_55id.setNombre(nombre_64idTemp);
        String arg2_65id=  request.getParameter("arg2235");
            java.util.Calendar arg2_65idTemp = null;
        if(!arg2_65id.equals("")){
        java.text.DateFormat dateFormatarg2235 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg2235  = dateFormatarg2235.parse(arg2_65id);
         arg2_65idTemp = new java.util.GregorianCalendar();
        arg2_65idTemp.setTime(dateTemparg2235);
        }
        String arg3_66id=  request.getParameter("arg3237");
            java.lang.String arg3_66idTemp = null;
        if(!arg3_66id.equals("")){
         arg3_66idTemp  = arg3_66id;
        }
        String arg4_67id=  request.getParameter("arg4239");
            java.lang.String arg4_67idTemp = null;
        if(!arg4_67id.equals("")){
         arg4_67idTemp  = arg4_67id;
        }
        String arg5_68id=  request.getParameter("arg5241");
            java.lang.String arg5_68idTemp = null;
        if(!arg5_68id.equals("")){
         arg5_68idTemp  = arg5_68id;
        }
        String arg6_69id=  request.getParameter("arg6243");
            java.util.Calendar arg6_69idTemp = null;
        if(!arg6_69id.equals("")){
        java.text.DateFormat dateFormatarg6243 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg6243  = dateFormatarg6243.parse(arg6_69id);
         arg6_69idTemp = new java.util.GregorianCalendar();
        arg6_69idTemp.setTime(dateTemparg6243);
        }
        samplePublicadorTroesmaProxyid.altaDictadoClase(arg0_54idTemp,publicadores1DtActividad_55id,arg2_65idTemp,arg3_66idTemp,arg4_67idTemp,arg5_68idTemp,arg6_69idTemp);
break;
case 245:
        gotMethod = true;
        String arg0_70id=  request.getParameter("arg0248");
            java.lang.String arg0_70idTemp = null;
        if(!arg0_70id.equals("")){
         arg0_70idTemp  = arg0_70id;
        }
        boolean existeActividad245mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_70idTemp);
        String tempResultreturnp246 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad245mtemp));
        %>
        <%= tempResultreturnp246 %>
        <%
break;
case 250:
        gotMethod = true;
        String arg0_71id=  request.getParameter("arg0253");
            java.lang.String arg0_71idTemp = null;
        if(!arg0_71id.equals("")){
         arg0_71idTemp  = arg0_71id;
        }
        publicadores.DtSocio getDtSocio250mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_71idTemp);
if(getDtSocio250mtemp == null){
%>
<%=getDtSocio250mtemp %>
<%
}else{
        if(getDtSocio250mtemp!= null){
        String tempreturnp251 = getDtSocio250mtemp.toString();
        %>
        <%=tempreturnp251%>
        <%
        }}
break;
case 255:
        gotMethod = true;
        String arg0_72id=  request.getParameter("arg0258");
            java.lang.String arg0_72idTemp = null;
        if(!arg0_72id.equals("")){
         arg0_72idTemp  = arg0_72id;
        }
        boolean existeUsuario255mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_72idTemp);
        String tempResultreturnp256 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario255mtemp));
        %>
        <%= tempResultreturnp256 %>
        <%
break;
case 260:
        gotMethod = true;
        String arg0_73id=  request.getParameter("arg0263");
            java.lang.String arg0_73idTemp = null;
        if(!arg0_73id.equals("")){
         arg0_73idTemp  = arg0_73id;
        }
        boolean existeClase260mtemp = samplePublicadorTroesmaProxyid.existeClase(arg0_73idTemp);
        String tempResultreturnp261 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClase260mtemp));
        %>
        <%= tempResultreturnp261 %>
        <%
break;
case 265:
        gotMethod = true;
        String arg0_74id=  request.getParameter("arg0268");
            java.lang.String arg0_74idTemp = null;
        if(!arg0_74id.equals("")){
         arg0_74idTemp  = arg0_74id;
        }
        String arg1_75id=  request.getParameter("arg1270");
            java.lang.String arg1_75idTemp = null;
        if(!arg1_75id.equals("")){
         arg1_75idTemp  = arg1_75id;
        }
        samplePublicadorTroesmaProxyid.modificarNombre(arg0_74idTemp,arg1_75idTemp);
break;
case 272:
        gotMethod = true;
        String arg0_76id=  request.getParameter("arg0275");
            java.lang.String arg0_76idTemp = null;
        if(!arg0_76id.equals("")){
         arg0_76idTemp  = arg0_76id;
        }
        String arg1_77id=  request.getParameter("arg1277");
            java.lang.String arg1_77idTemp = null;
        if(!arg1_77id.equals("")){
         arg1_77idTemp  = arg1_77id;
        }
        boolean esContrasena272mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_76idTemp,arg1_77idTemp);
        String tempResultreturnp273 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena272mtemp));
        %>
        <%= tempResultreturnp273 %>
        <%
break;
case 279:
        gotMethod = true;
        String arg0_78id=  request.getParameter("arg0300");
            java.lang.String arg0_78idTemp = null;
        if(!arg0_78id.equals("")){
         arg0_78idTemp  = arg0_78id;
        }
        publicadores.DtActividad getDtActividad279mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_78idTemp);
if(getDtActividad279mtemp == null){
%>
<%=getDtActividad279mtemp %>
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
if(getDtActividad279mtemp != null){
java.util.Calendar typefechaRegistro282 = getDtActividad279mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro282 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro282 = typefechaRegistro282.getTime();
        String tempResultfechaRegistro282 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro282.format(datefechaRegistro282));
        %>
        <%= tempResultfechaRegistro282 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
java.lang.String typedescripcion284 = getDtActividad279mtemp.getDescripcion();
        String tempResultdescripcion284 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion284));
        %>
        <%= tempResultdescripcion284 %>
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
if(getDtActividad279mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad279mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion288 = tebece0.getDescripcion();
        String tempResultdescripcion288 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion288));
        %>
        <%= tempResultdescripcion288 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad279mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl290 = tebece0.getUrl();
        String tempResulturl290 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl290));
        %>
        <%= tempResulturl290 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad279mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre292 = tebece0.getNombre();
        String tempResultnombre292 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre292));
        %>
        <%= tempResultnombre292 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
%>
<%=getDtActividad279mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
%>
<%=getDtActividad279mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad279mtemp != null){
java.lang.String typenombre298 = getDtActividad279mtemp.getNombre();
        String tempResultnombre298 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre298));
        %>
        <%= tempResultnombre298 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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