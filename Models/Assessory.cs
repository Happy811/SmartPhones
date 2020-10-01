using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhones.Models
{
    public class Assessory // Mobile assesories model class
    {
        [Key] // primary id
        public int AssID { get; set; }
        // Name of the item
        public string Name { get; set; }
        // company name
        public string Company { get; set; }
        // price of the assessory
        public double Price { get; set; }
        // is the assesory genuine or copy
        public bool Genuine { get; set; }
        public bool Copy { get; set; }
        public int Stock { get; set; }


    }
}
