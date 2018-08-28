<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>Struts2 Showcase - Token Examples (double post)</title>
</head>

<body>
<div class="page-header">
	<h1>Token Examples</h1>
</div>


<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12" style="text-align: center;">

			<p>
				These examples illustrate Struts build in support of using tokens to prevent double post.
			<p/>
			<p>
			You have a web page where user can input data and press a button to submit.
			There could be a problem that the user submit the data many times, by either clicking the
			button many times, or use the browser back button and then submit the form again.
			<br/> A good solution is to use a hidden token in the form. The token is autogenerated and unique
			from time to time. This token is then validated with the HttpSession that it is the first time
			it is submitted, if not we have a double post and therefore can prevent the second submit action.
			<p/>
			<p>
			For more information check out javadoc for org.apache.struts2.interceptor.TokenInterceptor
			and org.apache.struts2.interceptor.TokenSessionStoreInterceptor.
			<p/>

			<br/>
			<br/><a href="tokenPrepare!input.action">Example 1 (token based .jsp example)</a>

			<br/>
			<br/><a href="tokenPrepare2!input.action">Example 2 (as example 1 with redirect after post)</a>

			<br/>
			<br/><a href="tokenPrepare3!input.action">Example 3 (token-session based .jsp example)</a>

			<br/>
			<br/><a href="tokenPrepare4!input.action">Example 4 (token based freemarker example)</a>
		</div>
	</div>
</div>
</body>
</html>
