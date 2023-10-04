using spare_parts_shopping.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Results;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace spare_parts_shopping.API.Controllers
{
    public class PaymentController : ApiController
    {
        // GET: Payment
        
        [HttpPost]
        public HttpResponseMessage Post(Card cardInformation)
        {
            List<int> StatusCode = new List<int>();
            StatusCode.Add(1);
            StatusCode.Add(2);
            StatusCode.Add(3);

            XElement xmlElements = new XElement("StatusCode", StatusCode[0]);
            return new HttpResponseMessage
            {
                Content = new StringContent(xmlElements.ToString(), Encoding.UTF8, "application/xml")
            };
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, "test");
        }
    }
}