using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web.Http;
using Cars.Domain.Data;

namespace SafseerTracking1
{
	public class HistoryController : ApiController
	{
		// GET api/<controller>/5
		public List<TrackPoint> Get([FromUri] Request request)
		{
			var dbContext = new GpsTrackingContext();

			return dbContext.GpsReal
				.Where(t => t.ModemId == request.SelectedCar)
				.ToList()
				.Where(t =>
					DateTime.ParseExact(t.ServerTimestamp, "M/d/yyyy h:mm:ss tt", CultureInfo.InvariantCulture) >=
					request.From
					&& DateTime.ParseExact(t.ServerTimestamp, "M/d/yyyy h:mm:ss tt", CultureInfo.InvariantCulture) <=
					request.To)
				.Select(t => new TrackPoint
				{
					Lat = t.Lat,
					Lng = t.Long
				}).ToList();
		}

		// POST api/<controller>
		public void Post([FromBody] string value)
		{
		}

		// PUT api/<controller>/5
		public void Put(int id, [FromBody] string value)
		{
		}

		// DELETE api/<controller>/5
		public void Delete(int id)
		{
		}
	}

	public class Request
	{
		public DateTime From { get; set; }
		public DateTime To { get; set; }
		public string SelectedCar { get; set; }
	}

	public class TrackPoint
	{
		public string Lat { get; set; }
		public string Lng { get; set; }
	}
}