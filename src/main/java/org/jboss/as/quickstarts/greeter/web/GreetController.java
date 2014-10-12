/*
 * JBoss, Home of Professional Open Source
 * Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.jboss.as.quickstarts.greeter.web;

import org.jboss.as.quickstarts.greeter.domain.Insult;
import org.jboss.as.quickstarts.greeter.domain.InsultDao;
import org.jboss.as.quickstarts.greeter.domain.User;
import org.jboss.as.quickstarts.greeter.domain.UserDao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import java.util.Arrays;
import java.util.List;

@Named
@RequestScoped
public class GreetController {

    @Inject
    private UserDao userDao;

    @Inject
    private InsultDao insultDao;

    private String username;

    private String greeting;

    public void greet() {
        User user = userDao.getForUsername(username);
        if (user != null) {
            greeting = "Hello " + user.getFirstName() + ", you're " + buildInsult(insultDao.getInsults());
        } else {
            greeting = "No such user exists stupid! Try 'katie' or 'joe'.";
        }
    }

    public String buildInsult(List<Insult> insults) {
        int size = insults.size();
        if (size == 0) return "a failure!";
        String insult = new StringBuilder(insults.get(getRandomIndex(size)).getFirstAdjective()).append(" ")
                .append(insults.get(getRandomIndex(size)).getSecondAdjective()).append(" ")
                .append(insults.get(getRandomIndex(size)).getNoun()).append("!").toString();
        return Arrays.asList('a', 'e', 'i', 'o', 'u').contains(insult.charAt(0)) ?
                "an " + insult : "a " + insult;
    }

    public int getRandomIndex(int size) {
        return (int) (Math.random() * size);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGreeting() {
        return greeting;
    }

}
