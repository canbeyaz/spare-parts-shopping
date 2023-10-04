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
            if (user != null && user.Id != 0)
            {
                model = user.BasketItems;
                //model = db.Orders.Where(x => x.UserId == user.Id && x.IsPayment == false).ToList();
            }
            else if (user != null)
            {
                foreach (var item in user.BasketItems)
                {
                    item.Products = db.Products.SingleOrDefault(x => x.Id == item.ProductId);
                }
                model = user.BasketItems;
            }
            return View(model);
        }
        [HttpGet]
        public ActionResult ProductAddItem(int productId)
        {
            //ürün eklerken ilgili kulanıcının eklediği ürünü kontrol et
            //var ise ilgili ürünün quantity'sini artır.
            var user = (Users)Session["user"];
            var product = db.Products.FirstOrDefault(x => x.Id == productId);
            if (user != null && user.Id != 0)
            {
                var order = db.Orders.FirstOrDefault(x => x.ProductId == productId && x.UserId == user.Id);
                if (order == null)
                {
                    Orders orderNew = new Orders();
                    orderNew.ProductId = product.Id;
                    orderNew.UserId = user.Id;
                    orderNew.Quantity = 1;
                    orderNew.IsPayment = false;
                    db.Orders.Add(orderNew);
                }
                else
                {
                    order.Quantity += 1;
                    db.Orders.AddOrUpdate(order);
                }
                db.SaveChanges();
                user.BasketItems = db.Orders.Where(x => x.UserId == user.Id).ToList();
                Session["user"] = user;

            }
            else if (user == null)
            {
                Users nonAuthUser = new Users();
                nonAuthUser.BasketItems = new List<Orders>();
                nonAuthUser.BasketItems.Add(new Orders
                {
                    ProductId = productId,
                    Quantity = 1,
                    IsPayment = false
                });
                Session["user"] = nonAuthUser;

            }
            else
            {
                var nonAuthUserProduct = user.BasketItems.FirstOrDefault(x => x.ProductId == productId);
                if (nonAuthUserProduct != null)
                {
                    user.BasketItems.FirstOrDefault(x => x.ProductId == productId).Quantity += 1;
                }
                else
                {
                    user.BasketItems.Add(new Orders
                    {
                        ProductId = productId,
                        Quantity = 1,
                        IsPayment = false
                    });
                }
                Session["user"] = user;
            }

            return RedirectToAction("ProductDetail", "Products", new { id = productId });
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
            if (user != null && user.Id != 0)
            {
                var order = db.Orders.FirstOrDefault(x => x.UserId == user.Id && x.ProductId == productId);
                if (order != null)
                {

                    order.Quantity += 1;
                    db.Orders.AddOrUpdate(order);
                    db.SaveChanges();
                    user.BasketItems = db.Orders.Where(x => x.UserId == user.Id).ToList();
                    Session["user"] = user;

                }
            }
            else if (user != null && user.Id == 0)
            {
                user.BasketItems.FirstOrDefault(x => x.ProductId == productId).Quantity += 1;
            }
            return RedirectToAction("ProductOrders", "Products");
        }
        [HttpGet]
        public ActionResult ProductDecrease(int productId)
        {
            var user = (Users)Session["user"];
            if (user != null && user.Id != 0)
            {
                var order = db.Orders.FirstOrDefault(x => x.UserId == user.Id && x.ProductId == productId);
                if (order != null)
                {
                    order.Quantity -= 1;
                    if (order.Quantity <= 0)
                    {
                        db.Orders.Remove(order);
                        db.SaveChanges();
                        user.BasketItems = db.Orders.Where(x => x.UserId == user.Id).ToList();
                        Session["user"] = user;
                    }
                    else
                    {
                        db.Orders.AddOrUpdate(order);
                        db.SaveChanges();
                        user.BasketItems = db.Orders.Where(x => x.UserId == user.Id).ToList();
                        Session["user"] = user;
                    }


                }
            }
            else if (user != null && user.Id == 0)
            {
                user.BasketItems.FirstOrDefault(x => x.ProductId == productId).Quantity -= 1;
                var listSingleOrder = user.BasketItems.FirstOrDefault(x => x.ProductId == productId);

                if (listSingleOrder.Quantity <= 0)
                {
                    user.BasketItems.Remove(listSingleOrder);
                    Session["user"] = user;
                }
            }
            return RedirectToAction("ProductOrders", "Products");
        }
    }
}