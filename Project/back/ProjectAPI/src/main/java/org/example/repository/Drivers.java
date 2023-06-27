package org.example.repository;

public class Drivers {

    private int id;
    private String image_url;
    private String name;
    private String nationality;
    private int titles;
    private int wins;
    private int podiums;
    private int career_points;
    private String all_teams;

    public Drivers(int id,String image_url,String name,String nationality,int titles) {
        this.id = id;
        this.image_url = image_url;
        this.name = name;
        this.nationality = nationality;
        this.titles = titles;
    }
    public Drivers(int id,String image_url,String name,String nationality,int titles,int wins,int podiums,int career_points,String all_teams) {
        this.id = id;
        this.image_url = image_url;
        this.name = name;
        this.nationality = nationality;
        this.titles = titles;
        this.wins = wins;
        this.podiums = podiums;
        this.career_points = career_points;
        this.all_teams = all_teams;
    }

    public Drivers() {
    }
    public int getId() {
        return id;
    }
    public String getImage_url() {
        return image_url;
    }
    public String getName() {
        return name;
    }
    public String getNationality() {
        return nationality;
    }
    public int getTitles() {
        return titles;
    }
    public int getWins(){return wins;}
    public int getPodiums(){return podiums;}
    public int getCareer_points(){return career_points;}
    public String getAll_teams(){return all_teams;}
}
