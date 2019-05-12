using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cars.Domain.Data;
using CarsMap.Domain.Models;

namespace CarsMapForms
{
	public partial class _Default : Page
	{
		public GpsTrackingContext DbContext;
		public IList<GpsReal> MyData = new List<GpsReal>();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ViewState["CurrentPage"] = 1;
				Pagging();

			}
		}

		protected void btnFilter_OnClick(object sender, EventArgs e)
		{
			ViewState["CurrentPage"] = 1;
			Pagging();
		}

		public DataTable GpsRealPagging(int rowsPerPage,
			int page,
			string modemId,
			DateTime? fromDate,
			DateTime? toDate)
		{
			var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GPS_Tracking"].ToString());
			var dA = new SqlDataAdapter("GPS_RealPagging", conn);
			dA.SelectCommand.Parameters.AddWithValue("@RowsPerPage", rowsPerPage);
			dA.SelectCommand.Parameters.AddWithValue("@Page", page);
			if (!string.IsNullOrEmpty(modemId))
				dA.SelectCommand.Parameters.AddWithValue("@ModemId", modemId);
			if (fromDate.HasValue)
				dA.SelectCommand.Parameters.AddWithValue("@FromDate", fromDate);
			if (toDate.HasValue)
				dA.SelectCommand.Parameters.AddWithValue("@ToDate", toDate);


			dA.SelectCommand.CommandType = CommandType.StoredProcedure;
			var dt = new DataTable();
			dA.Fill(dt);
			return dt;
		}

		private void Pagging()
		{
			const int rowsPerPage = 10;
			DbContext = new GpsTrackingContext();
			var total = DbContext.GpsReal.Count();
			var pageCount = Convert.ToInt32(Math.Ceiling((float) total / rowsPerPage));

			var pageCountSize = 2;

			var startPage = Convert.ToInt32(ViewState["CurrentPage"]) > pageCountSize
				? Convert.ToInt32(ViewState["CurrentPage"]) - pageCountSize
				: 1;

			int endPage;

			if (Convert.ToInt32(ViewState["CurrentPage"]) + pageCountSize < pageCount)
				endPage = Convert.ToInt32(ViewState["CurrentPage"]) + pageCountSize;
			else
				endPage = pageCount;

			var dt = new DataTable();

			dt.Columns.Add("page");
			dt.Columns.Add("class");

			for (var i = startPage; i <= endPage; i++)
			{
				var R = dt.NewRow();
				R["page"] = i;
				R["class"] = Convert.ToInt32(ViewState["CurrentPage"]) == i ? "current" : " ";
				dt.Rows.Add(R);
			}

			RpPager.DataSource = dt;
			RpPager.DataBind();

			var gpsReals = GpsRealPagging(rowsPerPage, Convert.ToInt32(ViewState["CurrentPage"]), txtType.Text,
				!string.IsNullOrEmpty(fromDate.Text) ? Convert.ToDateTime(fromDate.Text) : (DateTime?) null,
				!string.IsNullOrEmpty(toDate.Text) ? Convert.ToDateTime(toDate.Text) : (DateTime?) null);

			GridView1.DataSource = gpsReals;
			GridView1.DataBind();

			NoData.Visible = GridView1.Rows.Count == 0;
			RpPager.Visible = GridView1.Rows.Count >= 10;

		}

		protected void btnPage_OnClick(object sender, EventArgs e)
		{
			var btnPage = (LinkButton) sender;
			ViewState["CurrentPage"] = Convert.ToInt32(btnPage.Text);
			Pagging();
		}
	}
}