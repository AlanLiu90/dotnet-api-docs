<!-- <Snippet1> -->
<%@ page language="C#"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    void Page_Load(Object Sender, EventArgs e)
    {
        CheckBrowserCaps();
    }

    void CheckBrowserCaps()
    {
        String labelText = "";
        System.Web.HttpBrowserCapabilities myBrowserCaps = Request.Browser;
        if (((System.Web.Configuration.HttpCapabilitiesBase)myBrowserCaps).RendersBreaksAfterWmlAnchor)
        {
            labelText = "Browser supports a line break after a stand-alone HTML A(anchor) element.";
        }
        else
        {
            labelText = "Browser does not support a line break after a stand-alone HTML A(anchor) element.";
        }

        Label1.Text = labelText;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Browser Capabilities Sample</title>
</head>
<body>
    <form runat="server" id="form1">
        <div>
            Browser Capabilities:
            <p/><asp:Label ID="Label1" Runat="server" />
        </div>
    </form>
</body>
</html>
<!-- </Snippet1> -->