
package publicadores;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the publicadores package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _DtClase_QNAME = new QName("http://publicadores/", "dtClase");
    private final static QName _DtProfesor_QNAME = new QName("http://publicadores/", "dtProfesor");
    private final static QName _DtRegistro_QNAME = new QName("http://publicadores/", "dtRegistro");
    private final static QName _DtSocio_QNAME = new QName("http://publicadores/", "dtSocio");
    private final static QName _DtUsuario_QNAME = new QName("http://publicadores/", "dtUsuario");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: publicadores
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link DtClase }
     * 
     */
    public DtClase createDtClase() {
        return new DtClase();
    }

    /**
     * Create an instance of {@link DtProfesor }
     * 
     */
    public DtProfesor createDtProfesor() {
        return new DtProfesor();
    }

    /**
     * Create an instance of {@link DtRegistro }
     * 
     */
    public DtRegistro createDtRegistro() {
        return new DtRegistro();
    }

    /**
     * Create an instance of {@link DtSocio }
     * 
     */
    public DtSocio createDtSocio() {
        return new DtSocio();
    }

    /**
     * Create an instance of {@link DtUsuario }
     * 
     */
    public DtUsuario createDtUsuario() {
        return new DtUsuario();
    }

    /**
     * Create an instance of {@link DtActividad }
     * 
     */
    public DtActividad createDtActividad() {
        return new DtActividad();
    }

    /**
     * Create an instance of {@link DtActividadArray }
     * 
     */
    public DtActividadArray createDtActividadArray() {
        return new DtActividadArray();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DtClase }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DtClase }{@code >}
     */
    @XmlElementDecl(namespace = "http://publicadores/", name = "dtClase")
    public JAXBElement<DtClase> createDtClase(DtClase value) {
        return new JAXBElement<DtClase>(_DtClase_QNAME, DtClase.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DtProfesor }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DtProfesor }{@code >}
     */
    @XmlElementDecl(namespace = "http://publicadores/", name = "dtProfesor")
    public JAXBElement<DtProfesor> createDtProfesor(DtProfesor value) {
        return new JAXBElement<DtProfesor>(_DtProfesor_QNAME, DtProfesor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DtRegistro }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DtRegistro }{@code >}
     */
    @XmlElementDecl(namespace = "http://publicadores/", name = "dtRegistro")
    public JAXBElement<DtRegistro> createDtRegistro(DtRegistro value) {
        return new JAXBElement<DtRegistro>(_DtRegistro_QNAME, DtRegistro.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DtSocio }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DtSocio }{@code >}
     */
    @XmlElementDecl(namespace = "http://publicadores/", name = "dtSocio")
    public JAXBElement<DtSocio> createDtSocio(DtSocio value) {
        return new JAXBElement<DtSocio>(_DtSocio_QNAME, DtSocio.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DtUsuario }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link DtUsuario }{@code >}
     */
    @XmlElementDecl(namespace = "http://publicadores/", name = "dtUsuario")
    public JAXBElement<DtUsuario> createDtUsuario(DtUsuario value) {
        return new JAXBElement<DtUsuario>(_DtUsuario_QNAME, DtUsuario.class, null, value);
    }

}
