using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cats
{
    public partial class index : System.Web.UI.Page
    {
        public bool hasrun = false;
        public int increment = 2;

        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            timer.Enabled = true;
            timer2.Enabled = true;

            
            

        }

        protected void timer_Tick(object sender, EventArgs e)
        {
            image.Width += increment;
            increment++;
        }
        protected void timer_Tick2(object sender, EventArgs e)
        {
            image.Width = 100;
            increment = 2;
            imageupdate();
        }

        public void imageupdate()
        {
            WebClient _client = new WebClient();
            string source = _client.DownloadString("https://api.thecatapi.com/v1/images/search");
            string edit = source.Replace("[", string.Empty).Replace("]", string.Empty);
            var deserialized = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(edit);
            string url = deserialized.url;
            image.Src = url;
        }

        protected void button_Click(object sender, EventArgs e)
        {
            
        }

        protected void button_Load(object sender, EventArgs e)
        {
            
            
        }
    }
}