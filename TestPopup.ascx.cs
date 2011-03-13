using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestPopup : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        var listItems = new List<ListItem>
                            {new ListItem {Text = "A", Value = "1"}, new ListItem {Text = "B", Value = "2"}};
        this.lbChoices.DataSource = listItems;
        this.lbChoices.DataBind();
    }


    public void LaunchPopUp()
    {
        this.SpinnerPopupExtender.Show();
    }


    public void DoSomeProcess( object sender, EventArgs args)
    {
        System.Threading.Thread.Sleep(15000);
        
    }
}