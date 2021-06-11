using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
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
            DateTime dateOne = DateTime.ParseExact("06/04/2021 10:00", "MM/dd/yyyy HH:mm", CultureInfo.InvariantCulture);
            DateTime dateTwo = DateTime.ParseExact("06/04/2021 10:00", "MM/dd/yyyy HH:mm", CultureInfo.InvariantCulture);

            Article newArtcile = new Article(0, Convert.ToInt32(productChooser.SelectedValue), Convert.ToInt32(statusChooser.SelectedValue), Convert.ToInt32(userChooser.SelectedValue), 0, dateOne, dateTwo, articleImage0.Value, commentary.Value); 
            dal.AddNewArticle(newArtcile);

            // Het onderdeel dat bij het aanmaken van een nieuw artikel de punten bijschrijft bij de gebruiker. Via de ingevoerde categorie zoekt hij
            // de bijbehorende punten. Hierna wordt de gebruiker gezocht op basis van de keuze. De punten uit de categorie worden bij deze gebruiker
            // bijgeschreven. 

            int categoryId = Convert.ToInt32(categoryChooser.SelectedValue);
            Category fromCategory = dal.GetCategoryDetails(categoryId);
            int rewardedPoints = fromCategory.GetPoints();

            // Zoekt het userId op en voegt de punten toe bij de functie in de DAL. Het opzoeken van de user doet hij ook automatisch in deze
            // functie.
            int userId = Convert.ToInt32(userChooser.SelectedValue);
            dal.AddPointsToUser(userId, rewardedPoints);

        }

        protected void addProductBtn_Clicked(object sender, EventArgs e)
        {
            // maak object van class op basis van invoerveld, doe vervolgens code uit dal daarmee

            Product newProduct = new Product(0, Convert.ToInt32(categoryChooser0.SelectedValue), productName.Value, productDescriptionNA.Value);
            dal.AddNewProduct(newProduct);

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void statusChooser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}