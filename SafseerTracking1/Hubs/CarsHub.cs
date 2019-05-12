using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Cars.Domain.Data;
using CarsMap.Domain.Models;
using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;

namespace CarsMapForms.Hubs
{
	[HubName("carsHub")]
	public class CarsHub : Hub
	{
		private List<GpsReal> locations = new List<GpsReal>();

		[HubMethodName("getCars")]
		public string GetCars()
		{
			GpsTrackingContext dbContext = new GpsTrackingContext();
			locations = dbContext.GpsReal
				.OrderByDescending(t => t.Id).ToList()
               .DistinctBy(t => t.ModemId).ToList();

            var context = GlobalHost.ConnectionManager.GetHubContext<TrackingHub>();
			return context.Clients.All.RecieveNotification(locations).ToString();
		}
	}
}