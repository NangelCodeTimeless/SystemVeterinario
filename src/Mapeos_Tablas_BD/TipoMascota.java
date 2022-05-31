package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class TipoMascota {
    private int id_tipomascota;
    private String descripcion;

    public TipoMascota() {
    }

    public TipoMascota(int id_tipomascota) {
        this.id_tipomascota = id_tipomascota;
    }

    public TipoMascota(int id_tipomascota, String descripcion) {
        this.id_tipomascota = id_tipomascota;
        this.descripcion = descripcion;
    }

    public int getId_tipomascota() {
        return id_tipomascota;
    }

    public void setId_tipomascota(int id_tipomascota) {
        this.id_tipomascota = id_tipomascota;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return descripcion;
    }
}
