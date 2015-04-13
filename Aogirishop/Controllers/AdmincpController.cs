using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Aogirishop.Models;

namespace Aogirishop.Controllers
{
    public class AdmincpController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Hello = "Hello world";
            return View();
        }

        #region [GROUP PRODUCT]

        //GROUP PRODUCT - ADD NEW
        [HttpGet]
        public ActionResult GroupProduct_AddNew()
        {
            ViewBag.TitleForm = "Thêm mới nhóm sản phẩm";
            return View();
        }
        [HttpPost]
        public ActionResult GroupProduct_AddNew(N412_GroupProduct gpnew)
        {
            ViewBag.TitleForm = "Thêm mới nhóm sản phẩm";

            AogirishopEntities db = new AogirishopEntities();
            N412_GroupProduct gp = new N412_GroupProduct();
            gp.GroupProduct_Name = gpnew.GroupProduct_Name;
            gp.GroupProduct_Link = gpnew.GroupProduct_Link;
            gp.GroupProduct_Image = gpnew.GroupProduct_Image;
            gp.GroupProduct_STT = gpnew.GroupProduct_STT;
            gp.GroupProduct_Status = true;            

            db.N412_GroupProduct.AddObject(gp);
            db.SaveChanges();

            return RedirectToAction("GroupProduct_List");
        }

        //GROUP PRODUCT - LIST
        [HttpGet]
        public ActionResult GroupProduct_List()
        {
            ViewBag.TitleForm = "Danh sách nhóm sản phẩm";

            AogirishopEntities db = new AogirishopEntities();
            var _listGroupProduct = db.N412_GroupProduct;

            return View(_listGroupProduct);
        }
        [HttpPost]
        public ActionResult GroupProduct_List(N412_GroupProduct gpnew)
        {
            ViewBag.TitleForm = "Thêm mới nhóm sản phẩm";

            AogirishopEntities db = new AogirishopEntities();
            N412_GroupProduct gp = new N412_GroupProduct();
            gp.GroupProduct_Name = gpnew.GroupProduct_Name;
            gp.GroupProduct_Link = gpnew.GroupProduct_Link;
            gp.GroupProduct_Image = gpnew.GroupProduct_Image;

            db.N412_GroupProduct.AddObject(gp);
            db.SaveChanges();

            return View();
        }
        
        #endregion
    }
}
