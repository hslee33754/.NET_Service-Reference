using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        RegisterLoginService.VenueRegistrationServiceClient vc = new RegisterLoginService.VenueRegistrationServiceClient();
        int key = vc.VenueLogin(txtUserName.Text, txtPassword.Text);
        if (key != 0)
        {
            Session["venueKey"] = key;
            lblMessage.Text = "Log in Successful";
        }
        else
        {
            lblMessage.Text = "Log in failed";
        }
    }
}