<html>
<head>
    

<link rel="stylesheet" type="text/css" href="/resources/header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>

  <section>
                <div class="head-section" >
                    <div class="logo">
                        NitsGlobal
                    </div>
                    
                    <div class="navigation">
                        <ul>
                           <li><a href="home" class="active">Home</a></li>

                           <%
                           String role=(String)session.getAttribute("role");
                           if(role.equalsIgnoreCase("admin"))
                           {
                            %>
                            <li><a href="addemployee">Add Employee</a></li>
                            <%
                           }
                           %>

                           <li><a href="getEmployee">List Of Employees</a></li>
                           <li><a href="getemployeebyId?eid=<%=session.getAttribute("id")%>&msg=null">Profile  (<%=session.getAttribute("username")%>)</a></li>
                           <li><a href="logout?eid=<%= session.getAttribute("id") %>">Logout</a>
                           </li>
                          
                            
                        </ul>
                      </div> 
                  </div> 
    </section>  

<script>
    
let sections = document.querySelectorAll('section');
let navLinks = document.querySelectorAll(' a');

window.onscroll = () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop - 150;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if (top >= offset && top < offset + height) {
            navLinks.forEach(link => {
                link.classList.remove('active');
            });
            document.querySelector(' a[href*=' + id + ']').classList.add('active');
        }
    });
};
</script>
    
</body>

</html>


