using Agent_Management.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Agent_Management.LAL
{
    public class Manager
    {
        AgentDbContext db = new AgentDbContext();
        public IQueryable<Agent> GetAgent()
        {
            return db.Agents.AsQueryable();
        }
        public void Insert(Agent a)
        {
            db.Agents.Add(a);
            db.SaveChanges();
        }
        public void Update(Agent a)
        {
            db.Entry(a).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void Delete(Agent a)
        {
            db.Entry(a).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
        public IQueryable<Company> GetCompany()
        {
            return db.Companies.AsQueryable();
        }
        public IQueryable<Company> GetCompany(int AgentId)
        {
            return db.Companies.Where(x => x.Agent.AgentId == AgentId).AsQueryable();
        }
        public void Insert(Company c)
        {
            db.Companies.Add(c);
            db.SaveChanges();
        }
        public void Update(Company c)
        {
            db.Entry(c).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void Delete(Company c)
        {
            db.Entry(c).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}