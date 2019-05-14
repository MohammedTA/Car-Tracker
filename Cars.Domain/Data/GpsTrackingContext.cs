using System.Data.Entity;
using Cars.Domain.Models;

namespace Cars.Domain.Data
{
	public class GpsTrackingContext : DbContext
	{
		public GpsTrackingContext() : base("name=GPS_Tracking")
		{
		}

		public virtual DbSet<GpsReal> GpsReal { get; set; }
		public virtual DbSet<BlockedArea> BlockedAreas { get; set; }
		public virtual DbSet<BlockedAreaCoordinate> BlockedAreaCoordinates { get; set; }


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

			modelBuilder.Entity<BlockedArea>()
				.ToTable("BlockedArea");

			modelBuilder.Entity<BlockedArea>().HasKey(t => t.Id);
			modelBuilder.Entity<BlockedArea>().Property(e => e.CreatedOn).HasColumnName("CreatedOn");
			modelBuilder.Entity<BlockedArea>().Property(e => e.Name).HasColumnName("Name");


			modelBuilder.Entity<BlockedAreaCoordinate>()
				.ToTable("BlockedAreaCoordinate");

			modelBuilder.Entity<BlockedAreaCoordinate>()
				.HasKey(t => t.Id);

			modelBuilder.Entity<BlockedAreaCoordinate>().HasKey(t => t.Id);
			modelBuilder.Entity<BlockedAreaCoordinate>().Property(e => e.Lat).HasColumnName("Lat");
			modelBuilder.Entity<BlockedAreaCoordinate>().Property(e => e.Long).HasColumnName("Long");
			modelBuilder.Entity<BlockedAreaCoordinate>().Property(e => e.BlockedAreaId).HasColumnName("BlockedAreaId");
			modelBuilder.Entity<BlockedAreaCoordinate>()
				.HasRequired(t => t.BlockedArea)
				.WithMany(t => t.BlockedAreaCoordinates)
				.HasForeignKey(t => t.BlockedAreaId);

		}
	}
}