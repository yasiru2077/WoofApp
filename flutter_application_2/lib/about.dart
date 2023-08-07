import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/settings_page.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'About',
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ))),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                'At Woof, we believe that every dog deserves a happy and well-behaved life. Thats why we\'ve created a revolutionary dog training app designed to help you build a strong bond with your furry friend and unleash their full potential. Whether youre a first-time dog owner or a seasoned pet parent, Woof is here to guide you every step of the way.',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'At Woof, our mission is to empower dog owners with the knowledge and tools they need to train and understand their dogs effectively. We aim to make training an enjoyable experience for both you and your canine companion, promoting positive reinforcement methods that strengthen the bond between you and your best friend.',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Personalized Training Programs: Woof offers personalized training programs tailored to your dog\'s unique personality, age, and needs. Our app uses advanced algorithms to create a training plan specifically designed to address your dog\'s behavioral challenges and reinforce desired behaviors.Comprehensive Training Resources: Our app provides a wealth of educational resources to enhance your understanding of dog behavior and training techniques. From articles and videos to expert advice, you\'ll have access to a vast library of information to support your training journey.Step-by-Step Instructions: Woof provides easy-to-follow, step-by-step instructions for each training exercise. Whether you\'re teaching basic commands like sit and stay or tackling more advanced tricks, our app breaks down the training process into manageable steps, ensuring your success.Progress Tracking and Achievements: Stay motivated and track your dog\'s progress with our built-in tracking system. Celebrate milestones and earn badges as you and your furry companion conquer new training goals together. Share your achievements with the Woof community and inspire others on their training journey.Community Support: Connect with fellow dog lovers through our vibrant community. Share tips, stories, and experiences, and seek advice from experienced trainers and enthusiasts. The Woof community is a supportive space for all dog owners, where you can learn, grow, and celebrate the joys of dog ownership together.',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
