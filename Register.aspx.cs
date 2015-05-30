using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        RegisterLoginService.VenueRegistrationServiceClient vc = new RegisterLoginService.VenueRegistrationServiceClient();

        RegisterLoginService.VenueLite v = new RegisterLoginService.VenueLite();

        v.VenueName = txtVenueName.Text;
        v.VenueAddress = txtAddress.Text;
        v.VenueCity = txtCity.Text;
        v.VenueState = txtState.Text;
        v.VenueZipCode = txtZip.Text;
        v.VenuePhone = txtPhone.Text;
        v.VenueEmail = txtEmail.Text;
        v.VenueWebPage = txtWebpage.Text;
        v.VenueAgeRestriction = int.Parse(txtAgeRestriction.Text);
        v.UserName = txtUserName.Text;
        v.Password = txtConfirm.Text;

        bool result = vc.RegisterVenue(v);

        if (result)
            lblResult.Text = "Registration successful";
        else
            lblResult.Text = "Registration failed";
    }
}