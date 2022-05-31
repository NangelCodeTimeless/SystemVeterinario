package Mapeos_Tablas_BD;

/**
 *
 * @author NICOLAS
 */
public class Tratamiento {
    private int idTratamiento;
    private String dniPersona;
    private String nombre;
    private String apellido;
    private String tratamiento;
    private String diagnostico;
    private String proceso;
    private String Tiempo;
    private boolean estado;

    public Tratamiento() {}

    public Tratamiento(String dniPersona, String tratamiento, String diagnostico, String proceso, String Tiempo) {
        this.dniPersona = dniPersona;
        this.tratamiento = tratamiento;
        this.diagnostico = diagnostico;
        this.proceso = proceso;
        this.Tiempo = Tiempo;
    }

    public Tratamiento(int idTratamiento, String tratamiento, String diagnostico, String proceso, String Tiempo) {
        this.idTratamiento = idTratamiento;
        this.tratamiento = tratamiento;
        this.diagnostico = diagnostico;
        this.proceso = proceso;
        this.Tiempo = Tiempo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Tratamiento(int idTratamiento) {
        this.idTratamiento = idTratamiento;
    }

    public int getIdTratamiento() {
        return idTratamiento;
    }

    public void setIdTratamiento(int idTratamiento) {
        this.idTratamiento = idTratamiento;
    }

    public String getDniPersona() {
        return dniPersona;
    }

    public void setDniPersona(String dniPersona) {
        this.dniPersona = dniPersona;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public String getProceso() {
        return proceso;
    }

    public void setProceso(String proceso) {
        this.proceso = proceso;
    }

    public String getTiempo() {
        return Tiempo;
    }

    public void setTiempo(String Tiempo) {
        this.Tiempo = Tiempo;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
}
