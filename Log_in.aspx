<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log_in.aspx.cs" Inherits="Data_Base.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
    <link rel ="StyleSheet" href="Style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 0px;
            width: 71%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="box">
            <h1>
                Log in 
            </h1>
            <hr class="auto-style1" />
            <div class ="textlog">
                <div>
                    <input type= "text" runat ="server" id ="txtuser" placeholder ="Enter User Name" onclick ="textscelect(This.id);" />
                </div>
                <div>
                    <input type= "password" runat ="server" id ="txtpass" placeholder ="Enter Password" onclick ="textscelect(This.id);" />
                </div>
                <div>
                    <button class="btu" runat="server" id="btu" onserverclick="btu_ServerClick"> Log in</button>
                </div>
                <hr  />
                <a href ="#">Forget Password</a>
                <h4 runat="server" id ="lmblmess" style ="">..</h4>
            </div>
        </div>
    </form>

    <script>

        function textscelect(id) {
            document.getElementById(id).style.borderBottom = '2px sloid  #20ecfa';
            document.getElementById(id).style.transition = '1s';
            
        }

    </script>
</body>
</html>
