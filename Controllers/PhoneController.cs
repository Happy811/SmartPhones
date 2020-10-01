using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SmartPhones.Data;
using SmartPhones.Models;

namespace SmartPhones.Controllers
{
    // controller class for phones
    // All redirections are in action named 'Phones'
    public class PhoneController : Controller
    {
        private readonly ApplicationDbContext _DbContext;
        public PhoneController(ApplicationDbContext _DbContext)
        {
            this._DbContext = _DbContext;
        }
        // lists all phones
        public IActionResult Phones()
        {
            
                var smrtPhones = _DbContext.tblPhones.ToList();
                return View(smrtPhones);
           
        }
        // default action method for new creation of phone record
        public IActionResult Create(SmartPhoneModel phone)
        {
            return View(phone);
        }
        [HttpPost]
        // post action method to add new phone in records
        // method utilizes hidden filed and uses action for both purposes adding new phone and editing the phone based on id
        public async Task<IActionResult> New(SmartPhoneModel phone)
        {
            try
            {
                if(ModelState.IsValid)
                {
                    if(phone.PhoneId>0)
                    {
                        _DbContext.Update(phone);
                        await _DbContext.SaveChangesAsync();
                    }else
                    {
                        _DbContext.Add(phone);
                        await _DbContext.SaveChangesAsync();
                    }
                    return RedirectToAction("Phones");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Phones");
            }
            return View(phone);
        }
        // Action to delete phone from records
        public async Task<IActionResult> Delete(int id)
        {
            var phone = await _DbContext.tblPhones.FindAsync(id);
            if(phone==null)
            {
            }else
            {
                _DbContext.Remove(phone);
                await _DbContext.SaveChangesAsync();
            }
            return RedirectToAction("Phones");
        }
    }
}
