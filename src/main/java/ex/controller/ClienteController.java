package ex.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;

import ex.model.Cliente;
import ex.model.repository.ClienteRepository;

@RestController
@RequestMapping("/api/clientes")
@CrossOrigin("*")
public class ClienteController {

    @Autowired
    private ClienteRepository repository;

    @PostMapping
    public ResponseEntity<ClienteFormRequest> salvar(@RequestBody ClienteFormRequest request) {
        
        Cliente cliente = request.toModel();
        cliente.setDatacadastro(LocalDate.now());
        
        repository.save(cliente);
        
        System.out.println(cliente);
        
        return ResponseEntity.ok(ClienteFormRequest.fromModel(cliente));
    }

    @GetMapping
    public List<ClienteFormRequest> getLista(){
    	return repository.findAll().stream().map( ClienteFormRequest::fromModel ).collect(Collectors.toList());
    }
    
    @GetMapping("{id}")
    public ResponseEntity<ClienteFormRequest> getById(@PathVariable Long id){
    	return repository.findById(id).map( ClienteFormRequest::fromModel).map( ClienteFR -> ResponseEntity.ok(ClienteFR)).orElseGet(() -> ResponseEntity.notFound().build());
    }
    
    @PutMapping("{id}")
    public ResponseEntity<Void> atualizar(
        @PathVariable Long id,
        @RequestBody ClienteFormRequest request) {

        Optional<Cliente> clienteExistente = repository.findById(id);

        if (clienteExistente.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Cliente cliente = request.toModel();
        cliente.setId(id);
        repository.save(cliente);
        return ResponseEntity.noContent().build();
    }
    
    @PatchMapping("{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public ResponseEntity<Void> atualizarParcialmente(
        @PathVariable Long id,
        @RequestBody Map<String, Object> updates) {

        Optional<Cliente> clienteExistente = repository.findById(id);

        if (clienteExistente.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Cliente cliente = clienteExistente.get();

        updates.forEach((campo, valor) -> {
            switch (campo) {
                case "nome" -> cliente.setNome((String) valor);
                case "email" -> cliente.setEmail((String) valor);
                case "telefone" -> cliente.setTelefone((String) valor);
                case "endereco" -> cliente.setEndereco((String) valor);
                case "cpf" -> cliente.setCpf((String) valor);
                case "nascimento" -> cliente.setNascimento(LocalDate.parse((String) valor));
            }
        });

        repository.save(cliente);
        return ResponseEntity.noContent().build();
    }
    
    @DeleteMapping("{id}")
    public ResponseEntity<Object> delete(@PathVariable Long id) {
        return repository.findById(id)
            .map(cliente -> {
                repository.delete(cliente);
                return ResponseEntity.noContent().build();
            })
            .orElseGet(() -> ResponseEntity.notFound().build());
    }
}