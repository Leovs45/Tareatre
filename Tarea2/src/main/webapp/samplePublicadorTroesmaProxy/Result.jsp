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
        String arg0_1id=  request.getParameter("arg028");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        publicadores.DtInstitucion getDtInstitucion15mtemp = samplePublicadorTroesmaProxyid.getDtInstitucion(arg0_1idTemp);
if(getDtInstitucion15mtemp == null){
%>
<%=getDtInstitucion15mtemp %>
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
if(getDtInstitucion15mtemp != null){
java.lang.String typedescripcion18 = getDtInstitucion15mtemp.getDescripcion();
        String tempResultdescripcion18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion18));
        %>
        <%= tempResultdescripcion18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtInstitucion15mtemp != null){
java.lang.String typeurl20 = getDtInstitucion15mtemp.getUrl();
        String tempResulturl20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl20));
        %>
        <%= tempResulturl20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantProfesores:</TD>
<TD>
<%
if(getDtInstitucion15mtemp != null){
%>
<%=getDtInstitucion15mtemp.getCantProfesores()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantActividades:</TD>
<TD>
<%
if(getDtInstitucion15mtemp != null){
%>
<%=getDtInstitucion15mtemp.getCantActividades()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtInstitucion15mtemp != null){
java.lang.String typenombre26 = getDtInstitucion15mtemp.getNombre();
        String tempResultnombre26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre26));
        %>
        <%= tempResultnombre26 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 30:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg033");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        String arg1_3id=  request.getParameter("arg135");
            java.lang.String arg1_3idTemp = null;
        if(!arg1_3id.equals("")){
         arg1_3idTemp  = arg1_3id;
        }
        boolean existeActividadEnUnaInstitucion30mtemp = samplePublicadorTroesmaProxyid.existeActividadEnUnaInstitucion(arg0_2idTemp,arg1_3idTemp);
        String tempResultreturnp31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividadEnUnaInstitucion30mtemp));
        %>
        <%= tempResultreturnp31 %>
        <%
break;
case 37:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg040");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        String arg1_5id=  request.getParameter("arg142");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        String arg2_6id=  request.getParameter("arg244");
            java.lang.String arg2_6idTemp = null;
        if(!arg2_6id.equals("")){
         arg2_6idTemp  = arg2_6id;
        }
        boolean existeClaseDeActividad37mtemp = samplePublicadorTroesmaProxyid.existeClaseDeActividad(arg0_4idTemp,arg1_5idTemp,arg2_6idTemp);
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeClaseDeActividad37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
break;
case 46:
        gotMethod = true;
        String arg0_7id=  request.getParameter("arg049");
            java.lang.String arg0_7idTemp = null;
        if(!arg0_7id.equals("")){
         arg0_7idTemp  = arg0_7id;
        }
        String costo_9id=  request.getParameter("costo53");
        double costo_9idTemp  = Double.parseDouble(costo_9id);
        String descripcion_10id=  request.getParameter("descripcion55");
            java.lang.String descripcion_10idTemp = null;
        if(!descripcion_10id.equals("")){
         descripcion_10idTemp  = descripcion_10id;
        }
        String duracionMinutos_11id=  request.getParameter("duracionMinutos57");
        int duracionMinutos_11idTemp  = Integer.parseInt(duracionMinutos_11id);
        String nombreInstitucion_12id=  request.getParameter("nombreInstitucion59");
            java.lang.String nombreInstitucion_12idTemp = null;
        if(!nombreInstitucion_12id.equals("")){
         nombreInstitucion_12idTemp  = nombreInstitucion_12id;
        }
        String cantClases_13id=  request.getParameter("cantClases61");
        int cantClases_13idTemp  = Integer.parseInt(cantClases_13id);
        String fechaRegistro_14id=  request.getParameter("fechaRegistro63");
            java.util.Calendar fechaRegistro_14idTemp = null;
        if(!fechaRegistro_14id.equals("")){
        java.text.DateFormat dateFormatfechaRegistro63 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaRegistro63  = dateFormatfechaRegistro63.parse(fechaRegistro_14id);
         fechaRegistro_14idTemp = new java.util.GregorianCalendar();
        fechaRegistro_14idTemp.setTime(dateTempfechaRegistro63);
        }
        String nombre_15id=  request.getParameter("nombre65");
            java.lang.String nombre_15idTemp = null;
        if(!nombre_15id.equals("")){
         nombre_15idTemp  = nombre_15id;
        }
        %>
        <jsp:useBean id="publicadores1DtActividad_8id" scope="session" class="publicadores.DtActividad" />
        <%
        publicadores1DtActividad_8id.setCosto(costo_9idTemp);
        publicadores1DtActividad_8id.setDescripcion(descripcion_10idTemp);
        publicadores1DtActividad_8id.setDuracionMinutos(duracionMinutos_11idTemp);
        publicadores1DtActividad_8id.setNombreInstitucion(nombreInstitucion_12idTemp);
        publicadores1DtActividad_8id.setCantClases(cantClases_13idTemp);
        publicadores1DtActividad_8id.setFechaRegistro(fechaRegistro_14idTemp);
        publicadores1DtActividad_8id.setNombre(nombre_15idTemp);
        String arg2_16id=  request.getParameter("arg267");
            java.util.Calendar arg2_16idTemp = null;
        if(!arg2_16id.equals("")){
        java.text.DateFormat dateFormatarg267 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg267  = dateFormatarg267.parse(arg2_16id);
         arg2_16idTemp = new java.util.GregorianCalendar();
        arg2_16idTemp.setTime(dateTemparg267);
        }
        String arg3_17id=  request.getParameter("arg369");
            java.lang.String arg3_17idTemp = null;
        if(!arg3_17id.equals("")){
         arg3_17idTemp  = arg3_17id;
        }
        String arg4_18id=  request.getParameter("arg471");
            java.lang.String arg4_18idTemp = null;
        if(!arg4_18id.equals("")){
         arg4_18idTemp  = arg4_18id;
        }
        String arg5_19id=  request.getParameter("arg573");
            java.lang.String arg5_19idTemp = null;
        if(!arg5_19id.equals("")){
         arg5_19idTemp  = arg5_19id;
        }
        String arg6_20id=  request.getParameter("arg675");
            java.util.Calendar arg6_20idTemp = null;
        if(!arg6_20id.equals("")){
        java.text.DateFormat dateFormatarg675 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg675  = dateFormatarg675.parse(arg6_20id);
         arg6_20idTemp = new java.util.GregorianCalendar();
        arg6_20idTemp.setTime(dateTemparg675);
        }
        samplePublicadorTroesmaProxyid.altaDictadoClase(arg0_7idTemp,publicadores1DtActividad_8id,arg2_16idTemp,arg3_17idTemp,arg4_18idTemp,arg5_19idTemp,arg6_20idTemp);
break;
case 77:
        gotMethod = true;
        String arg0_21id=  request.getParameter("arg080");
            java.lang.String arg0_21idTemp = null;
        if(!arg0_21id.equals("")){
         arg0_21idTemp  = arg0_21id;
        }
        boolean existeActividad77mtemp = samplePublicadorTroesmaProxyid.existeActividad(arg0_21idTemp);
        String tempResultreturnp78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeActividad77mtemp));
        %>
        <%= tempResultreturnp78 %>
        <%
break;
case 82:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg099");
            java.lang.String arg0_22idTemp = null;
        if(!arg0_22id.equals("")){
         arg0_22idTemp  = arg0_22id;
        }
        publicadores.DtActividad getDtActividad82mtemp = samplePublicadorTroesmaProxyid.getDtActividad(arg0_22idTemp);
if(getDtActividad82mtemp == null){
%>
<%=getDtActividad82mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
%>
<%=getDtActividad82mtemp.getCosto()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
java.lang.String typedescripcion87 = getDtActividad82mtemp.getDescripcion();
        String tempResultdescripcion87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion87));
        %>
        <%= tempResultdescripcion87 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracionMinutos:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
%>
<%=getDtActividad82mtemp.getDuracionMinutos()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombreInstitucion:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
java.lang.String typenombreInstitucion91 = getDtActividad82mtemp.getNombreInstitucion();
        String tempResultnombreInstitucion91 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombreInstitucion91));
        %>
        <%= tempResultnombreInstitucion91 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantClases:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
%>
<%=getDtActividad82mtemp.getCantClases()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
java.util.Calendar typefechaRegistro95 = getDtActividad82mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro95 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro95 = typefechaRegistro95.getTime();
        String tempResultfechaRegistro95 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro95.format(datefechaRegistro95));
        %>
        <%= tempResultfechaRegistro95 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividad82mtemp != null){
java.lang.String typenombre97 = getDtActividad82mtemp.getNombre();
        String tempResultnombre97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre97));
        %>
        <%= tempResultnombre97 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 101:
        gotMethod = true;
        String arg0_23id=  request.getParameter("arg0104");
            java.lang.String arg0_23idTemp = null;
        if(!arg0_23id.equals("")){
         arg0_23idTemp  = arg0_23id;
        }
        boolean esSocio101mtemp = samplePublicadorTroesmaProxyid.esSocio(arg0_23idTemp);
        String tempResultreturnp102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esSocio101mtemp));
        %>
        <%= tempResultreturnp102 %>
        <%
break;
case 106:
        gotMethod = true;
        String arg0_24id=  request.getParameter("arg0111");
            java.lang.String arg0_24idTemp = null;
        if(!arg0_24id.equals("")){
         arg0_24idTemp  = arg0_24id;
        }
        publicadores.DtSocio getDtSocio106mtemp = samplePublicadorTroesmaProxyid.getDtSocio(arg0_24idTemp);
if(getDtSocio106mtemp == null){
%>
<%=getDtSocio106mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantRegistros:</TD>
<TD>
<%
if(getDtSocio106mtemp != null){
%>
<%=getDtSocio106mtemp.getCantRegistros()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 113:
        gotMethod = true;
        String arg0_25id=  request.getParameter("arg0136");
            java.lang.String arg0_25idTemp = null;
        if(!arg0_25id.equals("")){
         arg0_25idTemp  = arg0_25id;
        }
        publicadores.DtProfesor getDtProfesor113mtemp = samplePublicadorTroesmaProxyid.getDtProfesor(arg0_25idTemp);
if(getDtProfesor113mtemp == null){
%>
<%=getDtProfesor113mtemp %>
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
if(getDtProfesor113mtemp != null){
publicadores.DtInstitucion tebece0=getDtProfesor113mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typedescripcion118 = tebece0.getDescripcion();
        String tempResultdescripcion118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion118));
        %>
        <%= tempResultdescripcion118 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
publicadores.DtInstitucion tebece0=getDtProfesor113mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typeurl120 = tebece0.getUrl();
        String tempResulturl120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl120));
        %>
        <%= tempResulturl120 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cantProfesores:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
publicadores.DtInstitucion tebece0=getDtProfesor113mtemp.getInstitucion();
if(tebece0 != null){
%>
<%=tebece0.getCantProfesores()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cantActividades:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
publicadores.DtInstitucion tebece0=getDtProfesor113mtemp.getInstitucion();
if(tebece0 != null){
%>
<%=tebece0.getCantActividades()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
publicadores.DtInstitucion tebece0=getDtProfesor113mtemp.getInstitucion();
if(tebece0 != null){
java.lang.String typenombre126 = tebece0.getNombre();
        String tempResultnombre126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre126));
        %>
        <%= tempResultnombre126 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionGeneral:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
java.lang.String typedescripcionGeneral128 = getDtProfesor113mtemp.getDescripcionGeneral();
        String tempResultdescripcionGeneral128 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionGeneral128));
        %>
        <%= tempResultdescripcionGeneral128 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sitioWeb:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
java.lang.String typesitioWeb130 = getDtProfesor113mtemp.getSitioWeb();
        String tempResultsitioWeb130 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesitioWeb130));
        %>
        <%= tempResultsitioWeb130 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">biografia:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
java.lang.String typebiografia132 = getDtProfesor113mtemp.getBiografia();
        String tempResultbiografia132 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebiografia132));
        %>
        <%= tempResultbiografia132 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantClases:</TD>
<TD>
<%
if(getDtProfesor113mtemp != null){
%>
<%=getDtProfesor113mtemp.getCantClases()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 138:
        gotMethod = true;
        String arg0_26id=  request.getParameter("arg0141");
            java.lang.String arg0_26idTemp = null;
        if(!arg0_26id.equals("")){
         arg0_26idTemp  = arg0_26id;
        }
        boolean existeUsuario138mtemp = samplePublicadorTroesmaProxyid.existeUsuario(arg0_26idTemp);
        String tempResultreturnp139 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeUsuario138mtemp));
        %>
        <%= tempResultreturnp139 %>
        <%
break;
case 143:
        gotMethod = true;
        String arg0_27id=  request.getParameter("arg0146");
            java.lang.String arg0_27idTemp = null;
        if(!arg0_27id.equals("")){
         arg0_27idTemp  = arg0_27id;
        }
        String arg1_28id=  request.getParameter("arg1148");
            java.lang.String arg1_28idTemp = null;
        if(!arg1_28id.equals("")){
         arg1_28idTemp  = arg1_28id;
        }
        boolean esContrasena143mtemp = samplePublicadorTroesmaProxyid.esContrasena(arg0_27idTemp,arg1_28idTemp);
        String tempResultreturnp144 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(esContrasena143mtemp));
        %>
        <%= tempResultreturnp144 %>
        <%
break;
case 150:
        gotMethod = true;
        publicadores.DtActividad[] getRankingActividades150mtemp = samplePublicadorTroesmaProxyid.getRankingActividades();
if(getRankingActividades150mtemp == null){
%>
<%=getRankingActividades150mtemp %>
<%
}else{
        String tempreturnp151 = null;
        if(getRankingActividades150mtemp != null){
        java.util.List listreturnp151= java.util.Arrays.asList(getRankingActividades150mtemp);
        tempreturnp151 = listreturnp151.toString();
        }
        %>
        <%=tempreturnp151%>
        <%
}
break;
case 153:
        gotMethod = true;
        String arg0_29id=  request.getParameter("arg0156");
            java.lang.String arg0_29idTemp = null;
        if(!arg0_29id.equals("")){
         arg0_29idTemp  = arg0_29id;
        }
        String arg1_30id=  request.getParameter("arg1158");
            java.lang.String arg1_30idTemp = null;
        if(!arg1_30id.equals("")){
         arg1_30idTemp  = arg1_30id;
        }
        samplePublicadorTroesmaProxyid.modificarNombre(arg0_29idTemp,arg1_30idTemp);
break;
case 160:
        gotMethod = true;
        String arg0_31id=  request.getParameter("arg0163");
            java.lang.String arg0_31idTemp = null;
        if(!arg0_31id.equals("")){
         arg0_31idTemp  = arg0_31id;
        }
        String arg1_32id=  request.getParameter("arg1165");
            java.lang.String arg1_32idTemp = null;
        if(!arg1_32id.equals("")){
         arg1_32idTemp  = arg1_32id;
        }
        samplePublicadorTroesmaProxyid.modificarApellido(arg0_31idTemp,arg1_32idTemp);
break;
case 167:
        gotMethod = true;
        String arg0_33id=  request.getParameter("arg0170");
            java.lang.String arg0_33idTemp = null;
        if(!arg0_33id.equals("")){
         arg0_33idTemp  = arg0_33id;
        }
        String arg1_34id=  request.getParameter("arg1172");
            java.lang.String arg1_34idTemp = null;
        if(!arg1_34id.equals("")){
         arg1_34idTemp  = arg1_34id;
        }
        samplePublicadorTroesmaProxyid.modificarFechaNacimiento(arg0_33idTemp,arg1_34idTemp);
break;
case 174:
        gotMethod = true;
        String arg0_35id=  request.getParameter("arg0191");
            java.lang.String arg0_35idTemp = null;
        if(!arg0_35id.equals("")){
         arg0_35idTemp  = arg0_35id;
        }
        publicadores.DtClase obtenerDtClasePorNombre174mtemp = samplePublicadorTroesmaProxyid.obtenerDtClasePorNombre(arg0_35idTemp);
if(obtenerDtClasePorNombre174mtemp == null){
%>
<%=obtenerDtClasePorNombre174mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.lang.String typeurl177 = obtenerDtClasePorNombre174mtemp.getUrl();
        String tempResulturl177 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl177));
        %>
        <%= tempResulturl177 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">horaInicio:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.lang.String typehoraInicio179 = obtenerDtClasePorNombre174mtemp.getHoraInicio();
        String tempResulthoraInicio179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typehoraInicio179));
        %>
        <%= tempResulthoraInicio179 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombreActividad:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.lang.String typenombreActividad181 = obtenerDtClasePorNombre174mtemp.getNombreActividad();
        String tempResultnombreActividad181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombreActividad181));
        %>
        <%= tempResultnombreActividad181 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaRegistro:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.util.Calendar typefechaRegistro183 = obtenerDtClasePorNombre174mtemp.getFechaRegistro();
        java.text.DateFormat dateFormatfechaRegistro183 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaRegistro183 = typefechaRegistro183.getTime();
        String tempResultfechaRegistro183 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaRegistro183.format(datefechaRegistro183));
        %>
        <%= tempResultfechaRegistro183 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaClase:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.util.Calendar typefechaClase185 = obtenerDtClasePorNombre174mtemp.getFechaClase();
        java.text.DateFormat dateFormatfechaClase185 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaClase185 = typefechaClase185.getTime();
        String tempResultfechaClase185 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaClase185.format(datefechaClase185));
        %>
        <%= tempResultfechaClase185 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantRegistros:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
%>
<%=obtenerDtClasePorNombre174mtemp.getCantRegistros()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(obtenerDtClasePorNombre174mtemp != null){
java.lang.String typenombre189 = obtenerDtClasePorNombre174mtemp.getNombre();
        String tempResultnombre189 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre189));
        %>
        <%= tempResultnombre189 %>
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