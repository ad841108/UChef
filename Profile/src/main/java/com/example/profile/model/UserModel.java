package com.example.profile.model;

public class UserModel {

    private String UserID;
    private String UserName;
    private String UserPurchaseHistory;
    private String UserSellingHistory;
    private String UserFriendList;
    private String UserRating;

    public void setUserID(String userID) {
        UserID = userID;
    }

    public void setUserFriendList(String userFriendList) {
        UserFriendList = userFriendList;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public void setUserPurchaseHistory(String userPurchaseHistory) {
        UserPurchaseHistory = userPurchaseHistory;
    }

    public void setUserRating(String userRating) {
        UserRating = userRating;
    }

    public void setUserSellingHistory(String userSellingHistory) {
        UserSellingHistory = userSellingHistory;
    }

    public String getUserFriendList() {
        return UserFriendList;
    }

    public String getUserID() {
        return UserID;
    }

    public String getUserName() {
        return UserName;
    }

    public String getUserPurchaseHistory() {
        return UserPurchaseHistory;
    }

    public String getUserRating() {
        return UserRating;
    }

    public String getUserSellingHistory() {
        return UserSellingHistory;
    }
}
