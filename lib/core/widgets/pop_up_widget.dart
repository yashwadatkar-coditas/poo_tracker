import 'package:flutter/material.dart';
import 'package:poo_tracker/core/fonts.dart';

class PopUpWidget extends StatelessWidget {
  const PopUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return           Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
             const  Center(
                child: Text(
                  'Share Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEEA46B),
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const  Icon(Icons.email),
                   const  SizedBox(width: 8),
                    Text('Send email',
                        style: customFont(fontWeight:FontWeight.w700, fontSize:20)),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2F80ED),
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const  Icon(Icons.facebook),
                  const   SizedBox(width: 8),
                    Text('Facebook  ',
                        style:  customFont(fontWeight:FontWeight.w700, fontSize:20)),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff828282),
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const  Icon(Icons.print),
                   const  SizedBox(width: 8),
                    Text('Print          ',
                        style:  customFont(fontWeight:FontWeight.w700, fontSize:20)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff999999)),
                ),
                child: Text('Close',style: customFont(fontSize: 20 , fontWeight: FontWeight.w700 , color: const Color(0xff999999)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}