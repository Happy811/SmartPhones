using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhones.Models
{
    public class Lab // Lab for mobiles repair service
    {
        [Key]
        public int LabId { get; set; }
        [Required]
        // mobile model
        public string MobileModel { get; set; }
        [Required]
        // identified fault in the phone
        public string Fault { get; set; }
        [Required]
        // expected rapair date and time
        public DateTime ExpectedRepairDate { get; set; }
        public bool IsRepairable { get; set; }
        public bool IsDeadCondition { get; set; }

    }
}
