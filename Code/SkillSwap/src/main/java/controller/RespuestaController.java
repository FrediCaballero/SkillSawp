package controller;

import model.Respuesta;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class RespuestaController {
    private List<Respuesta> respuestas;

    public RespuestaController() {
        // Inicializar la lista de respuestas
        respuestas = new ArrayList<>();
    }

    // Método para agregar una nueva respuesta
    public void agregarRespuesta(Respuesta respuesta) {
        // Lógica para agregar una respuesta a la lista
        respuestas.add(respuesta);
    }

    // Método para obtener todas las respuestas
    public List<Respuesta> obtenerTodasLasRespuestas() {
        return respuestas;
    }

    // Método para obtener una respuesta por ID de Comentario
    public Respuesta obtenerRespuestaPorIdComentario(int idComentario) {
        // Lógica para buscar una respuesta por ID de Comentario
        for (Respuesta respuesta : respuestas) {
            if (respuesta.getIdComentario() == idComentario) {
                return respuesta;
            }
        }
        return null; // Retornar null si no se encuentra la respuesta con el ID de Comentario especificado
    }

    // Método para actualizar una respuesta
    public void actualizarRespuesta(Respuesta respuestaActualizada) {
        // Lógica para actualizar una respuesta
        for (int i = 0; i < respuestas.size(); i++) {
            Respuesta respuesta = respuestas.get(i);
            if (respuesta.getIdComentario() == respuestaActualizada.getIdComentario()) {
                respuestas.set(i, respuestaActualizada);
                break;
            }
        }
    }

    // Método para eliminar una respuesta por ID de Comentario
    public void eliminarRespuesta(int idComentario) {
        // Lógica para eliminar una respuesta por ID de Comentario
        respuestas.removeIf(respuesta -> respuesta.getIdComentario() == idComentario);
    }
}
