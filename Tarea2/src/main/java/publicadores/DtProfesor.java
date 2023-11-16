/**
 * DtProfesor.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtProfesor  extends publicadores.DtUsuario  implements java.io.Serializable {
    private publicadores.DtClase[] clases;

    private java.lang.String nombreInstitucion;

    public DtProfesor() {
    }

    public DtProfesor(
           publicadores.DtClase[] clases,
           java.lang.String nombreInstitucion) {
        this.clases = clases;
        this.nombreInstitucion = nombreInstitucion;
    }


    /**
     * Gets the clases value for this DtProfesor.
     * 
     * @return clases
     */
    public publicadores.DtClase[] getClases() {
        return clases;
    }


    /**
     * Sets the clases value for this DtProfesor.
     * 
     * @param clases
     */
    public void setClases(publicadores.DtClase[] clases) {
        this.clases = clases;
    }

    public publicadores.DtClase getClases(int i) {
        return this.clases[i];
    }

    public void setClases(int i, publicadores.DtClase _value) {
        this.clases[i] = _value;
    }


    /**
     * Gets the nombreInstitucion value for this DtProfesor.
     * 
     * @return nombreInstitucion
     */
    public java.lang.String getNombreInstitucion() {
        return nombreInstitucion;
    }


    /**
     * Sets the nombreInstitucion value for this DtProfesor.
     * 
     * @param nombreInstitucion
     */
    public void setNombreInstitucion(java.lang.String nombreInstitucion) {
        this.nombreInstitucion = nombreInstitucion;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtProfesor)) return false;
        DtProfesor other = (DtProfesor) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            ((this.clases==null && other.getClases()==null) || 
             (this.clases!=null &&
              java.util.Arrays.equals(this.clases, other.getClases()))) &&
            ((this.nombreInstitucion==null && other.getNombreInstitucion()==null) || 
             (this.nombreInstitucion!=null &&
              this.nombreInstitucion.equals(other.getNombreInstitucion())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        if (getClases() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getClases());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getClases(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getNombreInstitucion() != null) {
            _hashCode += getNombreInstitucion().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtProfesor.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtProfesor"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("clases");
        elemField.setXmlName(new javax.xml.namespace.QName("", "clases"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtClase"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreInstitucion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreInstitucion"));
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
