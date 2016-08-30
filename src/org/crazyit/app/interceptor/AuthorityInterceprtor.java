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
		//ȡ��������ص�ActionContextʵ��
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		String user = (String) session.get("username");
		if(user != null && user.equals("crazyit.org"))
		{
			return invocation.invoke();
		}
		ctx.put("tip", "����û�е�½��������crazyit.org,leegangd��½ϵͳ");
		return Action.LOGIN;
	}

}
