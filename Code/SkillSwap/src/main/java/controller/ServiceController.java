/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author JP
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author JP
 */
package controller;

import java.util.List;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;


public class ServiceController {

public Map<String, Object> obtenerDetallesDelServicio(String servicioId) {
    Map<String, Object> detalles = new HashMap<>();

        switch (servicioId) {
         case "Electricista":
            detalles.put("nombre", "Juan Pérez");
            detalles.put("telefono", "123-456-7890");
            detalles.put("descripcion", "Juan Pérez es un electricista con más de 10 años de experiencia. Especializado en instalaciones eléctricas residenciales y comerciales. ¡Confía en sus habilidades para resolver tus problemas eléctricos!");
            detalles.put("imagen", "images/CarritoElectricista.jpg"); // Agrega la ruta de la imagen
            List<String> logrosElectricista = Arrays.asList(  "Instalación segura y eficiente de sistemas eléctricos.",
                                                              "Resolución rápida de problemas eléctricos en hogares y negocios.",
                                                              "Más de 10 años de experiencia proporcionando servicios eléctricos confiables.",
                                                              "Colaboración exitosa en proyectos eléctricos a gran escala.",
                                                              "Certificación y actualización constante en las últimas normativas eléctricas.",
                                                              "Reconocimiento por servicio excepcional a clientes satisfechos.");
            detalles.put("logros", logrosElectricista);

            break;
           

         case "TecnicoTelevisores":
            detalles.put("nombre", "María González");
            detalles.put("telefono", "987-654-3210");
            detalles.put("descripcion", " Martin Linares es un técnico de televisores altamente calificada. Con experiencia en reparación y mantenimiento de televisores de todas las marcas y modelos. ¡Confía en ella para solucionar cualquier problema con tu televisor!");
            detalles.put("imagen", "images/CarritoTelevisores.jpg"); // Agrega la ruta de la imagen
            List<String> logrosTecnicoTelevisores = Arrays.asList(
                                                                    "Reparación y mantenimiento eficiente de televisores de diferentes marcas.",
                                                                    "Diagnóstico preciso de problemas técnicos en sistemas de televisión.",
                                                                    "Experiencia de más de 10 años en el campo de la reparación de televisores.",
                                                                    "Participación exitosa en proyectos de instalación y configuración de sistemas de entretenimiento.",
                                                                    "Certificaciones actualizadas y conocimiento de las últimas tecnologías televisivas.",
                                                                    "Reconocimiento por brindar un servicio excepcional y satisfacción del cliente."
                                                                );
            detalles.put("logros", logrosTecnicoTelevisores);
            
            break;

        case "Asesor":
            detalles.put("nombre", "Carlos Rodríguez");
            detalles.put("telefono", "987-654-3210");
            detalles.put("descripcion", "Carlos Rodríguez es un asesor académico con amplia experiencia en la orientación y asesoramiento de tesis. Ha ayudado a numerosos estudiantes a alcanzar el éxito académico. ¡Contáctalo para recibir el apoyo que necesitas!");
            detalles.put("imagen", "images/CarritoAsesor.jpg"); // Agrega la ruta de la imagen     
            List<String> logrosAsesorTesis = Arrays.asList(
                                                                "Orientación exitosa de estudiantes en la elaboración de tesis de alta calidad.",
                                                                "Facilitación de procesos de investigación y desarrollo de proyectos académicos.",
                                                                "Experiencia probada en la supervisión y guía de tesis de diversos campos de estudio.",
                                                                "Colaboración con estudiantes para la publicación de artículos académicos.",
                                                                "Contribución a la mejora de habilidades de investigación y redacción en estudiantes.",
                                                                "Reconocimiento por parte de estudiantes y colegas por un asesoramiento excepcional."
                                                            );
            detalles.put("logros", logrosAsesorTesis);
            break;

        case "ProfesorParticular":
            detalles.put("nombre", "Carlos Miranda");
            detalles.put("telefono", "987-654-3210");
            detalles.put("descripcion", "Carla Miranda es una profesora particular especializada en diversas materias. Brinda clases personalizadas adaptadas a las necesidades de cada estudiante. ¡Mejora tus habilidades académicas con la ayuda de Laura!");
            detalles.put("imagen", "images/Clases particulares.jpg"); // Agrega la ruta de la imagen    
            List<String> logrosProfesorParticular = Arrays.asList(
                                                                    "Mejora significativa en el rendimiento académico de los estudiantes a lo largo de los años.",
                                                                    "Adaptación exitosa a diferentes estilos de aprendizaje y necesidades individuales.",
                                                                    "Excelentes habilidades de comunicación y explicación que facilitan la comprensión de conceptos difíciles.",
                                                                    "Reconocimiento por parte de padres y estudiantes por la dedicación y compromiso con la enseñanza.",
                                                                    "Participación activa en la actualización constante de métodos pedagógicos para ofrecer una educación de calidad.",
                                                                    "Feedback positivo y recomendaciones de estudiantes anteriores."
                                                                );
            detalles.put("logros", logrosProfesorParticular);
            break;

        case "TecnicoRefrigeradoras":
            detalles.put("nombre", "Roberto López");
            detalles.put("telefono", "987-654-3210");
            detalles.put("descripcion", "Roberto López es un técnico de refrigeradoras con experiencia en reparación y mantenimiento. Ofrece servicios rápidos y eficientes para asegurar el buen funcionamiento de tus electrodomésticos. ¡Confía en Roberto para solucionar problemas de refrigeración!");
            detalles.put("imagen", "images/CarritoRefrigerador.jpg"); // Agrega la ruta de la imagen           
            List<String> logrosTecRefrigeradores = Arrays.asList(
                                                                    "Resolución rápida y eficiente de problemas en refrigeradores de diferentes marcas y modelos.",
                                                                    "Más de 10 años de experiencia proporcionando servicios de reparación y mantenimiento confiables.",
                                                                    "Colaboración exitosa en proyectos de instalación y configuración de sistemas de refrigeración.",
                                                                    "Certificación y actualización constante en las últimas tecnologías y normativas de refrigeración.",
                                                                    "Reconocimiento por servicio excepcional y satisfacción de clientes.",
                                                                    "Feedback positivo y recomendaciones de clientes satisfechos."
                                                                );
            detalles.put("logros", logrosTecRefrigeradores);
            break;

        case "ProfesorMatematicas":
            detalles.put("nombre", "Ana Ramírez");
            detalles.put("telefono", "987-654-3210");
            detalles.put("descripcion", "Ana Ramírez es una profesora de matemáticas con pasión por la enseñanza. Su enfoque didáctico hace que las matemáticas sean comprensibles y accesibles para todos los estudiantes. ¡Mejora tu comprensión de las matemáticas con Ana!");
            detalles.put("imagen", "images/CarritoProfesor.jpg"); // Agrega la ruta de la imagen    
            List<String> logrosProfMatematicas = Arrays.asList(
                                                                "Éxito demostrado en la mejora del rendimiento académico de los estudiantes en matemáticas.",
                                                                "Adaptación efectiva a diferentes niveles de habilidad y estilos de aprendizaje.",
                                                                "Participación activa en actividades extracurriculares relacionadas con las matemáticas.",
                                                                "Reconocimiento por parte de estudiantes y colegas por su dedicación a la enseñanza de las matemáticas.",
                                                                "Feedback positivo y recomendaciones de estudiantes que han experimentado un progreso significativo.",
                                                                "Desarrollo de material didáctico innovador para facilitar la comprensión de conceptos matemáticos."
                                                            );
            detalles.put("logros", logrosProfMatematicas);

            break;
        
            // Agrega más casos según tus servicios

            default:
                // Si el servicioId no coincide con ningún caso, puedes devolver detalles genéricos o lanzar una excepción.
                detalles.put("nombre", "Nombre del Trabajador");
                detalles.put("telefono", "123-456-7890");
                detalles.put("descripcion", "Este es un trabajador experto en...");
                List<String> logros = Arrays.asList(
                                                                "Logros 1.",
                                                                "Logros 2.",
                                                                "Logros 3.",
                                                                "Logros 4.",
                                                                "Logros 5."
                                                            );
                detalles.put("logros", logros);
                break;
        }

        return detalles;
    }
    
    
}
