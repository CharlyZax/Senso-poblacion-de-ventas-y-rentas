
package proyect;
import java.awt.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static javax.swing.Action.NAME;
import javax.swing.JOptionPane;

public class Proyect {


    static Connection conexion = null;
    static String driver = "org.gjt.mm.mysql.Driver";
    static String url = "jdbc:mysql://localhost:3306/lemusmobi";
      
    public Connection conectar() {

        try {
            if (conexion == null) {
                Class.forName(driver);
                conexion = DriverManager.getConnection(url, "root", "");
                System.out.println("Conexion Correcta!!");
            }
        } catch (HeadlessException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

        return conexion;
    }


    }
    

