import 'package:flutter/material.dart';

void main() => runApp(const Bai6ViduApp());

class Bai6ViduApp extends StatelessWidget{
  const Bai6ViduApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  Scaffold (appBar: AppBar(title: const Text('Thực hành bài 6  - Hiển thị lời chào '),
      ), body: const Bai6ViduHome() ,
       ),
    );
  }
}
class Bai6ViduHome extends StatefulWidget {
  const Bai6ViduHome({super.key});
  @override 
  _Bai6ViduSate createState() => _Bai6ViduSate();
}

class _Bai6ViduSate extends State<Bai6ViduHome> {
  TextEditingController txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget textsection = TextField(
      //Bo sung 5
      controller:  txtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Nhập Họ Và Tên ',
        label: Text('Họ Tên')
      ),
    );
    
  Widget buttonSection = ElevatedButton(
    onPressed: (){
        //Bo sung 6
        if(txtController.text.trim() != '')
        {
          setState(() {
            
          });
        }
  }
  ,
   child: Text('Nhấn')
   );
   Widget ketquaSection = Container(
    padding:  EdgeInsets.only( top : 20 , bottom:  20,),
    child : Text(txtController.text.trim().isEmpty ? '' : 'Xin chào ${txtController.text}'),//Bo sung 7
   );
   
      return Center(
        child: Container(padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start , 
        children: [
          textsection , ketquaSection , buttonSection,
        ],
          ),
          ),

        //bo sung 4
        
      );
  } 
  

}

