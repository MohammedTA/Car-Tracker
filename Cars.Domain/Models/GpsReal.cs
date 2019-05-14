namespace Cars.Domain.Models
{
	public class GpsReal
	{
		public string ModemId { get; set; }
		public string ServerTimestamp { get; set; }
		public string Long { get; set; }
		public string Lat { get; set; }
		public string Altitude { get; set; }
		public string Direction { get; set; }
		public string Satellites { get; set; }
		public string Speed { get; set; }
		public int Id { get; set; }
	}
}