using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_click(object sender, EventArgs e)
        {

            // show the label
            /* lblwin.Visible = true;
             lblloss.Visible = true;
             lblwinPercent.Visible = true;
             lblTotalScored.Visible = true;
             lblTotalAllowed.Visible = true;
             lblAttendence.Visible = true;
             lblDifference.Visible = true; 
             lblAvAttend.Visible = true; */

            reslt.Visible = true;



            //get the scored
            int Scored1 = Convert.ToInt32(txtScored1.Text);
            int Scored2 = Convert.ToInt32(txtScored2.Text);
            int Scored3 = Convert.ToInt32(txtScored3.Text);
            int Scored4 = Convert.ToInt32(txtScored4.Text);

            //get the allowed
            int Allowed1 = Convert.ToInt32(txtAllowed1.Text);
            int Allowed2 = Convert.ToInt32(txtAllowed2.Text);
            int Allowed3 = Convert.ToInt32(txtAllowed3.Text);
            int Allowed4 = Convert.ToInt32(txtAllowed4.Text);

            //get the spectators
            int Spectators1 = Convert.ToInt32(txtSpectator1.Text);
            int Spectators2 = Convert.ToInt32(txtSpectator2.Text);
            int Spectators3 = Convert.ToInt32(txtSpectator3.Text);
            int Spectators4 = Convert.ToInt32(txtSpectator4.Text);

            //get the result
                var Result1 = RadioList1.SelectedValue;
                var Result2 = RadioList2.SelectedValue;
                var Result3 = RadioList3.SelectedValue;
                var Result4 = RadioList4.SelectedValue;

           

           //win/loose count loop for game 1 
           var twin1 = 0;
           var tloose1 = 0;
            
            if (Result1=="win1")
            {
                 twin1 += 1 ;
            }
            else
            {
                tloose1 += 1 ;
            }

            //win/loose count loop for game 2
            var twin2 = 0;
            var tloose2 = 0;

            if (Result2 == "win2")
            {
                twin2 += 1;
            }
            else
            {
                tloose2 += 1;
            }

            //win/loose count loop for game 3
            var twin3 = 0;
            var tloose3 = 0;
            if (Result3 == "win3")
            {
                twin3 += 1;
            }
            else
            {
                tloose3 += 1;
            }

            //win/loose count loop for game 4
            var twin4 = 0;
            var tloose4 = 0;
            if (Result4=="win4")
            {
                 twin4 += 1 ;
            }
            else
            {
                tloose4 += 1 ;
            }


            //calculation
                int TotalWin = twin1 + twin2 + twin3 + twin4;
                decimal twin = Convert.ToDecimal(TotalWin);
                int TotalLoose = tloose1 + tloose2 + tloose3 + tloose4;
                decimal WinPercentage = Convert.ToDecimal(twin/4);
                int TotalScored = Scored1 + Scored2 + Scored3 + Scored4;
                int TotalAllowed = Allowed1 + Allowed2 + Allowed3 + Allowed4;
                int TotalAttendence = Spectators1 + Spectators2 + Spectators3 + Spectators4 ;
                int PointsDifference = Convert.ToInt32(TotalScored - TotalAllowed);
                int AverageAttendence = TotalAttendence / 4;
          

            //Display results

            lblwin.Text = TotalWin.ToString();
            lblloss.Text = TotalLoose.ToString();
            lblwinPercent.Text = WinPercentage.ToString();
            lblTotalScored.Text = TotalScored.ToString();
            lblTotalAllowed.Text = TotalAllowed.ToString();
            lblAttendence.Text = TotalAttendence.ToString();
            lblDifference.Text = PointsDifference.ToString();
            lblAvAttend.Text = AverageAttendence.ToString();
        }
    }
}