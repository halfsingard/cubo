using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCuba.Model
{
    public partial class Customer
    {
        public string FullName { get { return $"{Title} {FirstName} {MiddleName} {LastName} {Suffix}"; } }
    }
}