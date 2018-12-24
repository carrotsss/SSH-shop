package com.minions.struts.intercepter;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class PermissionIntercepter implements Interceptor {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
			Map<String, Object> session = ActionContext.getContext().getSession();
			if (session.get("user") != null) {
				return invocation.invoke();
			}
			return "unlogin";
	}

}
