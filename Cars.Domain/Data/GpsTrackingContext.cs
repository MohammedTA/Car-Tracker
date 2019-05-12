using System.Data.Entity;
using CarsMap.Domain.Models;

namespace Cars.Domain.Data
{
	public class GpsTrackingContext : DbContext
	{
		public GpsTrackingContext() : base("name=GPS_Tracking")
		{
		}

		public virtual DbSet<GpsReal> GpsReal { get; set; }


		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);

			modelBuilder.Entity<GpsReal>()
				.ToTable("GPS_Real");

			modelBuilder.Entity<GpsReal>()
				.HasKey(t => t.Id);

			modelBuilder.Entity<GpsReal>().ToTable("GPS_Real");

            modelBuilder.Entity<GpsReal>().Property(e => e.Altitude).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.Direction).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.Lat).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.Long).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.ModemId).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.Satellites).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.ServerTimestamp).HasMaxLength(50);
			modelBuilder.Entity<GpsReal>().Property(e => e.Speed).HasMaxLength(50);
		}

	}
}