package org.example.handle;

import io.javalin.Javalin;
import io.javalin.http.Handler;
import org.example.connection.ConnectionFactory;
import org.example.repository.Drivers;
import org.example.repository.driverRepo;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class webApp {
    public static void main(String[] args) {
        Javalin app = Javalin.create().start(8080);
        final String AccessControl = "Access-Control-Allow-Origin";
        String allowedPort = "*";
        try {
            Connection connection = new ConnectionFactory("f1",5432).getConnection();
            driverRepo repo = new driverRepo(connection);

            Handler driverHandler = context -> {
                context.header(AccessControl, allowedPort);
                ArrayList<Drivers> list = repo.selectAll();
                context.json(list);
            };
            Handler driverByName = context -> {
                context.header(AccessControl, allowedPort);
                String name = context.req.getParameter("id");
                context.json(repo.selectByName(name));
            };
            Handler driverById = context -> {
                context.header(AccessControl, allowedPort);
                String id = context.req.getParameter("id");
                context.json(repo.selectDriverById(Integer.parseInt(id)));
            };
            Handler driverByTeam = context -> {
                context.header(AccessControl, allowedPort);
                String team_name = context.req.getParameter("id");
                context.json(repo.selectByTeam(team_name));
            };
            app.get("/drivers",driverHandler);
            app.get("/driver",driverByName);
            app.get("/team",driverByTeam);
            app.get("/driverId",driverById);
        } catch (SQLException e){
            System.err.println("Connection to DB failed");
            System.exit(1);
        }
    }
}
