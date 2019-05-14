using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Cars.Domain.Data;
using Cars.Domain.Models;

namespace SafseerTracking1
{
	public class BlockedAreaController : ApiController
	{
		public BlockedAreaRequest Get()
		{
			var dbContext = new GpsTrackingContext();
			var blockedAreas = dbContext.BlockedAreas
				.Include(t => t.BlockedAreaCoordinates)
				.Select(t => new BlockedAreaModel
				{
					BlockedAreaCoordinates = t.BlockedAreaCoordinates.Select(c => new BlockedAreaCoordinateModel
					{
						Lat = c.Lat,
						Lng = c.Long
					}),
					Name = t.Name
				});
			return new BlockedAreaRequest
			{
				BlockedAreas = blockedAreas
			};
		}
		// POST api/<controller>
		public HttpResponseMessage Post([FromBody] BlockedAreaRequest request)
		{
			var dbContext = new GpsTrackingContext();
			var existBlockedAreas = dbContext.BlockedAreas
				.Include(t => t.BlockedAreaCoordinates)
				.ToList();

			foreach (var existBlockedArea in existBlockedAreas)
			{
				dbContext.BlockedAreaCoordinates.RemoveRange(existBlockedArea.BlockedAreaCoordinates);
			}

			dbContext.BlockedAreas.RemoveRange(existBlockedAreas);
			dbContext.SaveChanges();

			try
			{
				foreach (var requestBlockedArea in request.BlockedAreas)
				{
					var area = new BlockedArea(requestBlockedArea.Name);
					foreach (var areaCoordinate in requestBlockedArea.BlockedAreaCoordinates)
					{
						area.BlockedAreaCoordinates.Add(new BlockedAreaCoordinate(areaCoordinate.Lat,
							areaCoordinate.Lng));
					}
					dbContext.BlockedAreas.Add(area);
				}

				dbContext.SaveChanges();
				var response = new HttpResponseMessage(HttpStatusCode.OK)
				{
					Content = new StringContent("Success")
				};
				return response;
			}
			catch (Exception e)
			{
				var response = new HttpResponseMessage(HttpStatusCode.BadRequest)
				{
					Content = new StringContent(e.Message)
				};
				return response;
			}
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

	public class BlockedAreaRequest
	{
		public IEnumerable<BlockedAreaModel> BlockedAreas { get; set; }
	}

	public class BlockedAreaModel
	{
		public string Name { get; set; }
		public IEnumerable<BlockedAreaCoordinateModel> BlockedAreaCoordinates { get; set; }
	}

	public class BlockedAreaCoordinateModel
	{
		public string Lat { get; set; }
		public string Lng { get; set; }
	}
}