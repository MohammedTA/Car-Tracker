namespace Cars.Domain.Models
{
	public class BlockedAreaCoordinate
	{
		public BlockedAreaCoordinate()
		{
		}
		public BlockedAreaCoordinate(string lat, string l)
		{
			Lat = lat;
			Long = l;
		}

		public int Id { get; set; }
		public string Lat { get; private set; }
		public string Long { get; private set; }
		public int BlockedAreaId { get; set; }
		public virtual BlockedArea BlockedArea { get; set; }
	}
}