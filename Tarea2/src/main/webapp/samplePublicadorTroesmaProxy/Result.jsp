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
        String arg1_2id=  request.getParameter("arg120");
            java.lang.String arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
         arg1_2idTemp  = arg1_2id;
        }
        samplePublicadorTroesmaProxyid.modificarFechaNacimiento(arg0_1idTemp,arg1_2idTemp);
break;
case 22:
        gotMethod = true;
        publicadores.DtActividad[] getRankingActividades22mtemp = samplePublicadorTroesmaProxyid.getRankingActividades();
if(getRankingActividades22mtemp == null){
%>
<%=getRankingActividades22mtemp %>
<%
}else{
        String tempreturnp23 = null;
        if(getRankingActividades22mtemp != null){
        java.util.List listreturnp23= java.util.Arrays.asList(getRankingActividades22mtemp);
        tempreturnp23 = listreturnp23.toString();
        }
        %>
        <%=tempreturnp23%>
        <%
}
break;
case 25:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg028");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        String arg1_4id=  request.getParameter("arg130");
            java.lang.String arg1_4idTemp = null;
        if(!arg1_4id.equals("")){
         arg1_4idTemp  = arg1_4id;
        }
        samplePublicadorTroesmaProxyid.modificarApellido(arg0_3idTemp,arg1_4idTemp);
break;
case 32:
        gotMethod = true;
        String descripcion_6id=  request.getParameter("descripcion37");
            java.lang.String descripcion_6idTemp = null;
        if(!descripcion_6id.equals("")){
         descripcion_6idTemp  = descripcion_6id;
        }
        String url_7id=  request.getParameter("url39");
            java.lang.String url_7idTemp = null;
        if(!url_7id.equals("")){
         url_7idTemp  = url_7id;
        }
        String nombre_8id=  request.getParameter("nombre41");
            java.lang.String nombre_8idTemp = null;
        if(!nombre_8id.equals("")){
         nombre_8idTemp  = nombre_8id;
        }
        %>
        <jsp:useBean id="publicadores1DtInstitucion_5id" scope="session" class="publicadores.DtInstitucion" />
        <%
        publicadores1DtInstitucion_5id.setDescripcion(descripcion_6idTemp);
        publicadores1DtInstitucion_5id.setUrl(url_7idTemp);
        publicadores1DtInstitucion_5id.setNombre(nombre_8idTemp);
        samplePublicadorTroesmaProxyid.paraObtenerDtInstitucion(publicadores1DtInstitucion_5id);
break;
case 43:
        gotMethod = true;
        String fechaRegistro_10id=  request.getParameter("fechaRegistro48");
            java.util.Calendar fechaRegistro_10idTemp = null;
        if(!fechaRegistro_10id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro48 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro48  = dateFormatfechaRegistro48.parse(fechaRegistro_10id);
         fechaRegistro_10idTemp = new java.util.GregorianCalendar();
        fechaRegistro_10idTemp.setTime(dateTempfechaRegistro48);
        }
        %>
        <jsp:useBean id="publicadores1DtSocio_11id" scope="session" class="publicadores.DtSocio" />
        <%
        String fechaRegistro_13id=  request.getParameter("fechaRegistro54");
            java.util.Calendar fechaRegistro_13idTemp = null;
        if(!fechaRegistro_13id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro54 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro54  = dateFormatfechaRegistro54.parse(fechaRegistro_13id);
         fechaRegistro_13idTemp = new java.util.GregorianCalendar();
        fechaRegistro_13idTemp.setTime(dateTempfechaRegistro54);
        }
        String url_14id=  request.getParameter("url56");
            java.lang.String url_14idTemp = null;
        if(!url_14id.equals("")){
         url_14idTemp  = url_14id;
        }
        String fechaClase_15id=  request.getParameter("fechaClase58");
            java.util.Calendar fechaClase_15idTemp = null;
        if(!fechaClase_15id.equals("")){
        java.text.DateFormat dateFormatfechaClase58 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase58  = dateFormatfechaClase58.parse(fechaClase_15id);
         fechaClase_15idTemp = new java.util.GregorianCalendar();
        fechaClase_15idTemp.setTime(dateTempfechaClase58);
        }
        String horaInicio_16id=  request.getParameter("horaInicio60");
            java.lang.String horaInicio_16idTemp = null;
        if(!horaInicio_16id.equals("")){
         horaInicio_16idTemp  = horaInicio_16id;
        }
        String nombre_17id=  request.getParameter("nombre62");
            java.lang.String nombre_17idTemp = null;
        if(!nombre_17id.equals("")){
         nombre_17idTemp  = nombre_17id;
        }
        String fechaRegistro_19id=  request.getParameter("fechaRegistro66");
            java.util.Calendar fechaRegistro_19idTemp = null;
        if(!fechaRegistro_19id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro66 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro66  = dateFormatfechaRegistro66.parse(fechaRegistro_19id);
         fechaRegistro_19idTemp = new java.util.GregorianCalendar();
        fechaRegistro_19idTemp.setTime(dateTempfechaRegistro66);
        }
        String descripcion_21id=  request.getParameter("descripcion70");
            java.lang.String descripcion_21idTemp = null;
        if(!descripcion_21id.equals("")){
         descripcion_21idTemp  = descripcion_21id;
        }
        String url_22id=  request.getParameter("url72");
            java.lang.String url_22idTemp = null;
        if(!url_22id.equals("")){
         url_22idTemp  = url_22id;
        }
        String nombre_23id=  request.getParameter("nombre74");
            java.lang.String nombre_23idTemp = null;
        if(!nombre_23id.equals("")){
         nombre_23idTemp  = nombre_23id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_20id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_20id.setDescripcion(descripcion_21idTemp);
        publicadores1InstitucionDeportiva_20id.setUrl(url_22idTemp);
        publicadores1InstitucionDeportiva_20id.setNombre(nombre_23idTemp);
        String descripcion_24id=  request.getParameter("descripcion76");
            java.lang.String descripcion_24idTemp = null;
        if(!descripcion_24id.equals("")){
         descripcion_24idTemp  = descripcion_24id;
        }
        String duracionMinutos_25id=  request.getParameter("duracionMinutos78");
        int duracionMinutos_25idTemp  = Integer.parseInt(duracionMinutos_25id);
        String nombre_26id=  request.getParameter("nombre80");
            java.lang.String nombre_26idTemp = null;
        if(!nombre_26id.equals("")){
         nombre_26idTemp  = nombre_26id;
        }
        String costo_27id=  request.getParameter("costo82");
        double costo_27idTemp  = Double.parseDouble(costo_27id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_18id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_18id.setFechaRegistro(fechaRegistro_19idTemp);
        publicadores1ActividadDeportiva_18id.setInstitucion(publicadores1InstitucionDeportiva_20id);
        publicadores1ActividadDeportiva_18id.setDescripcion(descripcion_24idTemp);
        publicadores1ActividadDeportiva_18id.setDuracionMinutos(duracionMinutos_25idTemp);
        publicadores1ActividadDeportiva_18id.setNombre(nombre_26idTemp);
        publicadores1ActividadDeportiva_18id.setCosto(costo_27idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_12id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_12id.setFechaRegistro(fechaRegistro_13idTemp);
        publicadores1DtClase_12id.setUrl(url_14idTemp);
        publicadores1DtClase_12id.setFechaClase(fechaClase_15idTemp);
        publicadores1DtClase_12id.setHoraInicio(horaInicio_16idTemp);
        publicadores1DtClase_12id.setNombre(nombre_17idTemp);
        publicadores1DtClase_12id.setActividad(publicadores1ActividadDeportiva_18id);
        %>
        <jsp:useBean id="publicadores1DtRegistro_9id" scope="session" class="publicadores.DtRegistro" />
        <%
        publicadores1DtRegistro_9id.setFechaRegistro(fechaRegistro_10idTemp);
        publicadores1DtRegistro_9id.setSocio(publicadores1DtSocio_11id);
        publicadores1DtRegistro_9id.setClase(publicadores1DtClase_12id);
        samplePublicadorTroesmaProxyid.paraObtenerDtRegistro(publicadores1DtRegistro_9id);
break;
case 84:
        gotMethod = true;
        String fechaRegistro_29id=  request.getParameter("fechaRegistro89");
            java.util.Calendar fechaRegistro_29idTemp = null;
        if(!fechaRegistro_29id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro89 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro89  = dateFormatfechaRegistro89.parse(fechaRegistro_29id);
         fechaRegistro_29idTemp = new java.util.GregorianCalendar();
        fechaRegistro_29idTemp.setTime(dateTempfechaRegistro89);
        }
        String url_30id=  request.getParameter("url91");
            java.lang.String url_30idTemp = null;
        if(!url_30id.equals("")){
         url_30idTemp  = url_30id;
        }
        String fechaClase_31id=  request.getParameter("fechaClase93");
            java.util.Calendar fechaClase_31idTemp = null;
        if(!fechaClase_31id.equals("")){
        java.text.DateFormat dateFormatfechaClase93 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaClase93  = dateFormatfechaClase93.parse(fechaClase_31id);
         fechaClase_31idTemp = new java.util.GregorianCalendar();
        fechaClase_31idTemp.setTime(dateTempfechaClase93);
        }
        String horaInicio_32id=  request.getParameter("horaInicio95");
            java.lang.String horaInicio_32idTemp = null;
        if(!horaInicio_32id.equals("")){
         horaInicio_32idTemp  = horaInicio_32id;
        }
        String nombre_33id=  request.getParameter("nombre97");
            java.lang.String nombre_33idTemp = null;
        if(!nombre_33id.equals("")){
         nombre_33idTemp  = nombre_33id;
        }
        String fechaRegistro_35id=  request.getParameter("fechaRegistro101");
            java.util.Calendar fechaRegistro_35idTemp = null;
        if(!fechaRegistro_35id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro101 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro101  = dateFormatfechaRegistro101.parse(fechaRegistro_35id);
         fechaRegistro_35idTemp = new java.util.GregorianCalendar();
        fechaRegistro_35idTemp.setTime(dateTempfechaRegistro101);
        }
        String descripcion_37id=  request.getParameter("descripcion105");
            java.lang.String descripcion_37idTemp = null;
        if(!descripcion_37id.equals("")){
         descripcion_37idTemp  = descripcion_37id;
        }
        String url_38id=  request.getParameter("url107");
            java.lang.String url_38idTemp = null;
        if(!url_38id.equals("")){
         url_38idTemp  = url_38id;
        }
        String nombre_39id=  request.getParameter("nombre109");
            java.lang.String nombre_39idTemp = null;
        if(!nombre_39id.equals("")){
         nombre_39idTemp  = nombre_39id;
        }
        %>
        <jsp:useBean id="publicadores1InstitucionDeportiva_36id" scope="session" class="publicadores.InstitucionDeportiva" />
        <%
        publicadores1InstitucionDeportiva_36id.setDescripcion(descripcion_37idTemp);
        publicadores1InstitucionDeportiva_36id.setUrl(url_38idTemp);
        publicadores1InstitucionDeportiva_36id.setNombre(nombre_39idTemp);
        String descripcion_40id=  request.getParameter("descripcion111");
            java.lang.String descripcion_40idTemp = null;
        if(!descripcion_40id.equals("")){
         descripcion_40idTemp  = descripcion_40id;
        }
        String duracionMinutos_41id=  request.getParameter("duracionMinutos113");
        int duracionMinutos_41idTemp  = Integer.parseInt(duracionMinutos_41id);
        String nombre_42id=  request.getParameter("nombre115");
            java.lang.String nombre_42idTemp = null;
        if(!nombre_42id.equals("")){
         nombre_42idTemp  = nombre_42id;
        }
        String costo_43id=  request.getParameter("costo117");
        double costo_43idTemp  = Double.parseDouble(costo_43id);
        %>
        <jsp:useBean id="publicadores1ActividadDeportiva_34id" scope="session" class="publicadores.ActividadDeportiva" />
        <%
        publicadores1ActividadDeportiva_34id.setFechaRegistro(fechaRegistro_35idTemp);
        publicadores1ActividadDeportiva_34id.setInstitucion(publicadores1InstitucionDeportiva_36id);
        publicadores1ActividadDeportiva_34id.setDescripcion(descripcion_40idTemp);
        publicadores1ActividadDeportiva_34id.setDuracionMinutos(duracionMinutos_41idTemp);
        publicadores1ActividadDeportiva_34id.setNombre(nombre_42idTemp);
        publicadores1ActividadDeportiva_34id.setCosto(costo_43idTemp);
        %>
        <jsp:useBean id="publicadores1DtClase_28id" scope="session" class="publicadores.DtClase" />
        <%
        publicadores1DtClase_28id.setFechaRegistro(fechaRegistro_29idTemp);
        publicadores1DtClase_28id.setUrl(url_30idTemp);
        publicadores1DtClase_28id.setFechaClase(fechaClase_31idTemp);
        publicadores1DtClase_28id.setHoraInicio(horaInicio_32idTemp);
        publicadores1DtClase_28id.setNombre(nombre_33idTemp);
        publicadores1DtClase_28id.setActividad(publicadores1ActividadDeportiva_34id);
        samplePublicadorTroesmaProxyid.paraObtenerDtClase(publicadores1DtClase_28id);
break;
case 119:
        gotMethod = true;
        String arg0_44id=  request.getParameter("arg0122");
            java.lang.String arg0_44idTemp = null;
        if(!arg0_44id.equals("")){
         arg0_44idTemp  = arg0_44id;
        }
        String arg1_45id=  request.getParameter("arg1124");
            java.lang.String arg1_45idTemp = null;
        if(!arg1_45id.equals("")){
         arg1_45idTemp  = arg1_45id;
        }
        boolean existeActividadEnUnaInstitucion119mtemp = samplePublicadorTroesmaProxyid.existeActividadEnUnaInstitucion(arg0_44idTemp,arg1_45idTemp);
        String tempResultreturnp120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividadEnUnaInstitucion119mtemp));
        %>
        <%= tempResultreturnp120 %>
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
        String arg2_48id=  request.getParameter("arg2133");
            java.lang.String arg2_48idTemp = null;
        if(!arg2_48id.equals("")){
         arg2_48idTemp  = arg2_48id;
        }
        boolean existeClaseDeActividad126mtemp = samplePublicadorTroesmaProxyid.existeClaseDeActividad(arg0_46idTemp,arg1_47idTemp,arg2_48idTemp);
        String tempResultreturnp127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClaseDeActividad126mtemp));
        %>
        <%= tempResultreturnp127 %>
        <%
break;
case 135:
        gotMethod = true;
        String arg0_49id=  request.getParameter("arg0138");
            java.lang.String arg0_49idTemp = null;
        if(!arg0_49id.equals("")){
         arg0_49idTemp  = arg0_49id;
        }
        publicadores.DtSocio getDtSocio135mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_49idTemp);
if(getDtSocio135mtemp == null){
%>
<%=getDtSocio135mtemp %>
<%
}else{
        if(getDtSocio135mtemp!= null){
        String tempreturnp136 = getDtSocio135mtemp.toString();
        %>
        <%=tempreturnp136%>
        <%
        }}
break;
case 140:
        gotMethod = true;
        String arg0_50id=  request.getParameter("arg0143");
            java.lang.String arg0_50idTemp = null;
        if(!arg0_50id.equals("")){
         arg0_50idTemp  = arg0_50id;
        }
        String fechaRegistro_52id=  request.getParameter("fechaRegistro147");
            java.util.Calendar fechaRegistro_52idTemp = null;
        if(!fechaRegistro_52id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro147 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro147  = dateFormatfechaRegistro147.parse(fechaRegistro_52id);
         fechaRegistro_52idTemp = new java.util.GregorianCalendar();
        fechaRegistro_52idTemp.setTime(dateTempfechaRegistro147);
        }
        String descripcion_53id=  request.getParameter("descripcion149");
            java.lang.String descripcion_53idTemp = null;
        if(!descripcion_53id.equals("")){
         descripcion_53idTemp  = descripcion_53id;
        }
        String descripcion_55id=  request.getParameter("descripcion153");
            java.lang.String descripcion_55idTemp = null;
        if(!descripcion_55id.equals("")){
         descripcion_55idTemp  = descripcion_55id;
        }
        String url_56id=  request.getParameter("url155");
            java.lang.String url_56idTemp = null;
        if(!url_56id.equals("")){
         url_56idTemp  = url_56id;
        }
        String nombre_57id=  request.getParameter("nombre157");
            java.lang.String nombre_57idTemp = null;
        if(!nombre_57id.equals("")){
         nombre_57idTemp  = nombre_57id;
        }
        %>
        <jsp:useBean id="publicadores1DtInstitucion_54id" scope="session" class="publicadores.DtInstitucion" />
        <%
        publicadores1DtInstitucion_54id.setDescripcion(descripcion_55idTemp);
        publicadores1DtInstitucion_54id.setUrl(url_56idTemp);
        publicadores1DtInstitucion_54id.setNombre(nombre_57idTemp);
        String duracionMinutos_58id=  request.getParameter("duracionMinutos159");
        int duracionMinutos_58idTemp  = Integer.parseInt(duracionMinutos_58id);
        String costo_59id=  request.getParameter("costo161");
        double costo_59idTemp  = Double.parseDouble(costo_59id);
        String nombre_60id=  request.getParameter("nombre163");
            java.lang.String nombre_60idTemp = null;
        if(!nombre_60id.equals("")){
         nombre_60idTemp  = nombre_60id;
        }
        %>
        <jsp:useBean id="publicadores1DtActividad_51id" scope="session" class="publicadores.DtActividad" />
        <%
        publicadores1DtActividad_51id.setFechaRegistro(fechaRegistro_52idTemp);
        publicadores1DtActividad_51id.setDescripcion(descripcion_53idTemp);
        publicadores1DtActividad_51id.setInstitucion(publicadores1DtInstitucion_54id);
        publicadores1DtActividad_51id.setDuracionMinutos(duracionMinutos_58idTemp);
        publicadores1DtActividad_51id.setCosto(costo_59idTemp);
        publicadores1DtActividad_51id.setNombre(nombre_60idTemp);
        String arg2_61id=  request.getParameter("arg2165");
            java.util.Calendar arg2_61idTemp = null;
        if(!arg2_61id.equals("")){
        java.text.DateFormat dateFormatarg2165 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg2165  = dateFormatarg2165.parse(arg2_61id);
         arg2_61idTemp = new java.util.GregorianCalendar();
        arg2_61idTemp.setTime(dateTemparg2165);
        }
        String arg3_62id=  request.getParameter("arg3167");
            java.lang.String arg3_62idTemp = null;
        if(!arg3_62id.equals("")){
         arg3_62idTemp  = arg3_62id;
        }
        String arg4_63id=  request.getParameter("arg4169");
            java.lang.String arg4_63idTemp = null;
        if(!arg4_63id.equals("")){
         arg4_63idTemp  = arg4_63id;
        }
        String arg5_64id=  request.getParameter("arg5171");
            java.lang.String arg5_64idTemp = null;
        if(!arg5_64id.equals("")){
         arg5_64idTemp  = arg5_64id;
        }
        String arg6_65id=  request.getParameter("arg6173");
            java.util.Calendar arg6_65idTemp = null;
        if(!arg6_65id.equals("")){
        java.text.DateFormat dateFormatarg6173 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg6173  = dateFormatarg6173.parse(arg6_65id);
         arg6_65idTemp = new java.util.GregorianCalendar();
        arg6_65idTemp.setTime(dateTemparg6173);
        }
        samplePublicadorTroesmaProxyid.altaDictadoClase(arg0_50idTemp,publicadores1DtActividad_51id,arg2_61idTemp,arg3_62idTemp,arg4_63idTemp,arg5_64idTemp,arg6_65idTemp);
break;
case 175:
        gotMethod = true;
        String arg0_66id=  request.getParameter("arg0178");
            java.lang.String arg0_66idTemp = null;
        if(!arg0_66id.equals("")){
         arg0_66idTemp  = arg0_66id;
        }
        String arg1_67id=  request.getParameter("arg1180");
            java.lang.String arg1_67idTemp = null;
        if(!arg1_67id.equals("")){
         arg1_67idTemp  = arg1_67id;
        }
        samplePublicadorTroesmaProxyid.modificarNombre(arg0_66idTemp,arg1_67idTemp);
break;
case 182:
        gotMethod = true;
        String arg0_68id=  request.getParameter("arg0203");
            java.lang.String arg0_68idTemp = null;
        if(!arg0_68id.equals("")){
         arg0_68idTemp  = arg0_68id;
        }
        publicadores.DtActividad getDtActividad182mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_68idTemp);
if(getDtActividad182mtemp == null){
%>
<%=getDtActividad182mtemp %>
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
if(getDtActividad182mtemp != null){
java.util.Calendar typefechaRegistro185 = getDtActividad182mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro185 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro185 = typefechaRegistro185.getTime();
        String tempResultfechaRegistro185 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro185.format(datefechaRegistro185));
        %>
        <%= tempResultfechaRegistro185 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
java.lang.String typedescripcion187 = getDtActividad182mtemp.getDescripcion();
        String tempResultdescripcion187 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion187));
        %>
        <%= tempResultdescripcion187 %>
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
if(getDtActividad182mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad182mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion191 = tebece0.getDescripcion();
        String tempResultdescripcion191 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion191));
        %>
        <%= tempResultdescripcion191 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad182mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl193 = tebece0.getUrl();
        String tempResulturl193 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl193));
        %>
        <%= tempResulturl193 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
publicadores.DtInstitucion tebece0=getDtActividad182mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre195 = tebece0.getNombre();
        String tempResultnombre195 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre195));
        %>
        <%= tempResultnombre195 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
%>
<%=getDtActividad182mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
%>
<%=getDtActividad182mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad182mtemp != null){
java.lang.String typenombre201 = getDtActividad182mtemp.getNombre();
        String tempResultnombre201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre201));
        %>
        <%= tempResultnombre201 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 205:
        gotMethod = true;
        String arg0_69id=  request.getParameter("arg0208");
            java.lang.String arg0_69idTemp = null;
        if(!arg0_69id.equals("")){
         arg0_69idTemp  = arg0_69id;
        }
        boolean esSocio205mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_69idTemp);
        String tempResultreturnp206 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio205mtemp));
        %>
        <%= tempResultreturnp206 %>
        <%
break;
case 210:
        gotMethod = true;
        String arg0_70id=  request.getParameter("arg0213");
            java.lang.String arg0_70idTemp = null;
        if(!arg0_70id.equals("")){
         arg0_70idTemp  = arg0_70id;
        }
        String arg1_71id=  request.getParameter("arg1215");
            java.lang.String arg1_71idTemp = null;
        if(!arg1_71id.equals("")){
         arg1_71idTemp  = arg1_71id;
        }
        boolean esContrasena210mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_70idTemp,arg1_71idTemp);
        String tempResultreturnp211 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena210mtemp));
        %>
        <%= tempResultreturnp211 %>
        <%
break;
case 217:
        gotMethod = true;
        String arg0_72id=  request.getParameter("arg0220");
            java.lang.String arg0_72idTemp = null;
        if(!arg0_72id.equals("")){
         arg0_72idTemp  = arg0_72id;
        }
        boolean existeUsuario217mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_72idTemp);
        String tempResultreturnp218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario217mtemp));
        %>
        <%= tempResultreturnp218 %>
        <%
break;
case 222:
        gotMethod = true;
        String arg0_73id=  request.getParameter("arg0225");
            java.lang.String arg0_73idTemp = null;
        if(!arg0_73id.equals("")){
         arg0_73idTemp  = arg0_73id;
        }
        boolean existeActividad222mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_73idTemp);
        String tempResultreturnp223 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad222mtemp));
        %>
        <%= tempResultreturnp223 %>
        <%
break;
case 227:
        gotMethod = true;
        String arg0_74id=  request.getParameter("arg0236");
            java.lang.String arg0_74idTemp = null;
        if(!arg0_74id.equals("")){
         arg0_74idTemp  = arg0_74id;
        }
        publicadores.DtInstitucion getDtInstitucion227mtemp = samplePublicadorTroesmaProxyid.getDtInstitucion(arg0_74idTemp);
if(getDtInstitucion227mtemp == null){
%>
<%=getDtInstitucion227mtemp %>
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
if(getDtInstitucion227mtemp != null){
java.lang.String typedescripcion230 = getDtInstitucion227mtemp.getDescripcion();
        String tempResultdescripcion230 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion230));
        %>
        <%= tempResultdescripcion230 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtInstitucion227mtemp != null){
java.lang.String typeurl232 = getDtInstitucion227mtemp.getUrl();
        String tempResulturl232 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl232));
        %>
        <%= tempResulturl232 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtInstitucion227mtemp != null){
java.lang.String typenombre234 = getDtInstitucion227mtemp.getNombre();
        String tempResultnombre234 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre234));
        %>
        <%= tempResultnombre234 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 238:
        gotMethod = true;
        String arg0_75id=  request.getParameter("arg0255");
            java.lang.String arg0_75idTemp = null;
        if(!arg0_75id.equals("")){
         arg0_75idTemp  = arg0_75id;
        }
        publicadores.DtProfesor getDtProfesor238mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_75idTemp);
if(getDtProfesor238mtemp == null){
%>
<%=getDtProfesor238mtemp %>
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
if(getDtProfesor238mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor238mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion243 = tebece0.getDescripcion();
        String tempResultdescripcion243 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion243));
        %>
        <%= tempResultdescripcion243 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor238mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor238mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl245 = tebece0.getUrl();
        String tempResulturl245 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl245));
        %>
        <%= tempResulturl245 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor238mtemp != null){
publicadores.InstitucionDeportiva tebece0=getDtProfesor238mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre247 = tebece0.getNombre();
        String tempResultnombre247 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre247));
        %>
        <%= tempResultnombre247 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor238mtemp != null){
java.lang.String typedescripcionGeneral249 = getDtProfesor238mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral249 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral249));
        %>
        <%= tempResultdescripcionGeneral249 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor238mtemp != null){
java.lang.String typesitioWeb251 = getDtProfesor238mtemp.getSitioWeb();
        String tempResultsitioWeb251 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb251));
        %>
        <%= tempResultsitioWeb251 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor238mtemp != null){
java.lang.String typebiografia253 = getDtProfesor238mtemp.getBiografia();
        String tempResultbiografia253 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia253));
        %>
        <%= tempResultbiografia253 %>
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