package org.example.connection;


import java.sql.SQLException;
import java.util.Scanner;

public class ConnectionTest {
    public static void main(String[] args) {
        for (int i = 0; i < 1000; i++) {
            ConnectionFactory factory = new ConnectionFactory("f1", 5432);
            try {
                factory.getConnection();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        doNotEnd();
    }

    private static void doNotEnd() {
        Scanner scanner = new Scanner(System.in);
        scanner.nextLine(); // wait
    }
}
