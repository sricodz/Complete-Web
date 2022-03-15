<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DreamZ-Educations</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
		<nav>
            <div class="head">
                <h1><a href="index.jsp">DreamZ</a></h1>
                <div class="icon">
                    <div class="bar"></div>
                    <div class="bar"></div>
                    <div class="bar"></div>
                </div>
            </div>
            <div class="inner">
                <ul>
                    <a href="#home"><li>Home</li></a>
                    <a href="#services"><li>Services</li></a>
                    <a href="#about"><li>About</li></a>
                    <a href="#contact"><li>Contact</li></a>
                </ul>
                <button id="nav-btn"><a href="register.jsp">Register</a></button>
            </div>
        </nav>
         <div id="home">
            <img src="images/1.jpeg" alt="building" />
            <div class="content">
                <h1>Welcome to our Education world</h1>
                <h3>Learn and Explore New things </h3>
                <button><a href="login.jsp">Join Now</a></button>
            </div>
        </div>
        <div id="services">
           <div id="container">
               <h1>Our Specialities</h1>
               <section id="section">
               		<article class="list">
                       <img src="images/lib.jpeg" alt="menu-items" />
                       <h2>Library</h2>
                    </article>
                    <article class="list">
                       <img src="images/computer.jfif" alt="menu-items" />
                       <h2>Computer Labs </h2>
                    </article>
                    <article class="list">
                       <img src="images/labs.jfif" alt="menu-items" />
                       <h2>Laboratories </h2>
                    </article>
                    <article class="list">
                       <img src="images/digiclass.jfif" alt="menu-items" />
                       <h2>Digital Classrooms</h2>
                    </article>
                    <article class="list">
                       <img src="images/placements.jfif" alt="menu-items" />
                       <h2>100% Placements </h2>
                    </article>
                    <article class="list">
                       <img src="images/qeducation.jfif" alt="menu-items" />
                       <h2>Quality Education </h2>
                    </article>
                    <article class="list">
                       <img src="images/functions.jfif" alt="menu-items" />
                       <h2>Celebrations </h2>
                    </article>
                    <article class="list">
                       <img src="images/projects.jfif" alt="menu-items" />
                       <h2>Real time Projects </h2>
                    </article>
                    <article class="list">
                       <img src="images/sfare.jfif" alt="menu-items" />
                       <h2>Vocations</h2>
                    </article>
                    <article class="list">
                       <img src="images/sports.jpeg" alt="menu-items" />
                       <h2>Sports</h2>
                    </article>
               </section>
           </div>
        </div>
         <div id="about">
            <div class="about-cont">
                <h1 class="head">About_Us</h1>
                <section>
                   <div class="inner-sec">
                        <img src="" alt="about" id="about-img">
                        <h2 id="about-name"></h2>
                        <h3 id="about-job"></h3>
                        <p id="about-info"></p>
                        <div class="about-buttons">
                            <button id="left"><</button>
                            <button id="right">></button>
                        </div>
                   </div>
                </section>
            </div>
        </div>
        <div id="contact">
             <div class="contact-head">
               <div class="ch-inner">
                    <h1>If you want to know more Details</h1>
                    <button><a href="login.jsp">Click_Here</a></button>
                </div>
            </div>
            <footer>
                    <h4>Thanks For Visiting</h4>
                    <p>Copyrights <span>&#169</span> -Venkat</p>
            </footer>
        </div>
        
        
        
        
       <script>
       
	       var icon=document.querySelector(".icon");
	       var inner=document.querySelector(".inner");
	
	       icon.addEventListener('click',()=>{
	           inner.classList.toggle("hide");
	           icon.classList.toggle("is-active");
	       })
	       
	       const reviews = [

    {
  
      id: 1,
      name: "susan smith",
      job: "Chariman",
      img:
        "https://res.cloudinary.com/diqqf3eq2/image/upload/v1586883334/person-1_rfzshl.jpg",
      text:
        "I'm baby meggings twee health goth +1. Bicycle rights tumeric chartreuse before they sold out chambray pop-up. Shaman humblebrag pickled coloring book salvia hoodie, cold-pressed four dollar toast everyday carry",
    },
    {
      id: 2,
      name: "anna johnson",
      job: "Director",
      img:
        "https://res.cloudinary.com/diqqf3eq2/image/upload/v1586883409/person-2_np9x5l.jpg",
      text:
        "Helvetica artisan kinfolk thundercats lumbersexual blue bottle. Disrupt glossier gastropub deep v vice franzen hell of brooklyn twee enamel pin fashion axe.photo booth jean shorts artisan narwhal.",
    },
    {
      id: 3,
      name: "peter jones",
      job: "Principal",
      img:
        "https://res.cloudinary.com/diqqf3eq2/image/upload/v1586883417/person-3_ipa0mj.jpg",
      text:
        "Sriracha literally flexitarian irony, vape marfa unicorn. Glossier tattooed 8-bit, fixie waistcoat offal activated charcoal slow-carb marfa hell of pabst raclette post-ironic jianbing swag."
    },
    {
      id: 4,
      name: "bill anderson",
      job: "Incharge",
      img:
        "https://res.cloudinary.com/diqqf3eq2/image/upload/v1586883423/person-4_t9nxjt.jpg",
      text:
        "Edison bulb put a bird on it humblebrag, marfa pok pok heirloom fashion axe cray stumptown venmo actually seitan. VHS farm-to-table schlitz, edison bulb pop-up 3 wolf moon tote bag street art shabby chic. ",
    },
  ];

		var img=document.querySelector("#about-img");
		var nam=document.querySelector("#about-name");
		var job=document.querySelector("#about-job");
		var info=document.querySelector("#about-info");
		
		var left=document.querySelector("#left");
		var right=document.querySelector("#right");
		
		let val=0;
		
		window.addEventListener('DOMContentLoaded',()=>{
		
		    setContent(val);
		})
		
		const setContent=(data)=>{
		
		    const item=reviews[data];
		    img.src=item.img;
		    nam.textContent=item.name;
		    job.textContent=item.job;
		    info.textContent=item.text;
		    
		}
		
		left.addEventListener("click",()=>{
		    val-=1;
		    if(val<0){
		        val=reviews.length-1;
		    }
		    setContent(val);
		})
		
		right.addEventListener("click",()=>{
		    val+=1;
		    if(val>=reviews.length){
		        val=0;
		    }
		    setContent(val);
		})
       
       </script>
</body>
</html>