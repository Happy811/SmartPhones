using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SmartPhones.Data;
using SmartPhones.Models;

namespace SmartPhones.Controllers
{
    // controller for lab page actions
    public class LabsController : Controller
    {
        private readonly ApplicationDbContext _DbContext;
        public LabsController(ApplicationDbContext _DbContext)
        {
            this._DbContext = _DbContext;
        }
        // get all the data and return a list to view
        public IActionResult Labs()
        {
            var labs = _DbContext.tblLabs.ToList();
            return View(labs);
        }
        // Create actin method for creating new data record
        public IActionResult Create(Lab l)
        {
            return View(l);
        }
        [HttpPost]
        // post action method to add new phone in records
        
        public async Task<IActionResult> New(Lab l)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (l.LabId > 0)
                    {
                        _DbContext.Update(l);
                        await _DbContext.SaveChangesAsync();
                    }
                    else
                    {
                        _DbContext.Add(l);
                        await _DbContext.SaveChangesAsync();
                    }
                    return RedirectToAction("Labs");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Labs");
            }
            return View(l);
        }
        // Action to delete phone from records
        public async Task<IActionResult> Delete(int id)
        {
            var l = await _DbContext.tblLabs.FindAsync(id);
            if (l == null)
            {
            }
            else
            {
                _DbContext.Remove(l);
                await _DbContext.SaveChangesAsync();
            }
            return RedirectToAction("Labs");
        }

    }
}
