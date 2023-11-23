/**
 * DtRegistro.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtRegistro  implements java.io.Serializable {
    private java.util.Calendar fechaRegistro;

    private java.lang.String nombreSocio;

    private java.lang.String nombreClase;

    public DtRegistro() {
    }

    public DtRegistro(
           java.util.Calendar fechaRegistro,
           java.lang.String nombreSocio,
           java.lang.String nombreClase) {
           this.fechaRegistro = fechaRegistro;
           this.nombreSocio = nombreSocio;
           this.nombreClase = nombreClase;
    }


    /**
     * Gets the fechaRegistro value for this DtRegistro.
     * 
     * @return fechaRegistro
     */
    public java.util.Calendar getFechaRegistro() {
        return fechaRegistro;
    }


    /**
     * Sets the fechaRegistro value for this DtRegistro.
     * 
     * @param fechaRegistro
     */
    public void setFechaRegistro(java.util.Calendar fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }


    /**
     * Gets the nombreSocio value for this DtRegistro.
     * 
     * @return nombreSocio
     */
    public java.lang.String getNombreSocio() {
        return nombreSocio;
    }


    /**
     * Sets the nombreSocio value for this DtRegistro.
     * 
     * @param nombreSocio
     */
    public void setNombreSocio(java.lang.String nombreSocio) {
        this.nombreSocio = nombreSocio;
    }


    /**
     * Gets the nombreClase value for this DtRegistro.
     * 
     * @return nombreClase
     */
    public java.lang.String getNombreClase() {
        return nombreClase;
    }


    /**
     * Sets the nombreClase value for this DtRegistro.
     * 
     * @param nombreClase
     */
    public void setNombreClase(java.lang.String nombreClase) {
        this.nombreClase = nombreClase;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtRegistro)) return false;
        DtRegistro other = (DtRegistro) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.fechaRegistro==null && other.getFechaRegistro()==null) || 
             (this.fechaRegistro!=null &&
              this.fechaRegistro.equals(other.getFechaRegistro()))) &&
            ((this.nombreSocio==null && other.getNombreSocio()==null) || 
             (this.nombreSocio!=null &&
              this.nombreSocio.equals(other.getNombreSocio()))) &&
            ((this.nombreClase==null && other.getNombreClase()==null) || 
             (this.nombreClase!=null &&
              this.nombreClase.equals(other.getNombreClase())));
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
        if (getFechaRegistro() != null) {
            _hashCode += getFechaRegistro().hashCode();
        }
        if (getNombreSocio() != null) {
            _hashCode += getNombreSocio().hashCode();
        }
        if (getNombreClase() != null) {
            _hashCode += getNombreClase().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtRegistro.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtRegistro"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaRegistro");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaRegistro"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreSocio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreSocio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
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
