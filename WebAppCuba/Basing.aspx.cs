using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppCuba.Model;

namespace WebAppCuba
{
    public partial class Basing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                bindData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (var dc = new SampleDBEntities())
                {
                    var data = new Person
                    {
                        Title = txtTitle.Text,
                        FirstName = txtFirstName.Text,
                        MiddleName = txtMiddleName.Text,
                        LastName = txtLastName.Text,
                        Suffix = txtSuffix.Text,
                        CompanyName = txtCompanyName.Text,
                    };

                    dc.People.Add(data);
                    dc.SaveChanges();

                    txtTitle.Text = "";
                    txtFirstName.Text = "";
                    txtMiddleName.Text = ""; txtLastName.Text = "";
                    txtLastName.Text = "";
                    txtSuffix.Text = "";
                    txtCompanyName.Text = "";
                }

                bindData();
                lblMessage.Text = "";
            }
            catch (Exception ex)
            {
                lblMessage.Text = $"{ex.Message}";
                if (ex.InnerException != null)
                {
                    lblMessage.Text = $"{lblMessage.Text}{ex.InnerException.Message}";
                    if (ex.InnerException.InnerException != null)
                    {
                        lblMessage.Text = $"{lblMessage.Text}{ex.InnerException.InnerException.Message}";
                    }
                }
            }
        }

        protected void bindData()
        {
            using (var dc = new SampleDBEntities())
            {
                var data = dc.People.OrderByDescending(o => o.Idx).ToList();
                gvCustomer.DataSource = data;
                gvCustomer.DataBind();
            }
        }
    }
}