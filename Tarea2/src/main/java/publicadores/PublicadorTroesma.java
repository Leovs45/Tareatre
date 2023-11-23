/**
 * PublicadorTroesma.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface PublicadorTroesma extends java.rmi.Remote {
    public publicadores.DtInstitucion getDtInstitucion(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeActividadEnUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public boolean existeClaseDeActividad(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException;
    public void altaDictadoClase(java.lang.String arg0, publicadores.DtActividad arg1, java.util.Calendar arg2, java.lang.String arg3, java.lang.String arg4, java.lang.String arg5, java.util.Calendar arg6) throws java.rmi.RemoteException, publicadores.ClaseRepetidaException;
    public boolean existeActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtActividad getDtActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean esSocio(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtSocio getDtSocio(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtProfesor getDtProfesor(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean esContrasena(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.DtActividad[] getRankingActividades() throws java.rmi.RemoteException;
    public void modificarNombre(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarApellido(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarFechaNacimiento(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException, publicadores.ParseException;
}
