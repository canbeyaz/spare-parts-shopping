using spare_parts_shopping.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace spare_parts_shopping.Controllers
{
    public class LoginController : Controller
    {
        SparePartsDbModel db = new SparePartsDbModel();
        // GET: Login
        [Route("Login")]
        public ActionResult Login()
        {
            
            return View();
        }

        [HttpPost]
        public ActionResult Login(Users user)
        {
            var model = db.Users.SingleOrDefault(x => x.Username == user.Username && x.Password == user.Password);
            if (model == null)
            {
                return View();
            }
            int count = db.Orders.Where(x => x.UserId == model.Id).Count();
            model.BasketItems = count;
            Session["user"] = model;
            return RedirectToAction("Index","Home", model);
        }
        [Route("Signup")]
        public ActionResult Signup()
        {
            TempData.Keep("ErrorMessage");
            return View();
        }
        [HttpPost]
        public ActionResult UserAdd(Users user)
        {
            var dbUser = db.Users.FirstOrDefault(x => x.Username == user.Username || x.Mail == user.Mail);
            if(user != null && dbUser == null)
            {
                user.CreateDate = DateTime.Now;
                db.Users.Add(user);
                db.SaveChanges();
                Session["user"] = user;
                return RedirectToAction("Index", "Home", user);
            }
            else
            {
                TempData["ErrorMessage"] = "Farklı bir kullanıcı adı ve mail ile kayıt olun!";
                return RedirectToAction("Signup");
            }
           
        }
    }
}