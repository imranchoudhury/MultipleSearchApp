using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STrackTest
{
    public partial class applist2010 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            DropDownList1.SelectedValue = string.Empty;
            DropDownList2.SelectedValue = string.Empty;
            DropDownList3.SelectedValue = string.Empty;
            DropDownList4.SelectedValue = string.Empty;
            DropDownList5.SelectedValue = string.Empty;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.IndexOf(' ') != TextBox1.Text.Length - 10)
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<scripts>alert('UIN should be 9 digit');</script>");

            DataClassesSampleDataContext Db1 = new DataClassesSampleDataContext();
            string uin = TextBox1.Text;
            string firstName = TextBox2.Text;
            string lastName = TextBox3.Text;
            string middleName = TextBox5.Text;
            string email = TextBox4.Text;
            string gender = DropDownList1.Text;
            string ethnicity = DropDownList2.Text;
            string newEthnicity = DropDownList3.Text;
            string racial = DropDownList4.Text;
            string citizenShip = DropDownList5.Text;

            //string criteria3 = TextBox3.Text;
            List<string> criteria = new List<string>();

           /* if (!string.IsNullOrWhiteSpace(criteria1))
            {
                criteria.Add(criteria1);
            }*/
           /* if (!string.IsNullOrWhiteSpace(criteria2))
            {
                criteria.Add(criteria2);
            }*/// criteria.ToArray();
            //criteria.Add(criteria3);
            //criteria.ToArray();
            string[] array = new string[3];
            criteria.CopyTo(array);

            //var query = DisplayTable(array);


            var UIN = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();

            // UIN search
            UIN = UIN.Or(p => p.UIN.Contains(uin));
            
                                 
            //FirstName Search
            var FirstName = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            FirstName = FirstName.Or(p => p.PERS_FNAME.Contains(firstName)); ;

            //LastName Search
            var LastName = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            LastName = LastName.Or(p => p.PERS_LNAME.Contains(lastName)); ;

            //LastName Search
            var MiddleName = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            MiddleName = MiddleName.Or(p => p.PERS_MNAME.Contains(middleName)); ;

            //LastName Search
            var Email = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            Email = Email.Or(p => p.PERS_MNAME.Contains(email)); ;

            //LastName Search
            var Gender = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            Gender = Gender.Or(p => p.SEX_DESC.Contains(gender)); ;

            //Ethnicity Search
            var Ethnicity = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            Ethnicity = Ethnicity.Or(p => p.IPEDS_RACE_ETH_CATGRY_DESC.Contains(ethnicity)); ;

            //New Ethnicity Search
            var NewEthnicity = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            NewEthnicity = NewEthnicity.Or(p => p.IPEDS_RACE_ETH_CATGRY_DESC.Contains(newEthnicity)); ;

            //Race Search
            var Racial = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            Racial = Racial.Or(p => p.IPEDS_RACE_ETH_CATGRY.Contains(racial));
            
            //Citizenship Search
            var Citizenship = PredicateBuilder.False<T_STRACK_STUDENTS_BQ>();
            Citizenship = Citizenship.Or(p => p.PERS_CITZN_TYPE_DESC.Contains(citizenShip));

            //Query formation
            var data = Db1.T_STRACK_STUDENTS_BQs.Where(UIN).Where(FirstName).Where(LastName).Where(MiddleName).Where(Email).Where(Gender).Where(Ethnicity).Where(NewEthnicity).Where(Racial).Where(Citizenship).ToList();
            Session["data"] = data;
            if (data != null)
            {
                Response.Redirect("SearchResult.aspx");
            }
            else
                Label11.Text = "There is no record to show";
           // GridView1.DataSource = data;
            //GridView1.DataBind();
        }

    }
}