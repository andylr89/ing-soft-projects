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
                    + empleado.getCorreo_empleado() + "'," + "'"
                    + empleado.getNombre_empleado() + "'," + "'"
                    + empleado.getApellido_empleado() + "'," + "'"
                    + empleado.getFecha_nacimiento_empleado() + "'," + "'"
                    + empleado.getCategoria_empleado() + "'," + "'"
                    + empleado.getHabilidades_empleado() + "'," + "'"
                    + empleado.getCiudad_empleado() + "'," + "'"
                    + empleado.getDireccion_empleado() + "'," + "'"
                    + empleado.getContacto_empleado() + "'," + "'"
                    + empleado.getDisponibilidad_empleado() + "'," + "'"
                    + empleado.getHoja_vida() + "',"
                    + empleado.getCalificacion_empleado()
                    + ");";
            System.out.println(sent);
            stmt.executeUpdate(sent);
            System.out.println("Registrado " + sent);
            stmt.close();
            link.disconnect();

        } catch (SQLException e) {
            System.out.println("------------------- ERROR ----------------------");
            System.out.println("No se pudo insertar el empleado");
            System.out.println(e.getMessage());
            System.out.println(e.getErrorCode());
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("------------------- ERROR ----------------------");
            System.out.println("No se pudo insertar el empleado");
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
        }

    }
    
    
    public ArrayList<EmpleadoVO> consultarEmpleado(String empleado){
        
        ArrayList<EmpleadoVO> listaempleado = new ArrayList<EmpleadoVO>();
        
        Connect link = new Connect();
        
        try {
            PreparedStatement consulta = link.getConnection().prepareStatement("SELECT * FROM empleado where DNI = ? ");
            
            consulta.setString(1, empleado);
            ResultSet res = consulta.executeQuery();
            
            if(res.next()) {
                EmpleadoVO Empleado = new EmpleadoVO();
                Empleado.setDni_empleado(Integer.parseInt(res.getString("DNI")));
                Empleado.setContrasena_empleado(res.getString("password"));
                Empleado.setCorreo_empleado(res.getString("correo_empleado"));
                Empleado.setNombre_empleado(res.getString("nombre_empleado"));
                Empleado.setApellido_empleado(res.getString("apellido_empleado"));
                Empleado.setFecha_nacimiento_empleado(res.getString("fechanacimiento_empleado"));
                Empleado.setCategoria_empleado(res.getString("categoria_empleado"));
                Empleado.setHabilidades_empleado(res.getString("habilidad_empleado"));
                Empleado.setCiudad_empleado(res.getString("ciudad"));
                Empleado.setDireccion_empleado(res.getString("direccion_empleado"));
                Empleado.setContacto_empleado(Integer.parseInt(res.getString("telefono_empleado")));
                Empleado.setDisponibilidad_empleado(res.getString("disponibilidad_empleado"));
                Empleado.setHoja_vida(res.getString("hoja_vida"));
                Empleado.setCalificacion_empleado(Integer.parseInt(res.getString("calificacion_empleado")));
                
                listaempleado.add(Empleado);
                
            }
            
            res.close();
            consulta.close();
            link.disconnect();
            
        } catch (SQLException e) {
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo consultar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getErrorCode());
        } catch (Exception e) {
            System.out.println("------------------- ERROR --------------");
            System.out.println("No se pudo consultar el cliente");
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
        }
        return listaempleado;
        
        
    }
    
}
