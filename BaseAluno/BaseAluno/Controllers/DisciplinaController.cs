using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BaseAluno.Models;

namespace BaseAluno.Controllers
{
    public class DisciplinaController : Controller
    {
        private EscolaEntities db = new EscolaEntities();

        // GET: Disciplina
        public ActionResult Index()
        {
            var disciplinas = db.Disciplinas.Include(d => d.Cursos);
            return View(disciplinas.ToList());
        }

        // GET: Disciplina/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Disciplinas disciplinas = db.Disciplinas.Find(id);
            if (disciplinas == null)
            {
                return HttpNotFound();
            }
            return View(disciplinas);
        }

        // GET: Disciplina/Create
        public ActionResult Create()
        {
            ViewBag.CURSOID = new SelectList(db.Cursos, "CURSOID", "CURSODESCRICAO");
            return View();
        }

        // POST: Disciplina/Create
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DISID,DISDESCRIACAO,DISCH,CURSOID")] Disciplinas disciplinas)
        {
            if (ModelState.IsValid)
            {
                db.Disciplinas.Add(disciplinas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CURSOID = new SelectList(db.Cursos, "CURSOID", "CURSODESCRICAO", disciplinas.CURSOID);
            return View(disciplinas);
        }

        // GET: Disciplina/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Disciplinas disciplinas = db.Disciplinas.Find(id);
            if (disciplinas == null)
            {
                return HttpNotFound();
            }
            ViewBag.CURSOID = new SelectList(db.Cursos, "CURSOID", "CURSODESCRICAO", disciplinas.CURSOID);
            return View(disciplinas);
        }

        // POST: Disciplina/Edit/5
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DISID,DISDESCRIACAO,DISCH,CURSOID")] Disciplinas disciplinas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(disciplinas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CURSOID = new SelectList(db.Cursos, "CURSOID", "CURSODESCRICAO", disciplinas.CURSOID);
            return View(disciplinas);
        }

        // GET: Disciplina/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Disciplinas disciplinas = db.Disciplinas.Find(id);
            if (disciplinas == null)
            {
                return HttpNotFound();
            }
            return View(disciplinas);
        }

        // POST: Disciplina/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Disciplinas disciplinas = db.Disciplinas.Find(id);
            db.Disciplinas.Remove(disciplinas);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
