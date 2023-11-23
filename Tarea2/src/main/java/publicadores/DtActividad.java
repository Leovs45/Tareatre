/**
 * DtActividad.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtActividad  implements java.io.Serializable {
    private java.lang.String nombreInstitucion;

    private java.lang.String nombre;

    private java.lang.String descripcion;

    private int duracionMinutos;

    private double costo;

    private java.util.Calendar fechaRegistro;

    private publicadores.DtClase[] clases;

    private int cantClases;

    public DtActividad() {
    }

    public DtActividad(
           java.lang.String nombreInstitucion,
           java.lang.String nombre,
           java.lang.String descripcion,
           int duracionMinutos,
           double costo,
           java.util.Calendar fechaRegistro,
           publicadores.DtClase[] clases,
           int cantClases) {
           this.nombreInstitucion = nombreInstitucion;
           this.nombre = nombre;
           this.descripcion = descripcion;
           this.duracionMinutos = duracionMinutos;
           this.costo = costo;
           this.fechaRegistro = fechaRegistro;
           this.clases = clases;
           this.cantClases = cantClases;
    }


    /**
     * Gets the nombreInstitucion value for this DtActividad.
     * 
     * @return nombreInstitucion
     */
    public java.lang.String getNombreInstitucion() {
        return nombreInstitucion;
    }


    /**
     * Sets the nombreInstitucion value for this DtActividad.
     * 
     * @param nombreInstitucion
     */
    public void setNombreInstitucion(java.lang.String nombreInstitucion) {
        this.nombreInstitucion = nombreInstitucion;
    }


    /**
     * Gets the nombre value for this DtActividad.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtActividad.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the descripcion value for this DtActividad.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this DtActividad.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the duracionMinutos value for this DtActividad.
     * 
     * @return duracionMinutos
     */
    public int getDuracionMinutos() {
        return duracionMinutos;
    }


    /**
     * Sets the duracionMinutos value for this DtActividad.
     * 
     * @param duracionMinutos
     */
    public void setDuracionMinutos(int duracionMinutos) {
        this.duracionMinutos = duracionMinutos;
    }


    /**
     * Gets the costo value for this DtActividad.
     * 
     * @return costo
     */
    public double getCosto() {
        return costo;
    }


    /**
     * Sets the costo value for this DtActividad.
     * 
     * @param costo
     */
    public void setCosto(double costo) {
        this.costo = costo;
    }


    /**
     * Gets the fechaRegistro value for this DtActividad.
     * 
     * @return fechaRegistro
     */
    public java.util.Calendar getFechaRegistro() {
        return fechaRegistro;
    }


    /**
     * Sets the fechaRegistro value for this DtActividad.
     * 
     * @param fechaRegistro
     */
    public void setFechaRegistro(java.util.Calendar fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }


    /**
     * Gets the clases value for this DtActividad.
     * 
     * @return clases
     */
    public publicadores.DtClase[] getClases() {
        return clases;
    }


    /**
     * Sets the clases value for this DtActividad.
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
     * Gets the cantClases value for this DtActividad.
     * 
     * @return cantClases
     */
    public int getCantClases() {
        return cantClases;
    }


    /**
     * Sets the cantClases value for this DtActividad.
     * 
     * @param cantClases
     */
    public void setCantClases(int cantClases) {
        this.cantClases = cantClases;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtActividad)) return false;
        DtActividad other = (DtActividad) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.nombreInstitucion==null && other.getNombreInstitucion()==null) || 
             (this.nombreInstitucion!=null &&
              this.nombreInstitucion.equals(other.getNombreInstitucion()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            this.duracionMinutos == other.getDuracionMinutos() &&
            this.costo == other.getCosto() &&
            ((this.fechaRegistro==null && other.getFechaRegistro()==null) || 
             (this.fechaRegistro!=null &&
              this.fechaRegistro.equals(other.getFechaRegistro()))) &&
            ((this.clases==null && other.getClases()==null) || 
             (this.clases!=null &&
              java.util.Arrays.equals(this.clases, other.getClases()))) &&
            this.cantClases == other.getCantClases();
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
        if (getNombreInstitucion() != null) {
            _hashCode += getNombreInstitucion().hashCode();
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        _hashCode += getDuracionMinutos();
        _hashCode += new Double(getCosto()).hashCode();
        if (getFechaRegistro() != null) {
            _hashCode += getFechaRegistro().hashCode();
        }
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
        _hashCode += getCantClases();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtActividad.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtActividad"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreInstitucion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreInstitucion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("duracionMinutos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "duracionMinutos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("costo");
        elemField.setXmlName(new javax.xml.namespace.QName("", "costo"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
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
        elemField.setFieldName("clases");
        elemField.setXmlName(new javax.xml.namespace.QName("", "clases"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtClase"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantClases");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantClases"));
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
