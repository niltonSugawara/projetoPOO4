/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpggrupo3.bd;

import java.util.ArrayList;


public class BdClientes {
    public static ArrayList<Clientes> clientesList = new ArrayList<>();
    
    public static ArrayList<Clientes> getClientesList() {
        return clientesList;
    }


    public static void setClientesList(ArrayList<Clientes> aClientesList) {
        clientesList = aClientesList;
    }
    
}
