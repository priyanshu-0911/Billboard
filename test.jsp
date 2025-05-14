<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoarding Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Base Styles */
        :root {
            --primary-color: #5e4b8b;
            --secondary-color: #ff9bff;
            --text-color: #333;
            --light-bg: #f4f7fc;
            --white: #ffffff;
            --shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: var(--light-bg);
            color: var(--text-color);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Header Styles */
        header {
            background-color: var(--primary-color);
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: var(--transition);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 2rem;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--white);
            text-decoration: none;
            position: relative;
        }

        .logo::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background-color: var(--secondary-color);
            transition: var(--transition);
        }

        .logo:hover::after {
            width: 100%;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin-left: 2rem;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--white);
            font-weight: 500;
            transition: var(--transition);
            position: relative;
        }

        nav ul li a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 0;
            background-color: var(--secondary-color);
            transition: var(--transition);
        }

        nav ul li a:hover::after {
            width: 100%;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(94, 75, 139, 0.8), rgba(94, 75, 139, 0.8)), 
                        url('https://source.unsplash.com/random/1600x900/?city') center/cover no-repeat;
            color: var(--white);
            text-align: center;
            padding: 180px 20px 100px;
            position: relative;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            animation: fadeInDown 1s ease forwards;
            opacity: 0;
            transform: translateY(-30px);
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2.5rem;
            animation: fadeInUp 1s 0.3s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        .btn-primary {
            background-color: var(--secondary-color);
            color: var(--white);
            padding: 0.9rem 2.5rem;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s 0.6s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        .btn-primary:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        /* Features Section */
        .features {
            padding: 6rem 2rem;
            background-color: var(--white);
            text-align: center;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 4rem;
            color: var(--primary-color);
            position: relative;
            display: inline-block;
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        .section-title::after {
            content: '';
            position: absolute;
            width: 50px;
            height: 3px;
            background-color: var(--secondary-color);
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 3rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .feature-card {
            background-color: var(--light-bg);
            padding: 3rem 2rem;
            border-radius: 15px;
            box-shadow: var(--shadow);
            transition: var(--transition);
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        .feature-card:nth-child(2) {
            animation-delay: 0.2s;
        }

        .feature-card:nth-child(3) {
            animation-delay: 0.4s;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .feature-card h3 {
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
        }

        .feature-card p {
            font-size: 1rem;
            color: #6c757d;
        }

        /* Testimonials Section */
        .testimonials {
            padding: 6rem 2rem;
            background-color: var(--light-bg);
            text-align: center;
        }

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 3rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .testimonial-card {
            background-color: var(--white);
            padding: 3rem;
            border-radius: 15px;
            box-shadow: var(--shadow);
            transition: var(--transition);
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        .testimonial-card:nth-child(2) {
            animation-delay: 0.2s;
        }

        .testimonial-text {
            font-size: 1.1rem;
            font-style: italic;
            margin-bottom: 1.5rem;
            color: var(--primary-color);
        }

        .testimonial-author {
            font-weight: 600;
            color: var(--primary-color);
        }

        /* CTA Section */
        .cta {
            padding: 6rem 2rem;
            text-align: center;
            background: linear-gradient(135deg, var(--primary-color), #7a69ab);
            color: var(--white);
        }

        .cta h2 {
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 2.5rem;
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        /* Footer */
        footer {
            background-color: #333;
            color: var(--white);
            padding: 2rem 0;
            text-align: center;
        }

        footer a {
            color: var(--white);
            text-decoration: none;
            transition: var(--transition);
        }

        footer a:hover {
            color: var(--secondary-color);
        }

        /* Keyframe Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from { 
                opacity: 0;
                transform: translateY(30px);
            }
            to { 
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInDown {
            from { 
                opacity: 0;
                transform: translateY(-30px);
            }
            to { 
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .header-container {
                padding: 0 1rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .feature-card, .testimonial-card {
                padding: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <a href="dashboard.jsp" class="logo">Hoarding Management</a>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#features">Features</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-content">
            <h1>Revolutionize Your Hoarding Business</h1>
            <p>Manage all your advertising operations with ease and gain real-time insights through our intuitive platform.</p>
            <a href="login.jsp" class="btn-primary">Get Started</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features" id="features">
        <h2 class="section-title">Why Our System Stands Out</h2>
        <div class="features-grid">
            <div class="feature-card">
                <h3>Smart Location Management</h3>
                <p>Pinpoint exact locations on interactive maps and track availability in real-time with our geolocation technology.</p>
            </div>
            <div class="feature-card">
                <h3>Intuitive Booking Engine</h3>
                <p>Book premium hoardings in seconds with our drag-and-drop calendar and instant availability checks.</p>
            </div>
            <div class="feature-card">
                <h3>Advanced Analytics</h3>
                <p>Unlock data-driven insights with real-time performance tracking and comprehensive reporting tools.</p>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials" id="testimonials">
        <h2 class="section-title">Trusted By Industry Leaders</h2>
        <div class="testimonial-grid">
            <div class="testimonial-card">
                <p class="testimonial-text">"The booking system has transformed our workflow. What used to take hours now takes minutes!"</p>
                <p class="testimonial-author">- Michael Chen, Chief Marketing Officer</p>
            </div>
            <div class="testimonial-card">
                <p class="testimonial-text">"The analytics have helped us increase our ROI by 40% in just three months."</p>
                <p class="testimonial-author">- Sarah Williams, Advertising Director</p>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta" id="contact">
        <h2>Ready to Elevate Your Advertising Strategy?</h2>
        <a href="login.jsp" class="btn-primary">Sign Up for Free Trial</a>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Hoarding Management System. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
    </footer>

    <script>
        // Animation triggers
        const handleScrollAnimations = () => {
            const elements = document.querySelectorAll('.feature-card, .testimonial-card, .section-title');
            elements.forEach(element => {
                const elementTop = element.getBoundingClientRect().top;
                const elementVisible = 150;
                if (elementTop < window.innerHeight - elementVisible) {
                    element.style.opacity = '1';
                    element.style.transform = 'translateY(0)';
                }
            });
        };

        window.addEventListener('scroll', handleScrollAnimations);
        window.addEventListener('load', handleScrollAnimations);

        // Header scroll effect
        window.addEventListener('scroll', () => {
            const header = document.querySelector('header');
            if (window.scrollY > 50) {
                header.style.padding = '0.7rem 0';
                header.style.boxShadow = '0 10px 20px rgba(0, 0, 0, 0.1)';
            } else {
                header.style.padding = '1rem 0';
                header.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.)';
1            }
        });
    </script>
</body>
</html>