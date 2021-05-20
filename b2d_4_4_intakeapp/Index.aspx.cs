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

            Article newArtcile = new Article(0, Convert.ToInt32(productChooser.SelectedValue), Convert.ToInt32(statusChooser.SelectedValue), 1, 0, Convert.ToDateTime("14-05-2021"), Convert.ToDateTime("14-05-2021"), "Niks", "Niks"); // Laatste paar zijn placeholders ivm tijd
            dal.AddNewArticle(newArtcile);

        }

        protected void addProductBtn_Clicked(object sender, EventArgs e)
        {
            // maak object van class op basis van invoerveld, doe vervolgens code uit dal daarmee

            Product newProduct = new Product(0, Convert.ToInt32(categoryChooser.SelectedValue), productName.Value, theProductDescription.Value);
            dal.AddNewProduct(newProduct);

        }
    }
}