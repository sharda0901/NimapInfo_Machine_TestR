using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_Nimap_MachineTest.Models
{
    public class CategoryModel
    {
        public int CategoryId { get; set; }

        public string CategoryName { get; set; }
        public bool IsActiv { get; set; }
    }
}