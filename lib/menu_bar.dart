import 'package:flutter/material.dart';
import 'package:eduquest247247/logout.dart';

void main() {
  runApp(EduQuestApp());
}

class EduQuestApp extends StatelessWidget {
  // Constructor with the key parameter
  const EduQuestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eduquest247',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StylishPage(),
      routes: {
        '/login_page': (context) => LoginPage(),
        '/logout': (context) => LogOutPage(),
        '/main': (context) => MainPage(), // Define a HomePage route
      },
    );
  }
}

class StylishPage extends StatelessWidget {
  // Constructor with the key parameter
  const StylishPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eduquest247'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildListTile(
              context,
              'About Us',
              Icons.info_outline,
              () => _showInfoDialog(context, 'About Us',
                  'EduQuest247 is an innovative educational career guidance app designed to help students, professionals, and individuals make informed decisions about their careers. The app offers a comprehensive range of services, including career counselling, digital marketing courses, web development training, internship opportunities, and more. By providing expert advice and resources, EduQuest247 empowers users to explore various career paths, gain essential skills, and access opportunities for personal and professional growth. With its user-friendly interface and personalized guidance, EduQuest247 is the ultimate tool for anyone looking to navigate their educational and career journey with confidence. Whether you key a student deciding on a career or a professional seeking further development, EduQuest247 is here to support your aspirations every step of the way.'),
            ),
            _buildListTile(
              context,
              'Feedback',
              Icons.feedback_outlined,
              () => _showInfoDialog(context, 'Feedback',
                  'Feedback for EduQuest247 has been overwhelmingly positive, with users praising the app for its user-friendly interface, valuable resources, and insightful career guidance. Many have highlighted the apps ability to provide tailored advice, helping them explore various career options and make more informed decisions about their future. The career counselling feature, in particular, has received commendations for offering personalized support that caters to individual goals and aspirations. Additionally, users appreciate the comprehensive courses available, such as digital marketing and web development, which have helped them acquire essential skills for the job market. The seamless navigation, coupled with responsive customer support, has made EduQuest247 a trusted companion for many in their educational and career journeys. Overall, the feedback reflects the app’s effectiveness in helping individuals confidently navigate their career paths while gaining valuable knowledge and opportunities.'),
            ),
            _buildListTile(
              context,
              'Privacy',
              Icons.lock_outline,
              () => _showInfoDialog(context, 'Privacy',
                  'EduQuest247 values your privacy and is committed to protecting your personal information. We collect only the necessary details, such as your name and email, to offer personalized career guidance and improve our services. We use secure measures to safeguard your data, and it is never shared with third parties unless required by law or to support our services. We may use cookies to enhance your experience, but you can manage them through your device settings. You have the right to access, update, or delete your information at any time. By using EduQuest247, you agree to our privacy practices, which may be updated occasionally. If you have any concerns, feel free to contact us.'),
            ),
            _buildListTile(
              context,
              'Policy',
              Icons.policy_outlined,
              () => _showInfoDialog(context, 'Policy',
                  'EduQuest247 is committed to protecting your privacy. We collect personal information such as your name, email, and usage data to provide personalized career guidance and improve our services. Your data is secured using industry-standard methods and is not shared with third parties, except when required by law. We use cookies for enhancing user experience and analyzing usage patterns. You can access, update, or delete your personal information by contacting us.'),
            ),
            _buildListTile(
              context,
              'Information',
              Icons.info_rounded,
              () => _showInfoDialog(context, 'Information',
                  'EduQuest247 is an all-in-one educational career guidance app designed to empower users with the tools and resources needed to make informed decisions about their future. It offers a range of services, including career counselling, study abroad advice, internship opportunities, and specialized courses in fields like digital marketing and web development. The app also provides personalized recommendations based on user preferences and goals, helping individuals navigate the vast landscape of educational and career choices. With a user-friendly interface and access to expert insights, EduQuest247 aims to make the process of career exploration more accessible and efficient for all.'),
            ),
            _buildListTile(
              context,
              'Sources',
              Icons.source_outlined,
              () => _showInfoDialog(context, 'Sources',
                  'EduQuest247 relies on a diverse range of trusted sources to provide accurate and up-to-date career guidance and educational information. These sources include industry experts, educational institutions, reputable websites, and research studies, ensuring that users receive reliable insights into various career paths, courses, and opportunities. We continuously update our database with the latest information to help users make informed decisions about their education and career development. EduQuest247 is dedicated to maintaining the highest standards of accuracy and credibility by sourcing content from reliable and verified platforms.'),
            ),
            _buildListTile(
              context,
              'Terms & Conditions',
              Icons.article_outlined,
              () => _showInfoDialog(context, 'Terms & Conditions',
                  'By using EduQuest247, you agree to use the app for lawful purposes only. You are responsible for keeping your account details confidential. We own all app content, and you may not reproduce or distribute it without permission. EduQuest247 is not liable for any decisions based on the information provided. We reserve the right to modify these terms at any time, and your continued use indicates acceptance of these changes.'),
            ),
            // Add Login and Sign Out button
            SizedBox(height: 20), // Adding some spacing before buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/login_page'); // Navigate to the login page
              }, // Button text
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
              ),
              child: Text('Log In', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20), // Adding some spacing before buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/logout'); // Navigate to the login page
              }, // Button text
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
              ),
              child: Text('Log Out', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        onTap: onTap,
      ),
    );
  }

  void _showInfoDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_page');
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Method to create buttons with specific styles
}

// Login Page
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login action
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}

// Sign Out Page
class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Out'),
        backgroundColor: Colors.red,
      ),
      body: Center(child: Text('Logging Out')),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Text('Welcome to EduQuest247'),
      ),
    );
  }
}
