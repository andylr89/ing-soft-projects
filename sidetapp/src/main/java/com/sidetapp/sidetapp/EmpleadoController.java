package com.sidetapp.sidetapp;

import java.rmi.ServerException;
import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sidetapp.sidetapp.DAO.EmpleadoDAO;
import com.sidetapp.sidetapp.DTO.EmpleadoVO;

@RestController
@RequestMapping
public class EmpleadoController {

    @PostMapping("/registrarempleado")
    public ResponseEntity<EmpleadoVO> registrarEmpleado(@RequestBody EmpleadoVO empleado) throws ServerException {
        EmpleadoDAO Dao = new EmpleadoDAO();
        Dao.registrarEmpleado(empleado);
        return new ResponseEntity<>(HttpStatus.ACCEPTED);
    }
    
    
    @GetMapping("/consultarempleado")
    public ArrayList<EmpleadoVO> consultarEmpleado(String empleado){
        EmpleadoDAO Dao = new EmpleadoDAO();
        return Dao.consultarEmpleado(empleado);
    }    
}
