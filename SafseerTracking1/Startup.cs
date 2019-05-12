﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using SafseerTracking1;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(Startup))]

namespace SafseerTracking1
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=316888
            app.MapSignalR();
            RouteTable.Routes.MapHttpRoute(
	            name: "DefaultApi",
	            routeTemplate: "api/{controller}/{id}",
	            defaults: new { id = System.Web.Http.RouteParameter.Optional }
            );
		}
    }
}