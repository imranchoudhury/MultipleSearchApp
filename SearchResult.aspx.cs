using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STrackTest
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             var data = Session["data"];
             
             Repeater1.DataSource = data;
             Repeater1.DataBind();

        }
    }
}