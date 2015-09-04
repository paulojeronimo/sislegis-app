package br.gov.mj.sislegis.app.rest;

import java.util.ArrayList;
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
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriBuilder;

import br.gov.mj.sislegis.app.json.DropdownMultiselectStringJSON;
import br.gov.mj.sislegis.app.json.TagJSON;
import br.gov.mj.sislegis.app.model.Tag;
import br.gov.mj.sislegis.app.service.TagService;

@Path("/tags")
public class TagEndpoint {
	
	@Inject
	private TagService tagService;
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response create(Tag entity) {
		
		tagService.save(entity);
		return Response.created(
				UriBuilder.fromResource(TagEndpoint.class)
						.path(String.valueOf(entity.getId())).build()).build();
	}

	@DELETE
	@Path("/{id:[0-9][0-9]*}")
	public Response deleteById(@PathParam("id") Long id) {
		tagService.deleteById(id);
		return Response.noContent().build();
	}

	@GET
	@Path("/{id:[0-9][0-9]*}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response findById(@PathParam("id") Long id) {
		Tag entity = tagService.findById(id);
		if (entity == null) {
			return Response.status(Status.NOT_FOUND).build();
		}
		return Response.ok(entity).build();
	}


	@GET
	@Path("/listarTodos")
	@Produces(MediaType.APPLICATION_JSON)
	public List<TagJSON> listAll() {
		return tagService.listarTodasTags();
	}
	
	@GET
	@Path("/buscarPorSufixo")
	@Produces(MediaType.APPLICATION_JSON)
	public List<TagJSON> buscarPorSufixo(@QueryParam("sufixo")String sufixo) {
		return tagService.buscaPorSufixo(sufixo);
	}

	@PUT
	@Path("/{id:[0-9][0-9]*}")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Tag entity) {
		try {
			tagService.save(entity);
		} catch (OptimisticLockException e) {
			return Response.status(Response.Status.CONFLICT)
					.entity(e.getEntity()).build();
		}

		return Response.noContent().build();
	}
	
	@GET
	@Path("/listAllDropdownMultiple")
	@Produces(MediaType.APPLICATION_JSON)
	public List<DropdownMultiselectStringJSON> listAllDropdownMultiple() {
		final List<TagJSON> results = tagService.listarTodasTags();
		List<DropdownMultiselectStringJSON> listaDropdownMultiselectJSON = new ArrayList<DropdownMultiselectStringJSON>();
		for(TagJSON tag:results){
			DropdownMultiselectStringJSON dropdownMultiselectJSON = new DropdownMultiselectStringJSON();
			dropdownMultiselectJSON.setLabel(tag.getText());
			dropdownMultiselectJSON.setId(tag.getText());
			listaDropdownMultiselectJSON.add(dropdownMultiselectJSON);
		}
		return listaDropdownMultiselectJSON;
	}	

}
