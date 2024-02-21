using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_Nimap_MachineTest.Models
{
    public class ProductReportModel
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string CategoryName { get; set; }
        public int CategoryId { get; set; }
    }
}