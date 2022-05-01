package com.example.profile;

import io.vertx.core.Vertx;
import io.vertx.core.DeploymentOptions;

public class UserProfileApplication {

	public static void main(String[] args) {
		Vertx vertx = Vertx.vertx(); 
		DeploymentOptions options = new DeploymentOptions().setInstances(2);
		vertx.deployVerticle("com.example.profile.backend.VertxServer", options);
	}

}
