package br.gov.mj.sislegis.app.rest;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.OptimisticLockException;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriBuilder;

import br.gov.mj.sislegis.app.model.Tarefa;
import br.gov.mj.sislegis.app.service.Service;
import br.gov.mj.sislegis.app.service.TarefaService;


@Path("/tarefas")
public class TarefaEndpoint {
	@Inject
	private Service<Tarefa> service;
	
	@Inject
	private TarefaService tarefaService;

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response create(Tarefa entity, @HeaderParam("Referer") String referer) {
		tarefaService.save(entity, referer);
		return Response.created(
				UriBuilder.fromResource(TarefaEndpoint.class)
						.path(String.valueOf(entity.getId())).build()).build();
	}

	@DELETE
	@Path("/{id:[0-9][0-9]*}")
	public Response deleteById(@PathParam("id") Long id) {
		service.deleteById(id);
		return Response.noContent().build();
	}

	@GET
	@Path("/{id:[0-9][0-9]*}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response findById(@PathParam("id") Long id) {
		return Response.ok(tarefaService.buscarPorId(id)).build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Tarefa> listAll(
			@QueryParam("start") Integer startPosition,
			@QueryParam("max") Integer maxResult) {
		
		return service.listAll();
	}
	
	@GET
	@Path("/usuario")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Tarefa> buscarPorUsuario(@QueryParam("idUsuario") Long idUsuario) {
		return tarefaService.buscarPorUsuario(idUsuario);
	}

	@PUT
	@Path("/{id:[0-9][0-9]*}")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Tarefa entity, @HeaderParam("Referer") String referer) {
		try {
			entity = tarefaService.save(entity, referer);
		} catch (OptimisticLockException e) {
			return Response.status(Response.Status.CONFLICT)
					.entity(e.getEntity()).build();
		}

		return Response.noContent().build();
	}
}