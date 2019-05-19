using System;
using System.Collections.Generic;

namespace Cars.Domain.Models
{
	public class BlockedArea
	{
		public BlockedArea()
		{
		}
		public BlockedArea(string name, decimal? radius)
		{
			this.Name = name;
			Radius = radius;
			this.CreatedOn = DateTime.UtcNow;
			this.BlockedAreaCoordinates = new List<BlockedAreaCoordinate>();
		}

		public int Id { get; set; }
		public string Name { get; private set; }
		public decimal? Radius { get; private set; }
		public DateTime CreatedOn { get; private set; }
		public virtual ICollection<BlockedAreaCoordinate> BlockedAreaCoordinates { get; set; }
	}
}