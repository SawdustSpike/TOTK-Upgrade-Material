using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Mvc;
using System.Xml.XPath;
using TOTK.Models;

namespace TOTK.Controllers
{
    public class MaterialController : Controller
    {
        private readonly IMaterialRepository repo;

        public MaterialController(IMaterialRepository repo)
        {
            this.repo = repo;
        }
        public IActionResult Index(string sortOrder)
        {
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "Name_Desc" : "";            
            ViewBag.AmountNeededSortParm = sortOrder == "Amount" ? "Amount_Desc" : "Amount"; 

            var material = repo.GetAllMaterials();
            switch (sortOrder)
            {                    
                case "Name_Desc":
                    material = material.OrderByDescending(x => x.Name);
                    break;
                case "Amount":
                    material = material.OrderBy(x => x.AmountNeeded);
                    break;
                case "Amount_Desc":
                    material = material.OrderByDescending(x => x.AmountNeeded);
                    break;
                default:
                    material = material.OrderBy(x => x.Name);
                    break;
            }            
            return View(material.ToList());
        }
        public IActionResult ViewMaterial(int id)
        {
            var Material = repo.GetMaterial(id);
            return View(Material);
        }
        public IActionResult UpdateMaterial(int id)
        {
            Material prod = repo.GetMaterial(id);
            if (prod == null)
            {
                return View("MaterialNotFound");
            }
            return View(prod);
        }

        public IActionResult UpdateMaterialToDatabase(Material material)
        {
            var check = repo.GetAllMaterials().ToList();
            var matches = check.Where(p => p.Name == material.Name).ToList();
            material.AmountNeeded += matches[0].AmountNeeded;
            repo.UpdateMaterial(material);

            return RedirectToAction("Index");
        }
        public IActionResult InsertMaterial()
        {
            return View(new Material());
        }
        public IActionResult InsertMaterialToDatabase(Material materialToInsert)
        {
            var check = repo.GetAllMaterials().ToList();
            var matches = check.Where(p => p.Name == materialToInsert.Name).ToList();
            if (matches.Any())
            {
                matches[0].AmountNeeded += materialToInsert.AmountNeeded;
                repo.UpdateMaterial(matches[0]);
            }
            else
            {
                repo.InsertMaterial(materialToInsert);
            }

            return RedirectToAction("Index");

        }
        public IActionResult DeleteMaterial(Material material)
        {
            repo.DeleteMaterial(material);
            return RedirectToAction("Index");
        }
    }
}
