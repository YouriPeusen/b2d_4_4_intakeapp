using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace b2d_4_4_intakeapp.Classes
{
    public class Article
    {
        private int articleId;
        private int productId;
        private int statusId;
        private int providerId;
        private int renterId;
        private DateTime loanDate;
        private DateTime expirationDate;
        private string image;
        private string commentary;

        public Article(int _articleId,
         int _productId,
        int _statusId,
         int _providerId,
        int _renterId,
         DateTime _loanDate,
        DateTime _expirationDate,
        string _image,
       string _commentary)
        {
            this.articleId = _articleId;
            this.productId = _productId;
            this.statusId = _statusId;
            this.providerId = _providerId;
            this.renterId = _renterId;
            this.loanDate = _loanDate;
            this.expirationDate = _expirationDate;
            this.image = _image;
            this.commentary = _commentary;
        }

        public int getId()
        {
            return articleId;
        }
    }
}