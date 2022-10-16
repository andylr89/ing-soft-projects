package com.sideatpp.sidetapp;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sidetapp.sidetapp.DAO.EmpleadoDAO;
import com.sidetapp.sidetapp.DTO.EmpleadoVO;

@RestController
public class EmpleadoController {

    @PostMapping("/registrarempleado")
    public void registrarEmpleado(EmpleadoVO empleado) {
        EmpleadoDAO Dao = new EmpleadoDAO();
        Dao.registrarEmpleado(empleado);
    }
}
