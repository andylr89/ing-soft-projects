package com.sidetapp.sidetapp.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sidetapp.sidetapp.DTO.EmpleadoVO;

public class EmpleadoDAO {

    public void registrarEmpleado(EmpleadoVO empleado) {

        Connect link = new Connect();

        try {

            Statement stmt = link.getConnection().createStatement();

            String sent = "INSERT INTO empleado VALUES("
                    + empleado.getDni_empleado() + "," + "'"
                    + empleado.getContrasena_empleado() + "'," + "'"
                    + empleado.getNombre_empleado() + "'," + "'"
                    + empleado.getApellido_empleado() + "'," + "'"
                    + empleado.getFecha_nacimiento_empleado() + "'," + "'"
                    + empleado.getCategoria_empleado() + "'," + "'"
                    + empleado.getHabilidades_empleado() + "'," + "'"
                    + empleado.getCiudad_empleado() + "'," + "'"
                    + empleado.getDireccion_empleado() + "'," + "'"
                    + empleado.getContacto_empleado() + "'," + "'"
                    + empleado.getDisponibilidad_empleado() + "',"
                    + empleado.getCalificacion_empleado()
                    + ");";

            stmt.executeUpdate(sent);
            System.out.println("Registrado " + sent);
            stmt.close();
            link.disconnect();

        } catch (SQLException e) {
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo insertar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getErrorCode());
        } catch (Exception e) {
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo insertar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
        }

    }
    
    
    public ArrayList<EmpleadoVO> consultarEmpleado(String empleado){
        
        ArrayList<EmpleadoVO> listaempleado = new ArrayList<EmpleadoVO>();
        
        Connect link = new Connect();
        
        try {
            PreparedStatement consulta = link.getConnection().prepareStatement("SELECT * FROM empleado where dni = ? ");
            
            consulta.setString(1, empleado);
            ResultSet res = consulta.executeQuery();
            
            if(res.next()) {
                EmpleadoVO Empleado = new EmpleadoVO();
                Empleado.setDni_empleado(Integer.parseInt(res.getString("DNI")));
                Empleado.setContrasena_empleado(res.getString("password"));
                Empleado.setNombre_empleado(res.getString("nombre_usu"));
                Empleado.setApellido_empleado(res.getString("apellido_usu"));
                Empleado.setFecha_nacimiento_empleado(res.getString("fechanacimiento_usu"));
                Empleado.setHabilidades_empleado(res.getString("habilidad_usu"));
                Empleado.setCiudad_empleado(res.getString("ciudad"));
                Empleado.setDireccion_empleado(res.getString("direccion_usu"));
                Empleado.setContacto_empleado(Integer.parseInt(res.getString("telefono_usu")));
                Empleado.setDisponibilidad_empleado(res.getString("disponibilidad_usu"));
                Empleado.setCalificacion_empleado(Integer.parseInt(res.getString("calificacion_usu")));
                
                listaempleado.add(Empleado);
                
            }
            
            res.close();
            consulta.close();
            link.disconnect();
            
        } catch (SQLException e) {
            //si hay un error en el sql mostrarlo
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo consultar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getErrorCode());
        } catch (Exception e) {
            //si hay cualquier otro error mostrarlo
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo consultar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
        }
        return listaempleado;
        
        
    }
    
}
