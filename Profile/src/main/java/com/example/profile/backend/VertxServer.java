package com.example.profile.backend;


import com.example.profile.service.UserProfileService;
import com.example.profile.utils.MySqlUtil;
import io.vertx.core.AbstractVerticle;


import io.vertx.core.http.HttpServerResponse;

import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;

import java.sql.SQLException;

public class VertxServer extends AbstractVerticle {

    @Override
    public void start() throws SQLException, ClassNotFoundException {

        Router router = Router.router(vertx);

        router.route("/getUserID").handler(this::userIDHandler);
        router.route("/getUserName").handler(this::userNameHandler);
        router.route("/getUserRating").handler(this::userRatingHandler);
        router.route("/getUserFriendList").handler(this::userFriendListHandler);
        router.route("/getUserPurchaseHistory").handler(this::purchaseHistoryHandler);
        router.route("/getUserSellingHistory").handler(this::sellingHistoryHandler);
        MySqlUtil.initializeConnection();
        vertx.createHttpServer().requestHandler(router).listen(8080);
    }

    @Override
    public void stop() {
        MySqlUtil.cleanup();
    }


    private void userIDHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserID());
        return;
    }

    private void userNameHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserName());
        return;
    }

    private void userFriendListHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserFriendList());
        return;
    }

    private void userRatingHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserRating());
        return;
    }

    private void purchaseHistoryHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserPurchaseHistory());
        return;
    }

    private void sellingHistoryHandler(RoutingContext routingContext) {
        String userId = routingContext.request().getParam("user_id");

        // Query parameters are malformed (e.g. missing required query parameters
        HttpServerResponse response = routingContext.response();

        UserProfileService service = new UserProfileService(userId);
        response.end(service.getUserSellingHistory());
        return;
    }
}

