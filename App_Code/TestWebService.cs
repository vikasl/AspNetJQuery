using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for TestWebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class TestWebService : System.Web.Services.WebService {

    public TestWebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(EnableSession = true)]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod(EnableSession = true)]
    public List<Product> GetProducts()
    {
        return new List<Product>
                   {
                       new Product
                           {
                               ProductId = 1,
                               ProductDetails =
                                   new List<Details>
                                       {
                                           new Details {DetailId = 11}, 
                                           new Details {DetailId = 22}
                                       }
                           },
                           new Product
                           {
                               ProductId = 2,
                               ProductDetails =
                                   new List<Details>
                                       {
                                           new Details {DetailId = 33}, 
                                           new Details {DetailId = 44}
                                       }
                           },
                            new Product
                           {
                               ProductId = 3,
                               ProductDetails =
                                   new List<Details>
                                       {
                                           new Details {DetailId = 55}, 
                                           new Details {DetailId = 66}
                                       }
                           },
                           new Product
                           {
                               ProductId = 4,
                               ProductDetails =
                                   new List<Details>
                                       {
                                           new Details {DetailId = 77}, 
                                           new Details {DetailId = 88}
                                       }
                           }
                   };



    }


    
}