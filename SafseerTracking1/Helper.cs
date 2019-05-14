using System.Collections.Generic;
using Cars.Domain.Models;

namespace SafseerTracking1
{
	internal class CoordinateComparer : IEqualityComparer<BlockedAreaCoordinate>
	{
		public bool Equals(BlockedAreaCoordinate x, BlockedAreaCoordinate y)
		{
			if (ReferenceEquals(x, y)) return true;

			if (ReferenceEquals(x, null) || ReferenceEquals(y, null))
				return false;

			return x.Lat == y.Lat && x.Long == y.Long;
		}

		// If Equals() returns true for a pair of objects 
		// then GetHashCode() must return the same value for these objects.

		public int GetHashCode(BlockedAreaCoordinate item)
		{
			//Get hash code for the Name field if it is not null.
			var hashLat = item.Lat.GetHashCode();

			//Get hash code for the Code field.
			var hashLong = item.Long.GetHashCode();

			//Calculate the hash code for the product.
			return hashLat ^ hashLong;
		}
	}
}