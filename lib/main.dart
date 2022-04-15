import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome App",
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Likhit App"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[Image.asset("assets/img/acc.jpg")],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Durlav Parajuli"),
              accountEmail: Text("mail@durlavparajuli.com.np"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1648737965997-38b0cdf41c94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Email"),
              subtitle: Text("Noob"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
