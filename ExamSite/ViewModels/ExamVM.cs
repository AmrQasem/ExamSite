using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamSite.ViewModels
{
    public class ExamVM
    {
        public int ID { get; set; }
        public string ExamName { get; set; }
        public string ExamDescription { get; set; }
        public int? Duration { get; set; }
    }
}