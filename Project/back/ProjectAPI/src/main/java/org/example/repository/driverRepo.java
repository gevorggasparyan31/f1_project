package org.example.repository;

import java.sql.*;
import java.util.ArrayList;

public class driverRepo {

    private final Connection connection;

    public driverRepo(Connection connection){
        this.connection=connection;
    }

    public ArrayList<Drivers> selectAll(){
        ArrayList<Drivers> driversList = new ArrayList<>();
        try(Statement statement = connection.createStatement()){
            try(ResultSet resultSet = statement.executeQuery("select * from Drivers;")){
                while(resultSet.next()){
                    int id = resultSet.getInt("id");
                    String image_url = resultSet.getString("image_url");
                    String name = resultSet.getString("name");
                    String nationality = resultSet.getString("nationality");
                    int titles = resultSet.getInt("titles");

                    driversList.add(new Drivers(id,image_url,name,nationality,titles));
                }
            }
            catch (SQLException e){
                System.err.println(e.getMessage());
            } finally {
                if(statement != null){
                    try {
                        statement.close();
                    }catch (SQLException e){
                        System.err.println(e.getMessage());
                    }
                }
            }
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return driversList;
    }

    public Drivers selectDriverById(int id){
        Drivers oneDriver = new Drivers();
        try(Statement statement = connection.createStatement()){
            try(ResultSet resultSet = statement.executeQuery("select * from drivers where id ="+id+";")){
                while(resultSet.next()){
                    String image_url = resultSet.getString("image_url");
                    String name = resultSet.getString("name");
                    String nationality = resultSet.getString("nationality");
                    int titles = resultSet.getInt("titles");
                    int wins = resultSet.getInt("wins");
                    int podiums = resultSet.getInt("podiums");
                    int career_points = resultSet.getInt("career_points");
                    String all_teams = resultSet.getString("all_teams");

                    oneDriver = new Drivers(id,image_url,name,nationality,titles,wins,podiums,career_points,all_teams);
                }
            }
            catch (SQLException e){
                System.err.println(e.getMessage());
            } finally {
                if(statement != null){
                    try {
                        statement.close();
                    }catch (SQLException e){
                        System.err.println(e.getMessage());
                    }
                }
            }
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return oneDriver;
    }

    public ArrayList<Drivers> selectByTeam(String team_name){
        ArrayList<Drivers> driversList = new ArrayList<>();

        try(Statement statement = connection.createStatement()){
//            try(ResultSet resultSet = statement.executeQuery("select * from drivers join driver_team dt on Drivers.id = dt.driver_id where team_id = "+team_id+";")){
            try(ResultSet resultSet = statement.executeQuery("select * from drivers join driver_team dt on Drivers.id = dt.driver_id where team_name ilike '%"+team_name+"%';")){
            while(resultSet.next()){
                    int id = resultSet.getInt("id");
                    String image_url = resultSet.getString("image_url");
                    String name = resultSet.getString("name");
                    String nationality = resultSet.getString("nationality");
                    int titles = resultSet.getInt("titles");

                    driversList.add(new Drivers(id,image_url,name,nationality,titles));
                }
            }
            catch (SQLException e){
                System.err.println(e.getMessage());
            } finally {
                if(statement != null){
                    try {
                        statement.close();
                    }catch (SQLException e){
                        System.err.println(e.getMessage());
                    }
                }
            }
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return driversList;
    }

    public ArrayList<Drivers> selectByName(String driver_name){
        ArrayList<Drivers> driversList = new ArrayList<>();

        try(Statement statement = connection.createStatement()){
            try(ResultSet resultSet = statement.executeQuery("select * from Drivers where name ilike '%"+driver_name+"%';")){
                while(resultSet.next()){
                    int id = resultSet.getInt("id");
                    String image_url = resultSet.getString("image_url");
                    String name = resultSet.getString("name");
                    String nationality = resultSet.getString("nationality");
                    int titles = resultSet.getInt("titles");

                    driversList.add(new Drivers(id,image_url,name,nationality,titles));
                }
            }
            catch (SQLException e){
                System.err.println(e.getMessage());
            } finally {
                if(statement != null){
                    try {
                        statement.close();
                    }catch (SQLException e){
                        System.err.println(e.getMessage());
                    }
                }
            }
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return driversList;
    }
}