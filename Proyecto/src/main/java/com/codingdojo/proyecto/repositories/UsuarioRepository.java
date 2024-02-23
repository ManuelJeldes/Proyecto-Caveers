package com.codingdojo.proyecto.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.proyecto.models.Usuario;



@Repository
public interface UsuarioRepository extends CrudRepository<Usuario, Long>{
	Usuario findByEmail(String email);
	
	Optional<Usuario> findById(Integer id);

	Usuario findByNombre(String name);

    boolean existsUsuariosFavoritasByIdAndCarrerasFavoritas_Id(Integer usuarioId, Integer carreraId);
	
}

