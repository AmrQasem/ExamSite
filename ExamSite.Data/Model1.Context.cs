﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamSite.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class ExamSiteEntities : DbContext
    {
        public ExamSiteEntities()
            : base("name=ExamSiteEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Exam> Exams { get; set; }
        public virtual DbSet<Answer> Answers { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
    
        public virtual ObjectResult<UserLogin_Result> UserLogin(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<UserLogin_Result>("UserLogin", emailParameter, passwordParameter);
        }
    
        public virtual ObjectResult<GetAllExams_Result> GetAllExams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllExams_Result>("GetAllExams");
        }
    
        public virtual ObjectResult<GetExamDetails_Result> GetExamDetails(Nullable<int> examID)
        {
            var examIDParameter = examID.HasValue ?
                new ObjectParameter("ExamID", examID) :
                new ObjectParameter("ExamID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetExamDetails_Result>("GetExamDetails", examIDParameter);
        }
    
        public virtual ObjectResult<GetAnswers_Result> GetAnswers(Nullable<int> questionID)
        {
            var questionIDParameter = questionID.HasValue ?
                new ObjectParameter("QuestionID", questionID) :
                new ObjectParameter("QuestionID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAnswers_Result>("GetAnswers", questionIDParameter);
        }
    
        public virtual ObjectResult<GetExamQuestions_Result> GetExamQuestions()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetExamQuestions_Result>("GetExamQuestions");
        }
    }
}
