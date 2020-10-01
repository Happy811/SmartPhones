using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using SmartPhones.Models;

namespace SmartPhones.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Assessory> tblAssessories { get; set; }
        public DbSet<SmartPhoneModel> tblPhones { get; set; }
        public DbSet<Lab> tblLabs { get; set; }
    }
}
