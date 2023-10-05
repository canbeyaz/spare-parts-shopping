using spare_parts_shopping.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Results;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace spare_parts_shopping.API.Controllers
{
    public class PaymentController : ApiController
    {
        SparePartsPaymentDb db = new SparePartsPaymentDb();
        // GET: Payment
        
        [HttpPost]
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public string Post(Payments cardInformation)
        {
            if(cardInformation != null)
            {
                if(cardInformation.CardNo != null)
                {
                    if(cardInformation.CardName != null)
                    {
                        if(cardInformation.CardMonth != null && cardInformation.CardYear != null)
                        {
                            if(cardInformation.CardCvv != null)
                            {
                                if(cardInformation.Price != null)
                                {
                                    db.Payments.Add(cardInformation);

                                    db.SaveChanges();
                                    return "200";
                                }
                                else
                                {
                                    return "100";
                                }
                            }
                            else
                            {
                                return "101";
                            }
                        } 
                        else
                        {
                            return "102";
                        }
                    }
                    else
                    {
                        return "103";
                    }
                }
                else
                {
                    return "104";
                }
            }
            else
            {
                return "105";
            }
            
            return "Error!";
        }
    }
}