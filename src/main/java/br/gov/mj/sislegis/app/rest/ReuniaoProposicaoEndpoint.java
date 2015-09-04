package br.gov.mj.sislegis.app.rest;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.OptimisticLockException;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriBuilder;

import br.gov.mj.sislegis.app.model.ReuniaoProposicao;
import br.gov.mj.sislegis.app.service.ReuniaoProposicaoService;

@Path("/reuniaoProposicao")
public class ReuniaoProposicaoEndpoint {

	@Inject
	private ReuniaoProposicaoService service;
	
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response create(ReuniaoProposicao entity) {
		service.save(entity);
		return Response.created(
				UriBuilder.fromResource(ReuniaoProposicaoEndpoint.class)
						.path(String.valueOf(entity.getId())).build()).build();
	}
	
	@DELETE
	@Path("/{idReuniao:[0-9][0-9]*}/{idProposicao:[0-9][0-9]*}")
	public Response deleteById(@PathParam("idReuniao") Long idReuniao, @PathParam("idProposicao") Long idProposicao) {
		service.deleteById(idReuniao, idProposicao);
		return Response.noContent().build();
	}

	@GET
	@Path("/{id:[0-9][0-9]*}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response findById(@PathParam("id") Long id) {
		// FIXME: fazer parecido com o deleteById pois é uma tabela associativa
		return Response.ok(service.findById(id)).build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<ReuniaoProposicao> listAll() {
		return service.listAll();
	}

	@PUT
	@Path("/{id:[0-9][0-9]*}")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(ReuniaoProposicao entity) {
		try {
			entity = service.save(entity);
		} catch (OptimisticLockException e) {
			return Response.status(Response.Status.CONFLICT)
					.entity(e.getEntity()).build();
		}

		return Response.noContent().build();
	}
}
