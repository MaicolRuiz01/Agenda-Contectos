/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.agendacontactos.negocio;

import co.edu.ufps.agendacontactos.entidades.Contacto;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author freve
 */
public class GestionContactos implements Serializable{
    private List<Contacto> listaContactos;

    public GestionContactos() {
        super();
        listaContactos = new ArrayList<Contacto>();
    }  
    
    public boolean agregarContacto(Contacto contacto){
        boolean rta=false;
        try {
            listaContactos.add(contacto);
            rta=true;
        } catch (Exception e) {
            e.printStackTrace();            
        }
        return rta;
    }
    
}
