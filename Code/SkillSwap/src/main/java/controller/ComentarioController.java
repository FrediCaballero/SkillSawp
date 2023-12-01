package controller;

import model.Comentario;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ComentarioController {
    private List<Comentario> comentarios;

    public ComentarioController() {
        // Inicializar la lista de comentarios
        comentarios = new ArrayList<>();
    }

    // Método para agregar un nuevo comentario
    public void agregarComentario(Comentario comentario) {
        // Lógica para agregar un comentario a la lista
        comentarios.add(comentario);
    }

    // Método para obtener todos los comentarios
    public List<Comentario> obtenerTodosLosComentarios() {
        return comentarios;
    }

    // Método para obtener un comentario por ID de Servicio
    public Comentario obtenerComentarioPorIdServicio(int idServicio) {
        // Lógica para buscar un comentario por ID de Servicio
        for (Comentario comentario : comentarios) {
            if (comentario.getIdServicio() == idServicio) {
                return comentario;
            }
        }
        return null; // Retornar null si no se encuentra el comentario con el ID de Servicio especificado
    }

    // Método para actualizar un comentario
    public void actualizarComentario(Comentario comentarioActualizado) {
        // Lógica para actualizar un comentario
        for (int i = 0; i < comentarios.size(); i++) {
            Comentario comentario = comentarios.get(i);
            if (comentario.getIdServicio() == comentarioActualizado.getIdServicio()) {
                comentarios.set(i, comentarioActualizado);
                break;
            }
        }
    }

    // Método para eliminar un comentario por ID de Servicio
    public void eliminarComentario(int idServicio) {
        // Lógica para eliminar un comentario por ID de Servicio
        comentarios.removeIf(comentario -> comentario.getIdServicio() == idServicio);
    }
}
