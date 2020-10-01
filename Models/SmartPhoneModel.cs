using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhones.Models
{
    public class SmartPhoneModel
    {
        [Key]
        public int PhoneId { get; set; }
        
        [Required]
        [Display(Name ="Phone Name")]
        public string Title { get; set; }
        [Required]
        public int Storage { get; set; }
        [Required]
        public int RAM { get; set; }
        [Required]
        public double Price { get; set; }
    }
}
