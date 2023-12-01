package controller;

import model.Pregunta;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class PreguntaController {
    private List<Pregunta> preguntas;

    public PreguntaController() {
        // Inicializar la lista de preguntas
        preguntas = new ArrayList<>();
    }

    // Método para agregar una nueva pregunta
    public void agregarPregunta(Pregunta pregunta) {
        // Lógica para agregar una pregunta a la lista
        preguntas.add(pregunta);
    }

    // Método para obtener todas las preguntas
    public List<Pregunta> obtenerTodasLasPreguntas() {
        return preguntas;
    }

    // Método para obtener una pregunta por ID de Servicio
    public Pregunta obtenerPreguntaPorIdServicio(int idServicio) {
        // Lógica para buscar una pregunta por ID de Servicio
        for (Pregunta pregunta : preguntas) {
            if (pregunta.getIdServicio() == idServicio) {
                return pregunta;
            }
        }
        return null; // Retornar null si no se encuentra la pregunta con el ID de Servicio especificado
    }

    // Método para actualizar una pregunta
    public void actualizarPregunta(Pregunta preguntaActualizada) {
        // Lógica para actualizar una pregunta
        for (int i = 0; i < preguntas.size(); i++) {
            Pregunta pregunta = preguntas.get(i);
            if (pregunta.getIdServicio() == preguntaActualizada.getIdServicio()) {
                preguntas.set(i, preguntaActualizada);
                break;
            }
        }
    }

    // Método para eliminar una pregunta por ID de Servicio
    public void eliminarPregunta(int idServicio) {
        // Lógica para eliminar una pregunta por ID de Servicio
        preguntas.removeIf(pregunta -> pregunta.getIdServicio() == idServicio);
    }
}
