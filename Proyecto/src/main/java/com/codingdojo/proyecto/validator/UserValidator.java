package com.codingdojo.proyecto.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.codingdojo.proyecto.models.Usuario;



@Component
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Usuario.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Usuario usuario = (Usuario) target;
		if (!usuario.getPasswordConfirmation().equals(usuario.getContraseña())) {
			errors.rejectValue("passwordConfirmation", "Match");
		}
	}
}



