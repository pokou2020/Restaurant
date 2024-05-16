import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'infoEleve.dart';

class DetailEleve extends StatefulWidget {

  final String? academicyear, first_name, code, invoice,classroom;
  
  const DetailEleve({Key? key,this.academicyear,this.first_name, this.code, this.invoice,this.classroom}): super  (key:key);

  @override
  State<DetailEleve> createState() => _DetailEleveState();
}

class _DetailEleveState extends State<DetailEleve> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
        title: Text('${widget.first_name}'),
    
      ),
      body: Column(
        children: [
           Text('${widget.first_name}'),
            Text('${widget.academicyear}'),
             Text('${widget.code}'),
               Text('${widget.invoice}'),
                Text('${widget.classroom}'),
        ],
      ),
    );
  }
}