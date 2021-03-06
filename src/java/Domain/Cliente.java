/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain;

import Repository.RepositoryCliente;
import java.util.ArrayList;

/**
 *
 * @author geile
 */
public class Cliente {

    private int codigo;
    private String nombre;
    private RepositoryCliente repositoryCliente;

    public Cliente(RepositoryCliente repositoryCliente) {
        this.repositoryCliente = repositoryCliente;
    }

    public Cliente(int codigo, String nombre, RepositoryCliente repositoryCliente) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.repositoryCliente = repositoryCliente;
    }

    public ClienteResponse Registrar() {
        if (getRepositoryCliente().Add(this)) {
            return new ClienteResponse("Cliente registrado Correctamente", true);
        }
        return new ClienteResponse("Ha ocurrido un error al registrar", false);
    }

    public Cliente Consultar(int codigo) {
        return getRepositoryCliente().Find(codigo);
    }

    public boolean Eliminar() {
        return getRepositoryCliente().Delete(this);
    }

    public ArrayList<Cliente> ObtenerTodos() {
        return getRepositoryCliente().GetAll();
    }

    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the repositoryCliente
     */
    public RepositoryCliente getRepositoryCliente() {
        return repositoryCliente;
    }

    /**
     * @param repositoryCliente the repositoryCliente to set
     */
    public void setRepositoryCliente(RepositoryCliente repositoryCliente) {
        this.repositoryCliente = repositoryCliente;
    }



}
