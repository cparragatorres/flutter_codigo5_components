import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "F",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
          Icon(Icons.search),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: const [
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 2000),
            placeholder: AssetImage(
              "assets/images/loading.gif",
            ),
            image: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ],
      ),
    );
  }
}
