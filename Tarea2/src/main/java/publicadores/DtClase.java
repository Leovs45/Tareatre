/**
 * DtClase.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtClase  implements java.io.Serializable {
    private java.lang.String nombre;

    private java.lang.String nombreActividad;

    private java.util.Calendar fechaClase;

    private java.lang.String horaInicio;

    private java.lang.String url;

    private java.util.Calendar fechaRegistro;

    private publicadores.DtRegistro[] registros;

    private int cantRegistros;

    public DtClase() {
    }

    public DtClase(
           java.lang.String nombre,
           java.lang.String nombreActividad,
           java.util.Calendar fechaClase,
           java.lang.String horaInicio,
           java.lang.String url,
           java.util.Calendar fechaRegistro,
           publicadores.DtRegistro[] registros,
           int cantRegistros) {
           this.nombre = nombre;
           this.nombreActividad = nombreActividad;
           this.fechaClase = fechaClase;
           this.horaInicio = horaInicio;
           this.url = url;
           this.fechaRegistro = fechaRegistro;
           this.registros = registros;
           this.cantRegistros = cantRegistros;
    }


    /**
     * Gets the nombre value for this DtClase.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtClase.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the nombreActividad value for this DtClase.
     * 
     * @return nombreActividad
     */
    public java.lang.String getNombreActividad() {
        return nombreActividad;
    }


    /**
     * Sets the nombreActividad value for this DtClase.
     * 
     * @param nombreActividad
     */
    public void setNombreActividad(java.lang.String nombreActividad) {
        this.nombreActividad = nombreActividad;
    }


    /**
     * Gets the fechaClase value for this DtClase.
     * 
     * @return fechaClase
     */
    public java.util.Calendar getFechaClase() {
        return fechaClase;
    }


    /**
     * Sets the fechaClase value for this DtClase.
     * 
     * @param fechaClase
     */
    public void setFechaClase(java.util.Calendar fechaClase) {
        this.fechaClase = fechaClase;
    }


    /**
     * Gets the horaInicio value for this DtClase.
     * 
     * @return horaInicio
     */
    public java.lang.String getHoraInicio() {
        return horaInicio;
    }


    /**
     * Sets the horaInicio value for this DtClase.
     * 
     * @param horaInicio
     */
    public void setHoraInicio(java.lang.String horaInicio) {
        this.horaInicio = horaInicio;
    }


    /**
     * Gets the url value for this DtClase.
     * 
     * @return url
     */
    public java.lang.String getUrl() {
        return url;
    }


    /**
     * Sets the url value for this DtClase.
     * 
     * @param url
     */
    public void setUrl(java.lang.String url) {
        this.url = url;
    }


    /**
     * Gets the fechaRegistro value for this DtClase.
     * 
     * @return fechaRegistro
     */
    public java.util.Calendar getFechaRegistro() {
        return fechaRegistro;
    }


    /**
     * Sets the fechaRegistro value for this DtClase.
     * 
     * @param fechaRegistro
     */
    public void setFechaRegistro(java.util.Calendar fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }


    /**
     * Gets the registros value for this DtClase.
     * 
     * @return registros
     */
    public publicadores.DtRegistro[] getRegistros() {
        return registros;
    }


    /**
     * Sets the registros value for this DtClase.
     * 
     * @param registros
     */
    public void setRegistros(publicadores.DtRegistro[] registros) {
        this.registros = registros;
    }

    public publicadores.DtRegistro getRegistros(int i) {
        return this.registros[i];
    }

    public void setRegistros(int i, publicadores.DtRegistro _value) {
        this.registros[i] = _value;
    }


    /**
     * Gets the cantRegistros value for this DtClase.
     * 
     * @return cantRegistros
     */
    public int getCantRegistros() {
        return cantRegistros;
    }


    /**
     * Sets the cantRegistros value for this DtClase.
     * 
     * @param cantRegistros
     */
    public void setCantRegistros(int cantRegistros) {
        this.cantRegistros = cantRegistros;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtClase)) return false;
        DtClase other = (DtClase) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.nombreActividad==null && other.getNombreActividad()==null) || 
             (this.nombreActividad!=null &&
              this.nombreActividad.equals(other.getNombreActividad()))) &&
            ((this.fechaClase==null && other.getFechaClase()==null) || 
             (this.fechaClase!=null &&
              this.fechaClase.equals(other.getFechaClase()))) &&
            ((this.horaInicio==null && other.getHoraInicio()==null) || 
             (this.horaInicio!=null &&
              this.horaInicio.equals(other.getHoraInicio()))) &&
            ((this.url==null && other.getUrl()==null) || 
             (this.url!=null &&
              this.url.equals(other.getUrl()))) &&
            ((this.fechaRegistro==null && other.getFechaRegistro()==null) || 
             (this.fechaRegistro!=null &&
              this.fechaRegistro.equals(other.getFechaRegistro()))) &&
            ((this.registros==null && other.getRegistros()==null) || 
             (this.registros!=null &&
              java.util.Arrays.equals(this.registros, other.getRegistros()))) &&
            this.cantRegistros == other.getCantRegistros();
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getNombreActividad() != null) {
            _hashCode += getNombreActividad().hashCode();
        }
        if (getFechaClase() != null) {
            _hashCode += getFechaClase().hashCode();
        }
        if (getHoraInicio() != null) {
            _hashCode += getHoraInicio().hashCode();
        }
        if (getUrl() != null) {
            _hashCode += getUrl().hashCode();
        }
        if (getFechaRegistro() != null) {
            _hashCode += getFechaRegistro().hashCode();
        }
        if (getRegistros() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getRegistros());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getRegistros(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        _hashCode += getCantRegistros();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtClase.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtClase"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreActividad");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreActividad"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("horaInicio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "horaInicio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("url");
        elemField.setXmlName(new javax.xml.namespace.QName("", "url"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaRegistro");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaRegistro"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("registros");
        elemField.setXmlName(new javax.xml.namespace.QName("", "registros"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtRegistro"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantRegistros");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantRegistros"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
