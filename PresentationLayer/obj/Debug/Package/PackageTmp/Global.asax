<%@ Application Language="C#" %>



<script runat="server">
    
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

        Application["UsersOnline"] = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
        

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

        Application.Lock();
        Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
        Application.UnLock();     
        
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.


        DataBaseLayer.DataBaseOperations dbo = new DataBaseLayer.DataBaseOperations();
        
        String ID;

        if (Session["UserType"].ToString() == "Admin")
        {
            ID = Session["AdminID"].ToString();
            dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
              " where AdminID=" + ID);
            Session.Abandon();
        }

        else if (Session["UserType"].ToString() == "Teacher")
        {
            ID = Session["TeacherID"].ToString();
            dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
              " where UserTeacherID=" + ID);
            Session.Abandon();       
        }

        else if (Session["UserType"].ToString() == "Student")
        {
            ID = Session["StudentID"].ToString();
            dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
              " where UserStudentID=" + ID);
            
            Session.Abandon();           
        }
        
                      

        Application.Lock();
        Application["UsersOnline"] = (int)Application["UsersOnline"] - 1;
        Application.UnLock();      

    }
       
</script>
