using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamSite.ViewModels
{
    public class AnswerVM
    {
        public int ID { get; set; }
        public string QuestionID { get; set; }
        public string AnswerDetails { get; set; }
    }
}