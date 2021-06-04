using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace b2d_4_4_intakeapp.Classes
{
    public class Category
    {
        private int categoryId;
        private string categoryName;
        private int categoryPoints;

        public Category(int _categoryId, string _categoryName, int _categoryPoints)
        {
            this.categoryId = _categoryId;
            this.categoryName = _categoryName;
            this.categoryPoints = _categoryPoints;
        }

        public int GetCategoryId()
        {
            return categoryId;
        }

        public string GetCategoryName()
        {
            return categoryName;
        }

        public int GetPoints()
        {
            return categoryPoints;
        }
    }
}