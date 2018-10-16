using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExamSite.ViewModels;
using ExamSite.Data;


namespace ExamSite.Services
{
    public class UserService
    {
        ExamSiteEntities _db;
        public UserService()
        {
            _db = new ExamSiteEntities();
        }

        public UserVM Login(string Email, string Password)
        {
            try
            {
                var model = (from n in _db.UserLogin(Email.ToLower(), Password)
                             select new UserVM
                             {
                                 ID = n.ID,
                                 UserName = n.UserName,
                             }).FirstOrDefault();
                return (model);
            }
            catch
            {
                return new UserVM();
            }
        }
    }
}