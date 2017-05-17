using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxeComasterpage
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkBtnInsert_Click (object sender, EventArgs e)
        {
            ProductDataSource.InsertParameters["ProductName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("ProductTxtName")).Text;
            ProductDataSource.InsertParameters["ProductStock"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("ProductTxtStock")).Text;
            ProductDataSource.InsertParameters["ProductPrice"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("ProductTxtPrice")).Text;
            ProductDataSource.Insert();

        }
    }
}