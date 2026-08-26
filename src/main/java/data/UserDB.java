package data;

import business.User;
import java.util.ArrayList;
import java.util.List;

public class UserDB {

    private static List<User> users = new ArrayList<>();

    public static void insert(User user) {
        users.add(user);
    }

    public static List<User> selectAll() {
        return users;
    }
}
