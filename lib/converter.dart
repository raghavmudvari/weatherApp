import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
//final TextEditingController textEditingController=TextEditingController();
  double result=0;
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
     final border= OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width:2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,

        ),
        borderRadius: BorderRadius.all(
            Radius.circular(40)
        )
    );
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          title: Center(child: Text('Currency Converter')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10,0,10,10),
                margin:const EdgeInsets.fromLTRB(10,0,10,10) ,
                // color: Colors.black,
                child: Text(
                  result.toString(),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10,0,10,10),
                margin:const EdgeInsets.fromLTRB(10,0,10,10) ,
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Enter amount in USD',
                      hintStyle: TextStyle(color: Colors.black
                      ),
                    prefixIcon: Icon(Icons.monetization_on_rounded,),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border ,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ElevatedButton(onPressed:() {

                  setState(() {
                    result=double.parse(textEditingController.text)*134;
                  });
                } ,
                  style:ButtonStyle(
                   backgroundColor: const WidgetStatePropertyAll(Colors.black),
                    foregroundColor: const WidgetStatePropertyAll(Colors.white),
                    minimumSize:const WidgetStatePropertyAll(Size(double.infinity, 50)),
                    shape: WidgetStatePropertyAll(
                      BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Or whatever radius you want
                      ),
                    ),
                  ),
                    child: Text('Convert'),
                             // style: ButtonStyle(),
                  ),
              )
            ],
          ),
        )
    );
  }
}
