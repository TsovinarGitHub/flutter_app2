import 'package:flutter/material.dart';
import 'package:flutter_app2/CategoryPage/category_page.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController nameController = TextEditingController();
  bool validate = false;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Center(child: Text("Login Page")),
      // ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/backgroundImage/stars.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                            //color: Colors.cyan,
                            //borderRadius: BorderRadius.circular(50.0)
                            ),
                        child: Image(
                          image: AssetImage("assets/backgroundImage/hello.jpg"),
                        )),
                  ),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: TextFormField(
                    cursorColor: Color(0XFFFFCC00),
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(192, 230, 250, 255),
                      errorText: validate ? 'Value Can\'t Be Empty' : null,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        nameController.text.isEmpty
                            ? validate = true
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => CategoryPage()));
                      });
                    },
                    child: Text(
                      'Հաստատել',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
