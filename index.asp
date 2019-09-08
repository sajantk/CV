<!DOCTYPE html>

<html >

<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <title>Resume</title>

     <style type="text/css">
        * { margin: 0; padding: 0; }
        body { font: 16px Helvetica, Sans-Serif; line-height: 24px; background: url(images/noise.jpg); }
        .clear { clear: both; }
        #page-wrap { width: 800px; margin: 40px auto 60px; }
        #pic { float: right; margin: -30px 0 0 0; }
        h1 { margin: 0 0 16px 0; padding: 0 0 16px 0; font-size: 42px; font-weight: bold; letter-spacing: -2px; border-bottom: 1px solid #999; }
        h2 { font-size: 20px; margin: 0 0 6px 0; position: relative; }
        h2 span { position: absolute; bottom: 0; right: 0; font-style: italic; font-family: Georgia, Serif; font-size: 16px; color: #999; font-weight: normal; }
        p { margin: 0 0 16px 0; }
        a { color: #999; text-decoration: none; border-bottom: 1px dotted #999; }
        a:hover { border-bottom-style: solid; color: black; }
        ul { margin: 0 0 32px 17px; }
        #objective { width: 500px; float: left; }
        #objective p { font-family: Georgia, Serif; font-style: italic; color: #666; }
        dt { font-style: italic; font-weight: bold; font-size: 18px; text-align: right; padding: 0 26px 0 0; width: 150px; float: left; height: 100px; border-right: 1px solid #999;  }
        dd { width: 600px; float: right; }
        dd.clear { float: none; margin: 0; height: 15px; }
     </style>
</head>

<body>

    <div id="page-wrap">
    
        <div id="contact-info" class="vcard">
        
            <!-- Microformats! -->
        
            <h1 class="fn"><%response.write("Sajan Tandukar Khusal")%></h1>
        
            <p>
                Cell: <span class="tel"><%response.write("9861108306")%></span><br />
                Email: <a class="email"><%response.write("sajan.tandukar11@gmail.com")%></a>
            </p>
        </div>
        
        <dl>
            <dd class="clear"></dd>
            
            <dt>Education</dt>
            <dd>
                <%               
                            Dim fs, fobj
                            set fs = CreateObject("Scripting.FileSystemObject")
                            set fobj = fs.OpenTextFile("E:\dot net\sajan\education.txt",1)
                            Response.write(fobj.ReadAll)
                            fobj.Close            
                %>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Skills</dt>
            <dd>
                <% 
                            Dim fobj1
                            set fobj1 = fs.OpenTextFile("E:\dot net\sajan\skills.txt",1)
                            Response.write(fobj1.ReadAll)
                            fobj1.Close
                %>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Experience</dt>
            <dd>
                <% 
                        Dim fobj2
                        set fobj2 = fs.OpenTextFile("E:\dot net\sajan\experience.txt",1)
                        Response.write(fobj2.ReadAll)
                        fobj2.Close
                %> 
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Hobbies</dt>
            <dd>
                <% 
                Dim fobj3
                set fobj3 = fs.OpenTextFile("E:\dot net\sajan\hobby.txt",1)
                Response.write(fobj3.ReadAll)
                fobj3s.Close
                %>
            </dd>
            
        </dl>
    
    </div>

</body>

</html>