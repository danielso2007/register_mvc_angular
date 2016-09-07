package br.com.daniel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.daniel.domain.User;
import br.com.daniel.lang.RepositoryException;
import br.com.daniel.model.ResultModel;
import br.com.daniel.repository.UserRepository;

@Controller
@RequestMapping("/user")
public final class UsuarioController {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ResultModel result;

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView newObject() {
		return new ModelAndView("new");
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		return new ModelAndView("list");
	}

	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable Long id) throws RepositoryException {
		User userModel = userRepository.findById(id);
		return new ModelAndView("view", "userModel", userModel);
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public @ResponseBody ResultModel Salvar(@RequestBody User userModel) {
		try {
			userRepository.saveOrUpdate(userModel);
			result.setId(1);
			result.setMsg("Inserido com sucesso!");

		} catch (Exception e) {
			result.setId(2);
			result.setMsg(String.format("Erro ao salvar (%s)", e.getMessage()));
		}

		return result;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public @ResponseBody ResultModel view(@RequestBody User userModel) {
		try {
			userRepository.saveOrUpdate(userModel);
			result.setId(1);
			result.setMsg("Alterado com sucesso!");
		} catch (Exception e) {
			result.setId(2);
			result.setMsg(String.format("Erro ao alterar (%s)", e.getMessage()));
		}

		return result;
	}

	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public @ResponseBody List<User> listAll() {
		return userRepository.findAll();
	}

	@RequestMapping(value = "/remove/{id}", method = RequestMethod.DELETE)
	public @ResponseBody void remove(@PathVariable Long id) throws RepositoryException {
		userRepository.remove(id);
	}

}
