using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SmartPhones.Data;
using SmartPhones.Models;

namespace SmartPhones.Controllers
{
    public class AssessoriesController : Controller
    { // controller for assessories of the model page
        private readonly ApplicationDbContext _DbContext;
        public AssessoriesController(ApplicationDbContext db)
        {
            _DbContext = db;
        }
        // get all assesories and put in view
        public IActionResult Assessories()
        {
            var ass = _DbContext.tblAssessories.ToList();
            return View(ass);
        }
        // default action method for new creation
        public IActionResult Create(Assessory ass)
        {
            return View(ass);
        }
        [HttpPost]
        // Method for http post request for creating new assessory
        public async Task<IActionResult> New(Assessory ass)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (ass.AssID > 0)
                    {
                        _DbContext.Update(ass);
                        await _DbContext.SaveChangesAsync();
                    }
                    else
                    {
                        _DbContext.Add(ass);
                        await _DbContext.SaveChangesAsync();
                    }
                    return RedirectToAction("Assessories");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Assessories");
            }
            return View(ass);
        }
        // method to delete an assessory
        public async Task<IActionResult> Delete(int id)
        {
            var ass = await _DbContext.tblAssessories.FindAsync(id);
            if (ass == null)
            {
                return RedirectToAction("Assessories");
            }
            else
            {
                _DbContext.Remove(ass);
                await _DbContext.SaveChangesAsync();
            }
            return RedirectToAction("Assessories");
        }

    }
}
