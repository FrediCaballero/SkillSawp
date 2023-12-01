/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

/**
 *
 * @author EElite
 */
public class ValidadorContraseña {
    
        public static void validarContraseña(String password, String confirmPassword) throws PasswordException {
        if (password.length() < 9) {
            throw new PasswordException("La contraseña debe tener al menos 9 caracteres.");
        }

        // Verificar si hay al menos una mayúscula y un número
        boolean contieneMayuscula = false;
        boolean contieneNumero = false;

        for (char c : password.toCharArray()) {
            if (Character.isUpperCase(c)) {
                contieneMayuscula = true;
            } else if (Character.isDigit(c)) {
                contieneNumero = true;
            }

            if (contieneMayuscula && contieneNumero) {
                // La contraseña cumple con los requisitos
                return;
            }
        }

        throw new PasswordException("La contraseña debe contener al menos una mayúscula y un número.");
    }
    
}
