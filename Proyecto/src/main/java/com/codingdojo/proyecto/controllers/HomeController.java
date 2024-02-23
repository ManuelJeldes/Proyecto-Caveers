package com.codingdojo.proyecto.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.proyecto.models.Carrera;
import com.codingdojo.proyecto.models.Usuario;
import com.codingdojo.proyecto.services.CarreraService;
import com.codingdojo.proyecto.services.UsuarioService;
import com.codingdojo.proyecto.validator.UserValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomeController {

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private CarreraService carreraService;

	@Autowired
	private UserValidator userValidator;

	// Registro o Logeo. Se accede automaticamente al home si intentas acceder a
	// alguna url del controlador y no has iniciado sesion.

	@GetMapping("/login")
	public String loginAndRegister(@ModelAttribute("usuario") Usuario usuario, HttpSession session) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			return "views/dashboard.jsp";
		}
		return "views/login.jsp";
	}

	@GetMapping({ "/home", "/" })
	public String home(HttpSession session, Model model) {

		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			Usuario user = usuarioService.findUserById(userId);
			model.addAttribute("user", user);
			return "views/index.jsp";
		}
		return "views/index.jsp";
	}

	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {

		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			Usuario user = usuarioService.findUserById(userId);
			model.addAttribute("user", user);
			return "views/dashboard.jsp";
		}
		return "redirect:/";
	}

	@GetMapping("/compare-careers")
	public String compareCareers(HttpSession session) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			return "views/comparacion.jsp";
		}
		return "redirect:/";
	}

	@GetMapping("/compare-careers/{tipo}/{area}")
	public String compararCarreras(@PathVariable String tipo, @PathVariable String area, Model model,
			HttpSession session) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			List<Carrera> carreras = carreraService.listaCarreras(tipo, area);
			Carrera unaCarrera = carreraService.obtenerCarreraPorTipoYArea(tipo, area);
			model.addAttribute("carreras", carreras);
			model.addAttribute("unaCarrera", unaCarrera);

			return "views/comparacion.jsp";
		}
		return "redirect:/";
	}

	// Muesta todas las carreras
	@GetMapping("/carreras")
	public String allCareer(HttpSession session, Model model) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			List<Carrera> carreras = carreraService.findAllCarreras();
			Usuario usuario = usuarioService.findUserById(userId);
			model.addAttribute("carreras", carreras);
			model.addAttribute("usuario", usuario);
			return "views/todas-carreras.jsp";
		}
		return "redirect:/";
	}

	// Metodo para agregar o quitar una carrera de favoritos.
	@PostMapping("/agregar-favorita")
	public String agregarCarreraFavorita(@RequestParam("carreraId") Integer carreraId, HttpSession session) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			Carrera carrera = carreraService.findCarreraById(carreraId);
			if (carrera != null) {
				Usuario usuario = usuarioService.findUserById(userId);
				if (usuario.getCarrerasFavoritas().contains(carrera)) {
					// Si la carrera ya está en favoritos, quitarla
					usuarioService.quitarCarreraFavorita(userId, carrera);
				} else {
					// Si la carrera no está en favoritos, agregarla
					usuarioService.agregarCarreraFavorita(userId, carrera);
				}
			}
		}
		return "redirect:/carreras";
	}

	// Favoritos de test
	@PostMapping("/fav")
	public String fav(@RequestParam("carreraId") Integer carreraId, HttpSession session, Model model) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			Carrera carrera = carreraService.findCarreraById(carreraId);
			model.addAttribute("carrera", carrera);
			if (carrera != null) {
				Usuario usuario = usuarioService.findUserById(userId);
				if (usuario.getCarrerasFavoritas().contains(carrera)) {
				    // Si la carrera ya está en favoritos, quitarla
				    usuarioService.quitarCarreraFavorita(userId, carrera);
				} else {
				    // Si la carrera no está en favoritos, agregarla
				    usuarioService.agregarCarreraFavorita(userId, carrera);
				}

				// Obtener una lista actualizada de carreras favoritas
				List<Carrera> carrerasFavoritas = usuarioService.obtenerCarrerasFavoritas(userId);
				model.addAttribute("carrerasFavoritas", carrerasFavoritas);
			}
		}
		return "redirect:/test";
	}

	@GetMapping("/test")
	public String test(HttpSession session, Model model) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			Usuario usuario = usuarioService.findUserById(userId);
			model.addAttribute("usuario", usuario);
			return "views/proyectjsp3.jsp";
		}
		return "redirect:/";
	}

	@PostMapping("/test")
	public String procesar(@RequestParam("areaMasAlta") String areaMasAlta, Model model, HttpSession session) {
		// Obtener una carrera universitaria, técnica y curso del área con promedio más
		// alto

		Carrera universitaria = carreraService.obtenerCarreraPorTipoYArea("universidad", areaMasAlta);
		Carrera tecnica = carreraService.obtenerCarreraPorTipoYArea("tecnico", areaMasAlta);
		Carrera curso = carreraService.obtenerCarreraPorTipoYArea("curso", areaMasAlta);

		session.setAttribute("universidad", universitaria);
		session.setAttribute("tecnico", tecnica);
		session.setAttribute("curso", curso);

		return "redirect:/test";
	}

	@GetMapping("/comparacion/{tipo}/{area}")
	public String comparacion(@PathVariable String tipo, @PathVariable String area, HttpSession session, Model model) {
		Integer userId = (Integer) session.getAttribute("usuarioId");
		if (userId != null) {
			// la session aun esta iniciada
			Usuario usuario = usuarioService.findUserById(userId);
			List<Carrera> carreras = carreraService.listaCarreras(tipo, area);
			model.addAttribute("carreras", carreras);
			model.addAttribute("usuario", usuario);
			return "views/vs.jsp";
		}
		return "redirect:/";
	}

	@PostMapping("/fav2")
	public String fav2(@RequestParam("carreraId") Integer carreraId, @RequestParam("userId") Integer userId,
			@RequestParam("tipo") String tipo, @RequestParam("area") String area, Model model) {
		if (userId != null) {
			Carrera carrera = carreraService.findCarreraById(carreraId);
			if (carrera != null) {
				Usuario usuario = usuarioService.findUserById(userId);
				if (usuario.getCarrerasFavoritas().contains(carrera)) {
					// Si la carrera ya está en favoritos, quitarla
					usuarioService.quitarCarreraFavorita(userId, carrera);
				} else {
					// Si la carrera no está en favoritos, agregarla
					usuarioService.agregarCarreraFavorita(userId, carrera);
				}
			}
		}
		return "redirect:/comparacion/" + tipo + "/" + area;
	}

	@PostMapping("/registration")
	public String registerUsuario(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result,
			HttpSession session) {
		userValidator.validate(usuario, result);

		// Verificar si hay errores de validación
		if (result.hasErrors()) {
			return "views/login.jsp";
		}

		// Verificar si el email ya está registrado
		Usuario emailExiste = usuarioService.findByEmail(usuario.getEmail());
		if (emailExiste != null) {
			result.rejectValue("email", "error.usuario", "This email is already registered.");
			return "views/login.jsp";
		}

		// Registrar al usuario y redirigir
		Usuario u = usuarioService.registerUser(usuario);
		session.setAttribute("usuarioId", u.getId());
		return "redirect:/dashboard";
	}

	// Metodo Post para Logearnos.
	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("contraseña") String contraseña, Model model,
			HttpSession session, RedirectAttributes redirectAttributes) {
		boolean autentificacion = usuarioService.authenticateUser(email, contraseña);
		if (autentificacion) {
			Usuario usuario = usuarioService.findByEmail(email);
			session.setAttribute("usuarioId", usuario.getId());
			return "redirect:/dashboard";
		} else {
			redirectAttributes.addFlashAttribute("error", "Email o Contraseña Incorrecto");
			return "redirect:/login";
		}
	}

	// Cerramos la sesion.
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}