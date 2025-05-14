<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Hoarding Management Dashboard</title>

  <!-- AOS Animation CSS -->
  <link href="https://unpkg.com/aos@2.3.4/dist/aos.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to bottom right, #f0f2f5, #e8eaf6);
      overflow-x: hidden;
      transition: margin-left 0.4s;
      min-height: 100vh;
      position: relative;
      padding-bottom: 100px;
    }

    /* Sidebar */
    .sidebar {
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 80px;
      background: rgba(130, 140, 255, 0.2);
      backdrop-filter: blur(10px);
      padding: 20px 0;
      transition: width 0.4s ease;
      box-shadow: 2px 0 8px rgba(0,0,0,0.1);
      z-index: 1000;
      border-right: 1px solid rgba(255,255,255,0.2);
    }

    .sidebar:hover {
      width: 240px;
    }

    .sidebar .logo {
      color: #4a4e69;
      font-size: 1.8rem;
      font-weight: bold;
      text-align: center;
      margin-bottom: 30px;
      opacity: 0;
      transition: opacity 0.4s;
    }

    .sidebar:hover .logo {
      opacity: 1;
    }

    .sidebar .menu {
      list-style: none;
      padding: 0;
    }

    .sidebar .menu li {
      padding: 15px 20px;
      position: relative;
      transition: background 0.3s;
    }

    .sidebar .menu li:hover {
      background: rgba(255,255,255,0.3);
      border-radius: 10px;
    }

    .sidebar .menu li a {
      text-decoration: none;
      color: #4a4e69;
      font-size: 1.2rem;
      display: flex;
      align-items: center;
      white-space: nowrap;
      overflow: hidden;
      transition: 0.4s;
    }

    .sidebar .menu li a i {
      min-width: 30px;
      font-size: 1.6rem;
      margin-right: 10px;
      transition: transform 0.3s, color 0.3s;
    }

    .sidebar .menu li:hover a i {
      transform: rotate(20deg);
      color: #6c5ce7;
    }

    /* Content */
    .content {
      margin-left: 90px;
      padding: 40px 30px;
      transition: margin-left 0.4s ease;
    }

    .sidebar:hover ~ .content {
      margin-left: 260px;
    }

    .header {
      font-size: 2.4rem;
      color: #22223b;
      margin-bottom: 25px;
      text-align: center;
      font-weight: bold;
    }

    .hero-small {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(6px);
      padding: 50px 30px;
      border-radius: 20px;
      margin-bottom: 30px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    }

    .dashboard .cards {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
      margin-top: 20px;
    }

    .dashboard .card {
      background: rgba(255, 255, 255, 0.9);
      flex: 1 1 250px;
      padding: 25px;
      border-radius: 18px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(0,0,0,0.08);
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .dashboard .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
    }

    .activity-list {
      margin-top: 40px;
      list-style: none;
      padding: 0;
    }

    .activity-list li {
      background: rgba(255, 255, 255, 0.9);
      padding: 18px;
      margin-bottom: 12px;
      border-radius: 14px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.05);
      display: flex;
      align-items: center;
    }

    .activity-list li i {
      margin-right: 12px;
      color: #6c5ce7;
    }

    .carousel-container {
      margin-top: 50px;
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
    }

    .carousel-container img {
      width: 300px;
      height: 180px;
      border-radius: 16px;
      object-fit: cover;
      transition: transform 0.4s;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .carousel-container img:hover {
      transform: scale(1.08);
    }

    /* Footer fixed */
    .footer {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      text-align: center;
      padding: 20px 10px;
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(6px);
      border-top: 1px solid rgba(0,0,0,0.05);
      font-size: 14px;
      color: #555;
    }
  </style>
</head>

<body>

  <!-- Sidebar -->
  <div class="sidebar" id="sidebar">
    <div class="logo">Hoarding</div>
    <ul class="menu">
      <li><a href="dashboard.jsp"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="listing.html"><i class="fas fa-list"></i> Listings</a></li>
      <li><a href="booking.jsp"><i class="fas fa-calendar-check"></i> Bookings</a></li>
      <li><a href="feedback.html"><i class="fas fa-comment"></i> Feedback</a></li>
      <li><a href="settings.jsp"><i class="fas fa-cogs"></i> Settings</a></li>
    </ul>
  </div>

  <!-- Content -->
  <div class="content" id="content">
    <div class="header" data-aos="fade-down">Hoarding Management Dashboard</div>

    <div class="hero-small" data-aos="fade-up">
      <h2>Welcome to Your Dashboard</h2>
      <p>Manage and monitor all your hoardings easily and efficiently!</p>
    </div>

    <section class="dashboard">
      <h2 data-aos="fade-up">Overall Analysis</h2>
      <div class="cards">
        <div class="card" data-aos="fade-up" data-aos-delay="100">
          <h3>Total Listings</h3>
          <p>125</p>
        </div>
        <div class="card" data-aos="fade-up" data-aos-delay="200">
          <h3>Available Listings</h3>
          <p>85</p>
        </div>
        <div class="card" data-aos="fade-up" data-aos-delay="300">
          <h3>Booked Listings</h3>
          <p>40</p>
        </div>
      </div>
    </section>

    <h2 style="margin-top:40px;" data-aos="fade-up">Recent Activity</h2>
    <ul class="activity-list">
      <li><i class="fas fa-hand-pointer"></i> Downtown Billboard booked for 3 months.</li>
      <li><i class="fas fa-question-circle"></i> Highway Banner availability checked.</li>
      <li><i class="fas fa-exclamation-circle"></i> City Mall Board contract renewal pending.</li>
    </ul>

    <section class="carousel" data-aos="fade-up">
      <h2>Featured Hoardings</h2>
      <div class="carousel-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyow2gBbf_3DPlueWI5nGiFYRmNEYvCuu6je5TbCPSA&s&ec=72940543" alt="City Billboard">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmEyeb5vCTd9XFuzviuUkZwMl8eBIiUvx1oC0dhLfKvg&s&ec=72940543" alt="Advertising">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkRisRBnRbP_sET1l7w8pIqOyFqgSEo2P7JWEEfpgiEg&s&ec=72940543" alt="Outdoor Hoarding">
      </div>
    </section>
  </div>

  <!-- Footer -->
  <footer class="footer" data-aos="fade-up">
    &copy; 2025 Hoarding Management Dashboard. All rights reserved.
  </footer>

  <!-- Scripts -->
  <script src="https://unpkg.com/aos@2.3.4/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>

</body>
</html>
