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
  
  public publicadores.DtActividad[] getRankingActividades() throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.getRankingActividades();
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
  
  public boolean existeActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (publicadorTroesma == null)
      _initPublicadorTroesmaProxy();
    return publicadorTroesma.existeActividad(arg0);
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
  
  
}