using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExamSite.Data;
using ExamSite.ViewModels;

namespace ExamSite.Services
{
    public class ExamServices
    {
        ExamSiteEntities _db;
        public ExamServices()
        {
            _db = new ExamSiteEntities();
        }
        public List<ExamVM> GetAllExams()
        {
            try
            {
                //var EncryptPassword = Encrypt(Password);
                var model = (from n in _db.GetAllExams()
                             select new ExamVM
                             {
                                 ID = n.ID,
                                 ExamName = n.ExamName
                             }).ToList();
                return (model);
            }
            catch(Exception ex)
            {
                return new List<ExamVM>();
            }
        }

        public ExamVM GetExamDetails(int ExamID)
        {
            try
            {
                //var EncryptPassword = Encrypt(Password);
                var model = (from n in _db.GetExamDetails(ExamID)
                             select new ExamVM
                             {
                                 ID = n.ID,
                                 ExamName = n.ExamName,
                                 ExamDescription = n.ExamDescription,
                                 Duration = n.Duration,
                             }).FirstOrDefault();
                return (model);
            }
            catch (Exception ex)
            {
                return new ExamVM();
            }
        }

        public List<QuestionsVM> GetExamQuestions()
        {
            try
            {
                //var EncryptPassword = Encrypt(Password);
                var model = (from n in _db.GetExamQuestions()
                             select new QuestionsVM
                             {
                                 ID = n.QuestionID,
                                 QuestionTitle = n.QuestionTitle,
                             }).ToList();
                return (model);
            }
            catch (Exception ex)
            {
                return new List<QuestionsVM>();
            }
        }


    }
}