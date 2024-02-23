package com.codingdojo.proyecto.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.proyecto.models.Carrera;
import com.codingdojo.proyecto.repositories.CarreraRepository;



@Service
public class CarreraService {
	
	@Autowired
    private CarreraRepository carreraRepository;


    public Carrera findCarreraById(Integer carreraId) {
        Optional<Carrera> optionalCarrera = carreraRepository.findById(carreraId);
        return optionalCarrera.orElse(null);
    }

    public List<Carrera> findAllCarreras() {
    	List<Carrera> carreras = carreraRepository.findAll();
        return carreras;
    }
    
    public Carrera obtenerCarreraPorTipoYArea(String tipo, String area) {
        return carreraRepository.findByTipoAndArea(tipo, area);
    }
    
    public List<Carrera> listaCarreras(String tipo, String area) {
        return carreraRepository.listaCarreras(tipo, area);
    }
}


