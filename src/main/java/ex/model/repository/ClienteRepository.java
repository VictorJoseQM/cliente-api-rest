package ex.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ex.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long>{
	@Query("SELECT c FROM Cliente c WHERE LOWER(c.nome) LIKE LOWER(CONCAT('%', :nome, '%'))")
    List<Cliente> buscarPorNome(@Param("nome") String nome);
}

