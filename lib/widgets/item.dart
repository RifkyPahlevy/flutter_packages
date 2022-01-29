import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ItemTokped extends StatelessWidget {
  const ItemTokped({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        color: Color(0xFFFFF9F9),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xFF7C7A7A),
            offset: Offset(5, 5),
            spreadRadius: 5,
          )
        ],
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Image.network(
              'https://picsum.photos/id/${index + 238}/200/300',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
              child: AutoSizeText(
                'Lampu Sunset LED Lamp Lampu Tidur Estetik Viral Tiktok Sun Sunset Red',
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.8, 0),
            child: Text(
              'Rp. 10.000',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 3, 0, 0),
                child: Text(
                  '10%',
                  style: TextStyle(
                    backgroundColor: Colors.redAccent[200],
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'Rp. 50.000',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 3,
            indent: 8,
            endIndent: 10,
            color: Color(0xFFDF1D1D),
          ),
          Align(
            alignment: AlignmentDirectional(-0.85, 0),
            child: Text(
              'Segera Habis',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
