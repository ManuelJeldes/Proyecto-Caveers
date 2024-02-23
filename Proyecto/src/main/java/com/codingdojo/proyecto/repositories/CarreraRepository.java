package com.codingdojo.proyecto.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.codingdojo.proyecto.models.Carrera;



@Repository
public interface CarreraRepository extends CrudRepository<Carrera, Long>{
	
	Optional<Carrera> findById(Integer id);
	
	List<Carrera> findAll();
	
	
	  // Método personalizado para buscar una carrera aleatoria por tipo y área
    @Query(value = "SELECT * FROM carreras WHERE tipo = :tipo AND area = :area ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Carrera findByTipoAndArea(@Param("tipo") String tipo, @Param("area") String area);
    
    @Query(value = "SELECT * FROM carreras WHERE tipo = :tipo AND area = :area", nativeQuery = true)
    List<Carrera> listaCarreras(@Param("tipo") String tipo, @Param("area") String area);
	

}

