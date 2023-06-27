package org.example.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionFactory {
    private final String schema;
    private Connection connection = null;

    public ConnectionFactory() {
        this("public", 5432);
    }

    public ConnectionFactory(String schema) {
        this(schema, 5432);
    }

    public ConnectionFactory(String schema, int port) {
        this.schema = schema;
    }

    public Connection getConnection() throws SQLException {
        if (connection == null) {
            String url = "jdbc:postgresql://localhost:5432/postgres?user=admin&password=admin";
            connection = DriverManager.getConnection(url);
            connection.setSchema(schema);
            System.out.println("Connected to database, schema: " + schema);
        }
        return connection;
    }
}
