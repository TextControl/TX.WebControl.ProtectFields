using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tx_protect_fields
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextControl1.LoadTextAsync(Server.MapPath("documents/protected_document.docx"), TXTextControl.Web.StreamType.WordprocessingML);
        }
    }
}