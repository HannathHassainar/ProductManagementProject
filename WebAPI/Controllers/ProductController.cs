using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    public class ProductController : ApiController
    {
        Entities db = new Entities();

        public string Post(Product product)
        {
            db.Products.Add(product);
            db.SaveChanges();
            return "Product Added";
        }

        public IEnumerable<Product> Get()
        {
            return db.Products.ToList();
        }

        public string Put(int id, Product product)
        {
            var product_ = db.Products.Find(id);
            product.Name = product.Name;
            product.Price = product.Price;
            product.Quantity = product.Quantity;
            product.Active = product.Active;

            db.Entry(product_).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            return "Product updated";
        }

        public string Delete(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return "Deleted";
        }
    }
}
