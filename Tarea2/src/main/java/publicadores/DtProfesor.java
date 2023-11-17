/**
 * DtProfesor.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtProfesor  extends publicadores.DtUsuario  implements java.io.Serializable {
    private java.lang.String biografia;

    private publicadores.DtClase[] clases;

    private java.lang.String descripcionGeneral;

    private java.lang.String nombreInstitucion;

    private java.lang.String sitioWeb;

    public DtProfesor() {
    }

    public DtProfesor(
           java.lang.String apellido,
           java.lang.String correoElectronico,
           java.util.Calendar fechaNacimiento,
           java.lang.String nickname,
           java.lang.String nombre,
           java.lang.String biografia,
           publicadores.DtClase[] clases,
           java.lang.String descripcionGeneral,
           java.lang.String nombreInstitucion,
           java.lang.String sitioWeb) {
        super(
            apellido,
            correoElectronico,
            fechaNacimiento,
            nickname,
            nombre);
        this.biografia = biografia;
        this.clases = clases;
        this.descripcionGeneral = descripcionGeneral;
        this.nombreInstitucion = nombreInstitucion;
        this.sitioWeb = sitioWeb;
    }


    /**
     * Gets the biografia value for this DtProfesor.
     *
     * @return biografia
     */
    public java.lang.String getBiografia() {
        return biografia;
    }


    /**
     * Sets the biografia value for this DtProfesor.
     *
     * @param biografia
     */
    public void setBiografia(java.lang.String biografia) {
        this.biografia = biografia;
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
     * Gets the descripcionGeneral value for this DtProfesor.
     *
     * @return descripcionGeneral
     */
    public java.lang.String getDescripcionGeneral() {
        return descripcionGeneral;
    }


    /**
     * Sets the descripcionGeneral value for this DtProfesor.
     *
     * @param descripcionGeneral
     */
    public void setDescripcionGeneral(java.lang.String descripcionGeneral) {
        this.descripcionGeneral = descripcionGeneral;
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


    /**
     * Gets the sitioWeb value for this DtProfesor.
     *
     * @return sitioWeb
     */
    public java.lang.String getSitioWeb() {
        return sitioWeb;
    }


    /**
     * Sets the sitioWeb value for this DtProfesor.
     *
     * @param sitioWeb
     */
    public void setSitioWeb(java.lang.String sitioWeb) {
        this.sitioWeb = sitioWeb;
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
            ((this.biografia==null && other.getBiografia()==null) ||
             (this.biografia!=null &&
              this.biografia.equals(other.getBiografia()))) &&
            ((this.clases==null && other.getClases()==null) ||
             (this.clases!=null &&
              java.util.Arrays.equals(this.clases, other.getClases()))) &&
            ((this.descripcionGeneral==null && other.getDescripcionGeneral()==null) ||
             (this.descripcionGeneral!=null &&
              this.descripcionGeneral.equals(other.getDescripcionGeneral()))) &&
            ((this.nombreInstitucion==null && other.getNombreInstitucion()==null) ||
             (this.nombreInstitucion!=null &&
              this.nombreInstitucion.equals(other.getNombreInstitucion()))) &&
            ((this.sitioWeb==null && other.getSitioWeb()==null) ||
             (this.sitioWeb!=null &&
              this.sitioWeb.equals(other.getSitioWeb())));
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
        if (getBiografia() != null) {
            _hashCode += getBiografia().hashCode();
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
        if (getDescripcionGeneral() != null) {
            _hashCode += getDescripcionGeneral().hashCode();
        }
        if (getNombreInstitucion() != null) {
            _hashCode += getNombreInstitucion().hashCode();
        }
        if (getSitioWeb() != null) {
            _hashCode += getSitioWeb().hashCode();
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
        elemField.setFieldName("biografia");
        elemField.setXmlName(new javax.xml.namespace.QName("", "biografia"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("clases");
        elemField.setXmlName(new javax.xml.namespace.QName("", "clases"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtClase"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcionGeneral");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcionGeneral"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreInstitucion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreInstitucion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("sitioWeb");
        elemField.setXmlName(new javax.xml.namespace.QName("", "sitioWeb"));
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
