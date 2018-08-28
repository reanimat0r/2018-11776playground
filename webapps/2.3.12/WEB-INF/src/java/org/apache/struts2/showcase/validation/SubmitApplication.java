/*
 * $Id: SubmitApplication.java 1400220 2012-10-19 18:49:39Z jogep $
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
package org.apache.struts2.showcase.validation;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @version $Date: 2012-10-19 20:49:39 +0200 (Fri, 19 Oct 2012) $ $Id: SubmitApplication.java 1400220 2012-10-19 18:49:39Z jogep $
 */
public class SubmitApplication extends ActionSupport {

	private String name;
	private Integer age;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getAge() {
		return age;
	}

	public String submitApplication() throws Exception {
		return SUCCESS;
	}

	public String applicationOk() throws Exception {
		addActionMessage("Your application looks ok.");
		return SUCCESS;
	}

	public String cancelApplication() throws Exception {
		addActionMessage("So you have decided to cancel the application");
		return SUCCESS;
	}
}
