package org.crazyit.app.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceprtor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		//取得请求相关的ActionContext实力
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		String user = (String) session.get("username");
		if(user != null && user.equals("crazyit.org"))
		{
			return invocation.invoke();
		}
		ctx.put("tip", "您还没有登陆，请输入crazyit.org,leegangd登陆系统");
		return Action.LOGIN;
	}

}
