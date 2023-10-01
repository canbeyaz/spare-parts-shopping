using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace spare_parts_shopping.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        [Route("Login")]
        public ActionResult Login()
        {
            return View();
        }
        [Route("Signup")]
        public ActionResult Signup()
        {
            return View();
        }
    }
}