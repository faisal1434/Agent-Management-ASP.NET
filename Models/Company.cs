//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Agent_Management.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public int CompanyId { get; set; }
        public string CompanyName { get; set; }
        public string Address { get; set; }
        public int AgentId { get; set; }
    
        public virtual Agent Agent { get; set; }
    }
}
