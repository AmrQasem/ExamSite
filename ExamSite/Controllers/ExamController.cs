using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ExamSite.Data;
using ExamSite.Services;
using ExamSite.ViewModels;

namespace ExamSite.Controllers
{
    public class ExamController : Controller
    {
        ExamSiteEntities db = new ExamSiteEntities();

        private readonly ExamServices _ExamService;
        public ExamController()
        {
            _ExamService = new ExamServices();
        }
        // GET: Exam
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetAllExams()
        {
            var model = _ExamService.GetAllExams();
            return PartialView(model);
        }

        public ActionResult GetExamDetails(int ExamID)
        {
            var model = _ExamService.GetExamDetails(ExamID);
            return PartialView(model);
        }

        public ActionResult GetExamQuestions()
        {
            var model = _ExamService.GetExamQuestions();
            return PartialView(model);
        }

        public ActionResult AddAnswers(int QuestID)
        {
            ViewBag.QuestionID = QuestID;
            return View();
        }

        [HttpPost]
        public ActionResult AddAnswers(Answer answer)
        {
            string QuestionID = Request["Question_ID"];
            string answers = Request["Answer"];
            Answer obj = new Answer();

            obj.QuestionID = int.Parse(QuestionID);
            obj.AnswerDetails = answers;

            db.Answers.Add(obj);
            db.SaveChanges();

            return Json("OK!");

        }
    }
}