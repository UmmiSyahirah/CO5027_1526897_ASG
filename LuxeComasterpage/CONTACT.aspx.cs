using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxeComasterpage
{
    public partial class CONTACT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton1_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("luxeandco2017@gmail.com", "pw 123456");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("luxeandco2017@gmail.com", txtEmail.Text);
            msg.Subject = "Name:" + txtFirst.Text + "Subject:" + TxtSubject.Text;
            msg.Body = TxtMessage.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                litMessage.Text = "<p>Message is successfully sent. Kindly wait for our response, thank you for your patience. </p>";
            }

            catch (Exception exp)
            {
                litMessage.Text="<p>We are sorry that message failed to send, please try again: " + exp.Message + ":" + exp.InnerException + "</p>";
            }



        }

        
    }
}