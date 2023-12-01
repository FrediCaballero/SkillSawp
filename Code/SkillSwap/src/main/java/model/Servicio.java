package model;

import java.util.List;

public class Servicio {
    private String nombre;
    private String telefono;
    private String descripcion;

    // Constructor
    public Servicio(String nombre, String telefono, String descripcion, List<String> logros) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.descripcion = descripcion;
    }

    // Métodos getter y setter para 'nombre'
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    // Métodos getter y setter para 'telefono'
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    // Métodos getter y setter para 'descripcion'
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }


}
