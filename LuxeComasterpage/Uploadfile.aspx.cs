using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxeComasterpage
{
    public partial class Uploadfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];

            string filename = ProductID + ".jpg";

            Photo.ImageUrl = "~/ProductPhotos/" + filename;


        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];

            string filename = ProductID + ".jpg";
            string saveLocation = Server.MapPath("~/ProductPhotos/" + filename);

            Upload.SaveAs(saveLocation);
        }
    }
}