using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading;
using System.Globalization;

namespace SitesDesktopMobilesResponsives.site1.forms
{
    public partial class Desktop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // aconselho a remover as ligacoes com a base de dados se for a baixar e rodar
            
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            //active mobile
            if (ImageButton3.ImageUrl.Contains("~/site1/image/menu/burguer.png"))
            {
                ImageButton3.ImageUrl = "~/site1/image/menu/xburguer.png";
                 nav.Attributes["class"] = "navbar active1";
            }
            else
            {
                ImageButton3.ImageUrl = "~/site1/image/menu/burguer.png";
                nav.Attributes["class"] = "navbar";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //active search bar
            if (search.Attributes["class"] == "search-form")
            {
                 search.Attributes["class"] = "search-form active3";
            }
            else
            {
                search.Attributes["class"] = "search-form";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //active mobile
            if (Panel1.Attributes["class"] == "cart-items-container")
            {
                Panel1.Attributes["class"] = "cart-items-container active2";
            }
            else
            {
                Panel1.Attributes["class"] = "cart-items-container";
            }
        }

        //sql server connection
        SqlConnection con = new SqlConnection(@"Data Source=JANELTON\SQLEXPRESS;Initial Catalog=coffedatatable;Integrated Security=True");

        

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {
            //active search
            con.Open();
            SqlDataAdapter dataAdapter = new SqlDataAdapter("select * from  coffecuptable where (coffecup_name like '%" + TextBox1.Text + "%') or (coffecup_id like '%" + TextBox1.Text + "%') ", con);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            
            DataList2.DataSourceID = null;
            DataList2.DataSource = dataTable;
            DataList2.DataBind();
            con.Close();
            
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}