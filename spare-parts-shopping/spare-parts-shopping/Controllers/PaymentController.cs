using spare_parts_shopping.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Mvc;

namespace spare_parts_shopping.Controllers
{
    public class PaymentController : Controller
    {
        SparePartsDbModel db = new SparePartsDbModel();
        // GET: Payment
        public ActionResult Index(List<Orders> orders)
        {
            var user = (Users)Session["user"];

            return View(user.BasketItems);
        }

        public ActionResult StockCheck()
        {
            var user = (Users)Session["user"];
            if (user != null)
            {
                foreach (var item in user.BasketItems)
                {
                    item.StockError = item.Quantity > item.Products.Stock;

                }
                Session["user"] = user;
            }

            if (user.BasketItems.Any(x => x.StockError == true))
            {
                return RedirectToAction("ProductOrders", "Products");
            }
            else
            {
                return RedirectToAction("Index", "Payment", user.BasketItems);
            }
        }

        public ActionResult PaymentCheck(int statusId)
        {
            return View(statusId);
        }

        public void SuccessPaymentStockDecrease()
        {
            var user = (Users)Session["user"];

            foreach (var item in user.BasketItems)
            {
                if (db.Products.FirstOrDefault(x => x.Id == item.ProductId) != null)
                {
                    db.Products.FirstOrDefault(x => x.Id == item.ProductId).Stock -= item.Quantity;
                    db.SaveChanges();
                }
            }
        }
    }
}