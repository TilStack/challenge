import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var text= lorem(paragraphs: 1,words: 13);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height/1.7,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/png/cui.png'),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0,right: 50.0,top: 40.0,bottom: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                    children: [
                      TextSpan(text:"Welcome to",style: GoogleFonts.poppins(color: Colors.black)),
                      TextSpan(text: " Our Sweet Bakery",style: GoogleFonts.poppins(color: Colors.orange)),
                      TextSpan(text: " Haven!",style: GoogleFonts.poppins(color: Colors.black)),
                    ]
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 18),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(size.width/1.1,30),
                  ),
                  onPressed: (){},
                  child: Text(
                    "Let's Get Started",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Already have an account ?',style: GoogleFonts.poppins(),),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.poppins(
                            color: Colors.orange,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
