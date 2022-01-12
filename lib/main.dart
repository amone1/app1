import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app1/myform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOQANO APP',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BIENVENU CHEZ MOQANO'),
      //home: MyForm(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('BIENVENU CHEZ MOQANO '),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
         child: MyForm(),

      ),
      drawer: Drawer(
          child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "http://moqano.ma/wp-content/uploads/2021/12/b08af267-e6b0-4da0-8c29-afc01116c4df.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text('',
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 24,
              ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Mon Comtpe'),
              hoverColor: Colors.lightGreen,
              onTap: ()  {
                //navigat
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>ComptePage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Deconnecter'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>DeconnectPage(),
                ));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.euro),
              title: Text('Mes Factures'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>FacturePage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Mes Cadeaux'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>CadeauPage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('Demande Devis'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>DevisPage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Demande Rendez-vous'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=>RendezvsPage(),
                ));
              },
            ),
          ],
        ),
      ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RendezvsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:Text('Mes Rendez-vous'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
  );
}

class DevisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:Text('Mes Devis'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
  );

}

class CadeauPage  extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:Text('Mes Cadeaux'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
  );
}

class DeconnectPage  extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:Text('Quitter MOQANO'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
  );
}

class ComptePage extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:Text('Mon Compte'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
  );

}

class FacturePage  extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
  appBar: AppBar(
  title:Text('Mes Factures'),
  centerTitle: true,
    backgroundColor: Colors.lightGreen,
  ),
  );
}

