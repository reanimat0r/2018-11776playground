/*
 * $Id: User.java 471756 2006-11-06 15:01:43Z husted $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.struts2.showcase.chat;

import java.io.Serializable;
import java.util.Date;

/**
 * Represends a user in the Chat example.
 */
public class User implements Serializable  {

    private static final long serialVersionUID = -1434958919516089297L;

    private String name;
    private Date creationDate;


    public User(String name) {
        this.name = name;
        this.creationDate = new Date(System.currentTimeMillis());
    }

    public Date getCreationDate() {
        return creationDate;
    }
    public String getName() {
        return name;
    }
}
