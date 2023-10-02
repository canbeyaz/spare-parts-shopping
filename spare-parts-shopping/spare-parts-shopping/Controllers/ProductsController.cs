using spare_parts_shopping.Models;
using System;
using System.Collections.Generic;
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
            var model = db.Orders.Where(x => x.UserId == user.Id && x.IsPayment == false).ToList();
            Orders newModel = new Orders();

            
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
    }
}