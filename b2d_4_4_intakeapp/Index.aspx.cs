using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using b2d_4_4_intakeapp.Classes;

namespace b2d_4_4_intakeapp
{
    public partial class Index : System.Web.UI.Page
    {
        Dal dal = new Dal();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void inputButton_Clicked(object sender, EventArgs e)
        {
            // maak object van class op basis van invoerveld, doe vervolgens code uit dal daarmee
        }
    }
}