package br.gov.mj.sislegis.app.service.ejbs;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.gov.mj.sislegis.app.model.Equipe;
import br.gov.mj.sislegis.app.model.EquipeUsuario;
import br.gov.mj.sislegis.app.model.Usuario;
import br.gov.mj.sislegis.app.service.AbstractPersistence;
import br.gov.mj.sislegis.app.service.EquipeService;
import br.gov.mj.sislegis.app.service.UsuarioService;

@Stateless
public class EquipeServiceEjb extends AbstractPersistence<Equipe, Long>
		implements EquipeService {

	@PersistenceContext
	private EntityManager em;

	@Inject
	private UsuarioService usuarioService;

	public EquipeServiceEjb() {
		super(Equipe.class);
	}

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	@Override
	public Equipe salvarEquipe(Equipe equipe) {
		for (EquipeUsuario equipeUsuario : equipe.getListaEquipeUsuario()) {
			equipeUsuario.setEquipe(equipe);
			Usuario managedUsuario = usuarioService.findById(equipeUsuario.getUsuario().getId());
			equipeUsuario.setUsuario(managedUsuario);
		}
		
		Equipe managedEquipe = this.save(equipe);

		return managedEquipe;
	}
}
