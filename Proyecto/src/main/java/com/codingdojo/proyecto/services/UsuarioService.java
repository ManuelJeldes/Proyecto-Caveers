package com.codingdojo.proyecto.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.proyecto.models.Carrera;
import com.codingdojo.proyecto.models.Usuario;
import com.codingdojo.proyecto.repositories.UsuarioRepository;



@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	public Usuario registerUser(Usuario usuario) {
		String hashed = BCrypt.hashpw(usuario.getContraseña(), BCrypt.gensalt());
		usuario.setContraseña(hashed);
		return usuarioRepository.save(usuario);
	}

	public Usuario findByEmail(String email) {
		return usuarioRepository.findByEmail(email);
	}

	public Usuario findUserById(Integer userId) {
		Optional<Usuario> u = usuarioRepository.findById(userId);
		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}

	public boolean authenticateUser(String email, String contraseña) {
		Usuario usuario = usuarioRepository.findByEmail(email);
		if (usuario == null) {
			return false;
		} else {
			if (BCrypt.checkpw(contraseña, usuario.getContraseña())) {
				return true;
			} else {
				return false;
			}
		}
	}
	
	public void agregarCarreraFavorita(Integer userId, Carrera carrera) {
        Usuario usuario = findUserById(userId);
        if (usuario != null) {
            List<Carrera> carrerasFavoritas = usuario.getCarrerasFavoritas();
            if (carrerasFavoritas == null) {
                carrerasFavoritas = new ArrayList<>();
            }
            carrerasFavoritas.add(carrera);
            usuario.setCarrerasFavoritas(carrerasFavoritas);
            usuarioRepository.save(usuario);
        }
    }

    public void quitarCarreraFavorita(Integer userId, Carrera carrera) {
        Usuario usuario = findUserById(userId);
        if (usuario != null) {
            List<Carrera> carrerasFavoritas = usuario.getCarrerasFavoritas();
            if (carrerasFavoritas != null) {
                carrerasFavoritas.remove(carrera);
                usuarioRepository.save(usuario);
            }
        }
    }
    
    public List<Carrera> obtenerCarrerasFavoritas(int userId) {
        // Implementa este método para obtener la lista de carreras favoritas de un usuario
        // Puedes utilizar la relación entre Usuario y Carrera en tu base de datos para hacerlo
        Optional<Usuario> optionalUsuario = usuarioRepository.findById(userId);

        if (optionalUsuario.isPresent()) {
            Usuario usuario = optionalUsuario.get();
            return usuario.getCarrerasFavoritas();
        } else {
            // Maneja el caso en el que el usuario no se encuentra
            return null; // o lanza una excepción según tu necesidad
        }
    }
    
    //Verifica si ya tiene la carrera en favoritos.
    public boolean carreraEnFavoritos(Integer usuarioId, Integer carreraId) {
        return usuarioRepository.existsUsuariosFavoritasByIdAndCarrerasFavoritas_Id(usuarioId, carreraId);
    }
}


