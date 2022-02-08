package com.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.model.Destino;

public interface DestinosRepo extends CrudRepository<Destino, Integer> {

	@Query(value="select CASE WHEN count(1) > 0 THEN 'true' ELSE 'false' FALSE from destinos where id = :id", nativeQuery = true)
	public boolean exist(int id);
}
