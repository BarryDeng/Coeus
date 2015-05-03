<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite1" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        Application["count"] = 0;
    }

    void Session_Start (object sender , EventArgs e)
    {
        Application.Lock();
        Application["count"] = (int)Application["count"] + 1;
        Application.UnLock();
    }
    
    void Session_End (object sender , EventArgs e)
    {
        Application.Lock();
        Application.UnLock();
    }
</script>
