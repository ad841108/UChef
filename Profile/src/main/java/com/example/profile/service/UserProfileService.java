package com.example.profile.service;

import com.example.profile.model.UserModel;
import com.example.profile.utils.MySqlUtil;

public class UserProfileService {

    private UserModel user = new UserModel();

    public UserProfileService(String userId) {
        UserModel user = MySqlUtil.getContactedUsersById(userId);
    }

    public String getUserFriendList() {
        return user.getUserFriendList();
    }

    public String getUserID() {
        return user.getUserID();
    }

    public String getUserName() {
        return user.getUserName();
    }

    public String getUserPurchaseHistory() {
        return user.getUserPurchaseHistory();
    }

    public String getUserRating() {
        return user.getUserRating();
    }

    public String getUserSellingHistory() {
        return user.getUserSellingHistory();
    }

}
