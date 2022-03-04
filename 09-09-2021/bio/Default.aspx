<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="biotech.bio.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#notificationButton").click(function () {
            var x = Math.floor((Math.random() * 10) + 1); /* Random number between 1 to 10 */
            var title = articles[x][0];
            var desc = 'Most popular article.';
            var url = articles[x][1];
            notifyBrowser(title, desc, url);
            return false;
        });
    });
</script>

    <title></title>
    <style type="text/css">
        #notificationButton {
            width: 210px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>



    </div>
    </form>
</body>
</html>
