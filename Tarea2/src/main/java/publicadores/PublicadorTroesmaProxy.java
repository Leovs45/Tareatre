package publicadores;

public class PublicadorTroesmaProxy implements publicadores.PublicadorTroesma {
  private String _endpoint = null;
  private publicadores.PublicadorTroesma publicadorTroesma = null;
  
  public PublicadorTroesmaProxy() {
    _initPublicadorTroesmaProxy();
  }
  
  public PublicadorTroesmaProxy(String endpoint) {
    _endpoint = endpoint;
    _initPublicadorTroesmaProxy();
  }
  
  private void _initPublicadorTroesmaProxy() {
    try {
      publicadorTroesma = (new publicadores.PublicadorTroesmaServiceLocator()).getpublicadorTroesmaPort();
      if (publicadorTroesma != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)publicadorTroesma)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)publicadorTroesma)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (publicadorTroesma != null)
      ((javax.xml.rpc.Stub)publicadorTroesma)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.PublicadorTroesma getPublicadorTroesma() {
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma;
  }
  
  public publicadores.DtInstitucion getDtInstitucion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getDtInstitucion(arg0);
  }
  
  public boolean existeActividadEnUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.existeActividadEnUnaInstitucion(arg0, arg1);
  }
  
  public boolean existeClaseDeActividad(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.existeClaseDeActividad(arg0, arg1, arg2);
  }
  
  public void altaDictadoClase(java.lang.String arg0, publicadores.DtActividad arg1, java.util.Calendar arg2, java.lang.String arg3, java.lang.String arg4, java.lang.String arg5, java.util.Calendar arg6) throws java.rmi.RemoteException, publicadores.ClaseRepetidaException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    publicadorTroesma.altaDictadoClase(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
  }
  
  public boolean existeActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.existeActividad(arg0);
  }
  
  public publicadores.DtActividad getDtActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getDtActividad(arg0);
  }
  
  public boolean esSocio(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.esSocio(arg0);
  }
  
  public publicadores.DtSocio getDtSocio(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getDtSocio(arg0);
  }
  
  public publicadores.DtProfesor getDtProfesor(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getDtProfesor(arg0);
  }
  
  public boolean existeUsuario(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.existeUsuario(arg0);
  }
  
  public boolean esContrasena(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.esContrasena(arg0, arg1);
  }
  
  public publicadores.DtActividad[] getRankingActividades() throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getRankingActividades();
  }
  
  public void modificarNombre(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    publicadorTroesma.modificarNombre(arg0, arg1);
  }
  
  public void modificarApellido(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    publicadorTroesma.modificarApellido(arg0, arg1);
  }
  
  public void modificarFechaNacimiento(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException, publicadores.ParseException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    publicadorTroesma.modificarFechaNacimiento(arg0, arg1);
  }
  
  
}