package com.diep.onlinegrocery.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.security.core.Authentication;
import com.diep.onlinegrocery.admin.dto.UserDto;
import com.diep.onlinegrocery.admin.entity.User;
import com.diep.onlinegrocery.admin.service.UserService;
import org.springframework.security.core.context.SecurityContextHolder;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
public class AuthController {

	private UserService userService;

	public AuthController(UserService userService) {
		this.userService = userService;
	}

	// handler method to handle home page request
	@GetMapping({ "/", "/index" })
	public String home() {
		return "admin/index";
	}
	
	@GetMapping({ "/page404" })
	public String page404() {
		return "admin/404";
	}

	// handler method to handle login request
	@GetMapping("/login")
	public String login(HttpServletRequest request) {
		Authentication authentication = (Authentication) request.getUserPrincipal();
		if (authentication != null && authentication.isAuthenticated()) {
			return "redirect:/users";
		} else {
			return "admin/login";
		}
	}

	// handler method to handle user registration form request
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		// create model object to store form data
		UserDto user = new UserDto();
		model.addAttribute("user", user);
		return "admin/register";
	}

	// handler method to handle user registration form submit request
	@PostMapping("/register/save")
	public String registration(@Valid @ModelAttribute("user") UserDto userDto, BindingResult result, Model model) {
		User existingUser = userService.findUserByEmail(userDto.getEmail());

		if (existingUser != null && existingUser.getEmail() != null && !existingUser.getEmail().isEmpty()) {
			result.rejectValue("email", null, "There is already an account registered with the same email");
		}

		if (result.hasErrors()) {
			model.addAttribute("user", userDto);
			return "/admin/register";
		}

		userService.saveUser(userDto);
		return "redirect:/register?success";
	}

	// handler method to handle list of users
	@GetMapping("/users")
	public String users(Model model) {
		List<UserDto> users = userService.findAllUsers();
		model.addAttribute("users", users);
		return "admin/users";
	}
}
