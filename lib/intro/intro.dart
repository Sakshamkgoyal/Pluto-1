import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pluto/screens/homepage.dart';

class intro extends StatefulWidget {
  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  int _numPages = 4;
  final PageController _pageController =PageController(initialPage: 0);
  int _currentPage = 0;


  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for (int i = 0; i<_numPages; i++){
      list.add(i == _currentPage ? _indicator(true):_indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0: 16.0,
      decoration: BoxDecoration(color: isActive ? Colors.white : Color(0xfff2ccc9),
      borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                stops: [0,0.5],
                colors: [
                  Color(0xFFD96666),
                  Color(0xFFD96666),
                ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(onPressed: ()=> print('Skip'),
                  child: Text('Skip',style: GoogleFonts.elMessiri(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.35,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  onPageChanged:(int page){
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Lottie.asset('assets/lottie/people-flow.json', height: MediaQuery.of(context).size.height/2.7),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bringing Different' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              Text('People Together' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              SizedBox(height: 15,),
                              Text('We at pluto believe that diversity is what makes human special, and we want to bring them together with all there differences.' , style: GoogleFonts.elMessiri(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ],
                          ),

                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Lottie.asset('assets/lottie/people-check.json', height: MediaQuery.of(context).size.height/2.7),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Making Difference' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              Text('Never Been Easier' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              SizedBox(height: 15,),
                              Text('In an era where connectivity rules. We harness the power of digital media and social networks to make a change in the society.' , style: GoogleFonts.elMessiri(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ],
                          ),

                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Lottie.asset('assets/lottie/people-research.json', height: MediaQuery.of(context).size.height/2.7),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Study what you' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              Text('Preach' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              SizedBox(height: 15,),
                              Text('When the world is suffering from infodemic, we try to overcome it by researching for you and enlightening you with facts.' , style: GoogleFonts.elMessiri(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ],
                          ),

                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Lottie.asset('assets/lottie/work.json', height: MediaQuery.of(context).size.height/2.7),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Working Hard' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              Text('For a better world' , style: GoogleFonts.vidaloka(
                                color: Colors.white,
                                fontSize: 30,
                              ),),
                              SizedBox(height: 15,),
                              Text('Our teams are working day and night to bring the perfect social experience for you and would soon be rolling out with more features.' , style: GoogleFonts.elMessiri(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: _buildPageIndicator(),),
              _currentPage != _numPages -1 ?
              Expanded(child: Align(alignment: FractionalOffset.bottomRight,
              child: FlatButton(
                onPressed: ()=> {
                  _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease)
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:12.0),
                      child: Text('Next', style: GoogleFonts.elMessiri(color: Colors.white, fontSize: 22.0),),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 25,),

                  ],
                ),
              ),
              ),
              )
                  : Text(''),
            ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages -1 ? GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height/10,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Padding(padding: EdgeInsets.all(10.0),
            child: Text('Get Started', style: GoogleFonts.elMessiri(color: Color(0xFFD96666), fontSize: 25.0, fontWeight: FontWeight.bold),),),
          ),
        ),
      ) : Text(''),
    );
  }
}
