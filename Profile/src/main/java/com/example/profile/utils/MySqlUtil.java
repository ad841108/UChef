package com.example.profile.utils;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.example.profile.model.UserModel;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class MySqlUtil {

    /**
     * JDBC driver of MySQL Connector.
     */
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";

    /**
     * Database name.
     */
    private static final String DB_NAME = "user_db";

    /**
     * TODO URL for local MySQL DB.
     * <p>
     * SSL connection must be established by default if explicit option isn't
     * set. For compliance with existing applications not using SSL the
     * verifyServerCertificate property is set to 'false'. You need either to
     * explicitly disable SSL by setting useSSL=false, or set useSSL=true and
     * provide truststore for server certificate verification.
     * <p>
     * Establishing SSL connection without server's identity verification is not
     * recommended. However, we keep it simple and get rid of SSL.
     */
    private static final String URL = "jdbc:mysql://database4.c5axvtvwpca7.us-east-1.rds.amazonaws.com/" + DB_NAME
            + "?useSSL=false";

    /**
     * TODO Username and password.
     * System.getenv("MYSQL_PWD")
     */
    private static final String DB_USER = "admin";
    private static final String DB_PWD = "Msmite1234";

    /**
     * The connection (session) with the database.
     */
    private static Connection conn;

    /**
     * Initialize the database connection.
     *
     * @throws ClassNotFoundException if JDBC_DRIVER not found.
     * @throws SQLException           with incorrect SQL execution.
     */
    public static void initializeConnection() throws ClassNotFoundException,
            SQLException {
        Class.forName(JDBC_DRIVER);
        conn = DriverManager.getConnection(URL, DB_USER, DB_PWD);
    }

    /**
     * Clean up and terminate the connection.
     */
    public static void cleanup() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static UserModel getContactedUsersById(String userId) {
        UserModel targetUser = new UserModel();
        StringBuilder sqlString = new StringBuilder()
                .append("SELECT * FROM users_json WHERE user_id=\"")
                .append(userId)
                .append("\"");

        // Build db connection
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sqlString.toString());
            while (rs.next()) {
                JSONParser jsonParser = new JSONParser();
                JSONArray jsonArray = (JSONArray) jsonParser.parse(rs.getString("full_data"));
                for (int i = 0; i < 1; i++) {
                    UserModel user = new UserModel();
                    JSONObject userInfo = (JSONObject) jsonArray.get(i);
                    user.setUserID((String)userInfo.get("user_id"));
                    user.setUserName((String)userInfo.get("user_name"));
                    user.setUserFriendList((String)userInfo.get("user_friend_list"));
                    user.setUserRating((String)userInfo.get("user_rating"));
                    user.setUserPurchaseHistory((String)userInfo.get("user_purchase_history"));
                    user.setUserSellingHistory((String)userInfo.get("user_selling_history"));
                }
            }
        } catch (SQLException | ParseException throwables) {
            throwables.printStackTrace();
        }finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return targetUser;
    }
}
