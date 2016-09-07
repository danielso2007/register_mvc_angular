package br.com.daniel.repository;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import br.com.daniel.domain.User;
import br.com.daniel.lang.RepositoryException;
import br.com.daniel.util.Check;

@Repository
public class UserRepository implements Serializable {
	
	private static final long serialVersionUID = -8548252717921176345L;

	private Log log = LogFactory.getLog(this.getClass());
	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;

	@javax.transaction.Transactional
	public void saveOrUpdate(User user) {
		try {
			if (Check.isNewEntity(user)) {
				manager.persist(user);
			} else {
				manager.merge(user);
			}
		} catch (Exception e) {
			log.error(e);
		}
	}

	public User findById(Long id) throws RepositoryException {
		if (Check.isNull(id)) {
			throw new IllegalArgumentException("O id não pode ser nulo");
		}
		try {
			return manager.find(User.class, id);
		} catch (Exception e) {
			log.error(e);
			throw new RepositoryException(e);
		}
	}

	@javax.transaction.Transactional
	public void remove(Long id) throws RepositoryException {
		User user = this.findById(id);
		try {
			manager.remove(user);
		} catch (Exception e) {
			log.error(e);
			throw new RepositoryException(e);
		}
	}

	public List<User> findAll() {
		return manager.createQuery("SELECT u FROM User u ORDER BY u.name ", User.class).getResultList();
	}

}
