using spare_parts_shopping.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace spare_parts_shopping.Controllers
{
    public class ProductsController : Controller
    {
        SparePartsDbModel db = new SparePartsDbModel();
        // GET: Products
        public ActionResult ProductDetail(int id)
        {
            var product = db.Products.SingleOrDefault(x => x.Id == id);
            
            return View(product);
        }
        [HttpGet]
        public ActionResult ProductAdd()
        {
            return View();
        }

        [HttpGet]
        public ActionResult ProductOrders()
        {
            var user = (Users)Session["user"];
            List<Orders> model = new List<Orders>();
            if(user != null)
            {
                model = db.Orders.Where(x => x.UserId == user.Id && x.IsPayment == false).ToList();
            }
            
            

            
            return View(model);
        }
        [HttpPost]
        public ActionResult ProductAddItem(Product product)
        {
            //ürün eklerken ilgili kulanıcının eklediği ürünü kontrol et
            //var ise ilgili ürünün quantity'sini artır.
            return View();
        }

        [HttpPost]
        public ActionResult ProductImageAdd(HttpPostedFileBase image1)
        {

            return View();
        }

        [HttpGet]
        public ActionResult ProductIncrease(int productId)
        {
            var user = (Users)Session["user"];
            if(user != null)
            {
                var order = db.Orders.FirstOrDefault(x => x.UserId == user.Id && x.ProductId == productId);
                if(order != null)
                {
                    order.Quantity += 1;
                    db.Orders.AddOrUpdate(order);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("ProductOrders", "Products");
        }
        [HttpGet]
        public ActionResult ProductDecrease(int productId)
        {
            var user = (Users)Session["user"];
            if (user != null)
            {
                var order = db.Orders.FirstOrDefault(x => x.UserId == user.Id && x.ProductId == productId);
                if (order != null)
                {
                    order.Quantity -= 1;
                    if (order.Quantity <= 0)
                    {
                        db.Orders.Remove(order);
                        db.SaveChanges();
                    }
                    else
                    {
                        db.Orders.AddOrUpdate(order);
                        db.SaveChanges();
                    }
                    
                    
                }
            }
            return RedirectToAction("ProductOrders", "Products");
        }
    }
}