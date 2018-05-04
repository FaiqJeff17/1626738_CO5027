using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace _1626738_CO5027
{
    public partial class Contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitForm_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("FaiqJfri@gmail.com", "FaiqJfri@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtMessage.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("FaiqJfri@gmail.com", "17896_Password");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                litSubmitError.Text = "<p>Process success, a mail is sent via SMTP with a secure credentials and connection</p>";
            }
            catch (Exception ex)
            {
                litSubmitError.Text = "<p> Send request failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}