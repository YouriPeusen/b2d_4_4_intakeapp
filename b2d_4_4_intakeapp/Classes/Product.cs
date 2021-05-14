using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace b2d_4_4_intakeapp.Classes
{
    public class Product
    {
        private int productId;
        private int categoryId;
        private string productName;
        private string productDescription;
        

        public Product(int _productId, int _categoryId, string _productName, string _productDescription)
        {
            this.productId = _productId;
            this.categoryId = _categoryId;
            this.productName = _productName;
            this.productDescription = _productDescription;
        }
    }
}