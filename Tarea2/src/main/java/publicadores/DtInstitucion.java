/**
 * DtInstitucion.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtInstitucion  implements java.io.Serializable {
    private java.lang.String nombre;

    private java.lang.String descripcion;

    private java.lang.String url;

    private publicadores.DtProfesor[] profesores;

    private int cantProfesores;

    private publicadores.DtActividad[] actividades;

    private int cantActividades;

    public DtInstitucion() {
    }

    public DtInstitucion(
           java.lang.String nombre,
           java.lang.String descripcion,
           java.lang.String url,
           publicadores.DtProfesor[] profesores,
           int cantProfesores,
           publicadores.DtActividad[] actividades,
           int cantActividades) {
           this.nombre = nombre;
           this.descripcion = descripcion;
           this.url = url;
           this.profesores = profesores;
           this.cantProfesores = cantProfesores;
           this.actividades = actividades;
           this.cantActividades = cantActividades;
    }


    /**
     * Gets the nombre value for this DtInstitucion.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtInstitucion.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the descripcion value for this DtInstitucion.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this DtInstitucion.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the url value for this DtInstitucion.
     * 
     * @return url
     */
    public java.lang.String getUrl() {
        return url;
    }


    /**
     * Sets the url value for this DtInstitucion.
     * 
     * @param url
     */
    public void setUrl(java.lang.String url) {
        this.url = url;
    }


    /**
     * Gets the profesores value for this DtInstitucion.
     * 
     * @return profesores
     */
    public publicadores.DtProfesor[] getProfesores() {
        return profesores;
    }


    /**
     * Sets the profesores value for this DtInstitucion.
     * 
     * @param profesores
     */
    public void setProfesores(publicadores.DtProfesor[] profesores) {
        this.profesores = profesores;
    }

    public publicadores.DtProfesor getProfesores(int i) {
        return this.profesores[i];
    }

    public void setProfesores(int i, publicadores.DtProfesor _value) {
        this.profesores[i] = _value;
    }


    /**
     * Gets the cantProfesores value for this DtInstitucion.
     * 
     * @return cantProfesores
     */
    public int getCantProfesores() {
        return cantProfesores;
    }


    /**
     * Sets the cantProfesores value for this DtInstitucion.
     * 
     * @param cantProfesores
     */
    public void setCantProfesores(int cantProfesores) {
        this.cantProfesores = cantProfesores;
    }


    /**
     * Gets the actividades value for this DtInstitucion.
     * 
     * @return actividades
     */
    public publicadores.DtActividad[] getActividades() {
        return actividades;
    }


    /**
     * Sets the actividades value for this DtInstitucion.
     * 
     * @param actividades
     */
    public void setActividades(publicadores.DtActividad[] actividades) {
        this.actividades = actividades;
    }

    public publicadores.DtActividad getActividades(int i) {
        return this.actividades[i];
    }

    public void setActividades(int i, publicadores.DtActividad _value) {
        this.actividades[i] = _value;
    }


    /**
     * Gets the cantActividades value for this DtInstitucion.
     * 
     * @return cantActividades
     */
    public int getCantActividades() {
        return cantActividades;
    }


    /**
     * Sets the cantActividades value for this DtInstitucion.
     * 
     * @param cantActividades
     */
    public void setCantActividades(int cantActividades) {
        this.cantActividades = cantActividades;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtInstitucion)) return false;
        DtInstitucion other = (DtInstitucion) obj;
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
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            ((this.url==null && other.getUrl()==null) || 
             (this.url!=null &&
              this.url.equals(other.getUrl()))) &&
            ((this.profesores==null && other.getProfesores()==null) || 
             (this.profesores!=null &&
              java.util.Arrays.equals(this.profesores, other.getProfesores()))) &&
            this.cantProfesores == other.getCantProfesores() &&
            ((this.actividades==null && other.getActividades()==null) || 
             (this.actividades!=null &&
              java.util.Arrays.equals(this.actividades, other.getActividades()))) &&
            this.cantActividades == other.getCantActividades();
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
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        if (getUrl() != null) {
            _hashCode += getUrl().hashCode();
        }
        if (getProfesores() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getProfesores());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getProfesores(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        _hashCode += getCantProfesores();
        if (getActividades() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getActividades());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getActividades(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        _hashCode += getCantActividades();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtInstitucion.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtInstitucion"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
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
        elemField.setFieldName("url");
        elemField.setXmlName(new javax.xml.namespace.QName("", "url"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("profesores");
        elemField.setXmlName(new javax.xml.namespace.QName("", "profesores"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtProfesor"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantProfesores");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantProfesores"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("actividades");
        elemField.setXmlName(new javax.xml.namespace.QName("", "actividades"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtActividad"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantActividades");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantActividades"));
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
