package controller;

import java.util.ArrayList;
import java.util.List;

import model.Reto;

public class RetoController {
    private List<Reto> retos;

    public RetoController() {
        // Inicializar la lista de retos
        retos = new ArrayList<>();
    }

    // Método para agregar un nuevo reto
    public void agregarReto(Reto reto) {
        // Lógica para agregar un reto a la lista
        retos.add(reto);
    }

    // Método para obtener todos los retos
    public List<Reto> obtenerTodosLosRetos() {
        return retos;
    }

    // Método para obtener un reto por ID
    public Reto obtenerRetoPorId(int id) {
        // Lógica para buscar un reto por ID
        for (Reto reto : retos) {
            if (reto.getIdReto() == id) {
                return reto;
            }
        }
        return null; // Retornar null si no se encuentra el reto con el ID especificado
    }

    // Método para actualizar un reto
    public void actualizarReto(Reto retoActualizado) {
        // Lógica para actualizar un reto
        for (int i = 0; i < retos.size(); i++) {
            Reto reto = retos.get(i);
            if (reto.getIdReto() == retoActualizado.getIdReto()) {
                retos.set(i, retoActualizado);
                break;
            }
        }
    }

    // Método para eliminar un reto por ID
    public void eliminarReto(int id) {
        // Lógica para eliminar un reto por ID
        retos.removeIf(reto -> reto.getIdReto() == id);
    }
}
