import 'package:flutter/material.dart';
import 'HomePage.dart';
class HubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage(indexx: 2,);}));
                },
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 55.0),
            child: Center(child: Text(
                'Hubs Page',
                style: TextStyle(fontSize: 25),
            ),
            ),
          ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
        ),
        body: SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: const FractionalOffset(0.0, 0.0),
            //       end: const FractionalOffset(1.0, 0.0),
            //       colors: [
            //         Colors.white,
            //         Colors.lightBlueAccent,
            //         Colors.indigo,
            //       ],
            //     ),
            // ),
            child: Column(
              children: [
                ImageColumn(
                  title: '•	Yoga & Health hub •',
                  about: 'Yoga and Health hub is Wellness Club at Jaypee Institute of Information Technology, Noida. '
                      'The hub is working towards a healthy and stress-free student life covering all wellness aspects as physical, emotional, spiritual, intellectual, etc. It conducts regular weekly Yoga and Meditation Sessions. '
                      'To break from the routine, we invite a professional trainer to conduct specialized sessions. Along with these regular sessions we also celebrate "International Yoga Day" every year on June 21. '
                      'The hub organizes Yoga session during Student Induction Program every year at the beginning of the academic session. '
                      'The hub also conducts Health quizzes, Yoga competitions, poster making and other activities.',
                  image: 'Assets/yoga.PNG',

                ),
                ImageColumn(
                  title: '•	Jhankaar-Dance Hub •',
                  about: 'Jhankaar , the dance hub is known for  showcasing the inborn talent and calibour to dance. '
                        'The infinite love and passion for dancing bring out the inner core of us through the stage. '
                      'It also nurtures various students interested in dancing, want to participate and enhance their skills through our different well trained and highly ardent dance troops like the MMV-the western troop ,'
                      'the Nrityang-the Indian classical troop and the Surkhaab – the Bhangra troop.',
                  image: 'Assets/jhankar.PNG',
                ),
                ImageColumn(title: '•	Radiance •',about: 'The effulgence of innocence and glow of mirth was felt as an audience to the exhibition of talents by the students and little faculty kids during these events.The stage events of Radiance came alive when the students presented an amalgamation of amplification of self confidence and extempore. These events focused at leveraging an opportunity to the students and little star kids to polish their skills by opening new vistas for them. The flagship of audience ignited the passion of the participants for performing arts and further stimulated them to deliver stupendous performance.',image: 'Assets/radiance.PNG',),
                ImageColumn(title: '•	Parola •',about: 'The academic year 2018-19 was a wonderful year for Parola- The literary hub of JIIT. Our flagship events The Joust and JMUN beat all previous benchmarks and outperformed our own expectations.The Joust, the literary fest of JIIT organised on September 22-23, 2018 hosted seven different events and witnessed a footfall of 500+ people. The literary fest saw participation from all the major colleges of Delhi NCR and rest of the country. The Joust constituted of a plethora of literary events that included debating, Committee simulations, poetry, journalism and creative writing. Named after the historic form of martial game, the event firmly believes in the inexhaustible power of words. Joust, known for its quality and diversity of events is one of the rare events in the circuit that conducts various MUN and Indian committees as well as one the most beautiful poetry competitions. This year a two day debating competition named Tarksangram was introduced with a prestigious rolling trophy.',image: 'Assets/parola.jpeg',),
                ImageColumn(title: '•	Thespian Circle-Drama •',about: '...About...',image: 'Assets/thespian.PNG',),
                ImageColumn(title: '• Sports •',about: 'At Jaypee Institute of Information Technology, along with academics much importance is given to the overall development of the personality of each and every student and in an effort to ensure this, much importance is given to sports activities. They include cricket, basket ball, volleyball, badminton, football, squash, table tennis, billiards etc.Inculcating discipline, sportsman spirit and competitive spirit is emphasized by facilitating sports infrastructure and opportunities to participate in competitive events. The annual sports meet at JIIT is known as “Fun Sports Meet”. It is one of the most popular events each year where participation easily crosses the 2000 mark. Hereunder are a few glimpses of moments captured by the lens over a period of time.Organizing the event itself is spearheaded by students themselves, with much financial sport support extended by the University through “Jaypee Youth Club” and under the guidance of a sports officer. The students in turn learn a lot about organizing events which pays its dividends during their professional career.',image: 'Assets/sports.PNG',),
                ImageColumn(title: '•	μCR-Robotics Hub •',about: 'A microcontroller is a small computer on a single integrated circuit containing a processor core, memory, programmable input/output peripherals, timer/counter, serial communication, analog to digital converters and interrupts. The usage of microcontrollers in systems ranging from toys to sophisticated scientific instruments can be seen.',image: 'Assets/mucr.PNG',),
                ImageColumn(title: '•	JPEG-Photography Hub •',about: 'JPEG (Jaypee Photographic Enthusiasts Guild) is the photography society of JIIT Noida. Aim of this hub is to provide basic learning in the field of photography by introducing to various photography tools, gadgets (like DSLR, tripods, various lenses etc.) and related skills. Often the hub conducts workshops to brush up editing skills and provide basic learning to new comers by introducing various techniques. The hub also conducts photo-walks in and around Delhi so that the student photographers can implement the learned photographic skills in real life. The JPEG hub coordinators and members (student photographers) often involved in capturing the photographs of different events (technical, cultural, international conferences, sports, etc.) conducted throughout the year at JIIT. The JPEG Hub not only is responsible to cover others events, but the hub also conduct events of out own.',image: 'Assets/jpeg.PNG',),
                ImageColumn(title: '•	Graficas •',about: 'Graphics and Animations can help with expression of ideas, which can bind a program together for presentation at various avenues. Be it a logo design, a self-portrait illustration or building your 2D and 3D scenes, Graficas is a helpful companion in your journeys. Apart from core visual designing related works, the hub also focuses on designing UI, UX, visual effects, and others.',image: 'Assets/grafitas.PNG',),
                ImageColumn(title: '•	CICE •',about: 'Creativity and innovation cell in electronics is hub of core electronics department. not only we teach the student about several extreme useful components of electronics, PCB fabrication to develop microcontroller board like Arduino and AVR but also we redound them to develop some eminence idea to outbid their knowledge toward forging some excellent project in the future. ',image: 'Assets/cice.PNG',),
                ImageColumn(title: '•	Crescendo-Music Hub •',about: 'A family of avid music enthusiasts who Perform, Promote and Propagate music.An open community that welcomes and motivates fellow students to unleash their Musical talents.',image: 'Assets/crecendo.PNG',),
                ImageColumn(title: '•	Ribose •',about: 'RIBOSE, the Technical Hub of Biotechnology Department at JIIT Noida is working since inception with a broad aim of providing a platform to young minds for exploring the ever growing and exciting world of biological and allied sciences. The hub organizes various outreach activities to spread awareness about both classical and modern biotechnology.',image: 'Assets/ribose.PNG',),
                ImageColumn(title: '•	Multimedia Development •',about: 'The multimedia hub provides a platform for students to learn and make games for mobile and desktop platform. The students learn stools like Unity, photoshopetc and program in C# and javascript. The Students cordinators plans the activities in 3 different areas like orientation, traninig sessions and Game development events.',image: 'Assets/multimedia.PNG',),
                ImageColumn(title: '•	KalakritiRangoli Hub •',about: 'Kalakriti provides a platform to young engineers to showcase their creativity and artistic capabilities. This hub unleashes the artistic and creative ideas of students by organizing various competitive and non competitive activities throughout the year. This hub provides students an opportunity to follow their artistic pursuits and release their stress. With activities like Sand art, Rangoli, Junk Rangoli, Poster making, Graffiti etc the young engineers not only learn and show case new art forms but also find it a pleasant break from the humdrum.',image: 'Assets/kalakriti.PNG',),
                ImageColumn(title: '•	It’s Our Earth •',about: 'We are interdependent and for our growth, it is important to strive for inclusive growth, and support communities around us. Jaypee institute of information technology believes in education with a holistic perspective, development of every person\'s intellectual, emotional, social, physical, artistic, creative and spiritual potentials.',image: 'Assets/ioe.PNG',),
                ImageColumn(title: '•	iCreate •',about: 'ICREATE Sketching Hub was established by faculty in charge Dr. KanupriyaMisraBakhru and came into existence in 2011. Under the hard work and persistence of students it has organized many successful events since its inception. ICREATE sketching hub is not just a hub where the students with great sketching skills can only participate but this hub supports and guides all those who actually want to develop skills in sketching, ICREATE also provides the opportunity to those students who once use to sketch and were really good sketchers but due to heavy work load and schedules are now not in a regular contact with their talent, so ICREATE provides a platform for all such people, it’s not that only students but faculty can even participate and they have even participated, Exhibitions and competitions organized by ICREATE have also experienced the contribution of our honorable faculty members. With time the hub is famous for introducing several workshops in which certain potential artists are invited and they guide the audience, the hub has even organized art gallery and exhibition to motivate the sketchers of JIIT and also to bring awareness amongst all by introducing simple pencil sketch. Some of the events organized by ICREATE are Google Doodles, Better Half, Sketch the Set, Collage Making, Lamp Shadezz, Scribble Art, Model Your Town, Bollycally, Zentangle, and The Mystery Build to name a few. ',image: 'Assets/icreate.PNG',),
                ImageColumn(title: '•	GDG JIIT Noida •',about: 'Google collaborates with university students who are passionate about growing developer communities and support them with starting student clubs on their campuses. Developer Student Clubs (DSC) train thousands of student developers globally and work with their communities to solve real-life problems.',image: 'Assets/gdg.PNG',),
                ImageColumn(title: '•	Expressions-Painting Hub •',about: 'Some of the flag ship events of the hub are as follows: Live art gallery – it is an exhibition of paintings made by participants on a variety of themes. The event gives total artistic liberty to participants where they can pour their thoughts on canvas and paint to their hearts content. It is a regular art event of the hub and students look forward to this artistic burst of colors on canvas year after year. Apart from this the hub organises various competitive events during the institute fest ‘Impressions’ and also on certain days of National importance. Some examples of competitive events conducted include: Palette Punch a team painting competition, Bold Brush which is an on the spot painting competition based on clues, BhoolBhulaiya a painting based treasure hunt kind of an event, Caricature Booth an art event based on making caricatures of known personalities and Tasveeroki Sher-o-Shayari which is a very interesting combination of poetry and art. Painting hub Expressions makes it mark on National days of importance such as Gandhi Jayanti, Independence day, Environment day and so on.',image: 'Assets/expressions.PNG',),
                ImageColumn(title: '• Adwitya •',about: '‘Adwitya’ is a hub of Jaypee Institute of Information Technology, Noida which aims to extend its services to specially-abled persons of the society. Members of ‘Adwitya’ provide support in imparting skills like basic computer education, maths, creative skills etc. to specially-abled persons. Adwitya conduct awareness programmes about their rights, needs and other general issues. Further, Adwitya is also involved in sensitizing society about the specially-abled.',image: 'Assets/adwitya.PNG',),
                ImageColumn(title: '•	JIIT Economics & Business Hub •',about: 'Jaypee Economics & Business Hub aims to promote economics and business knowledge through stimulating interest in subject and making students’ future ready. JEB\'s vision is to create an environment to initiate, inform, and inspire conversation on contemporary economic and business with global perspectives issues and local implications. As young citizens, our student are participants in a global economy, these budding professionals will face a plethora of possibilities and opportunities, this club aims to equip them the knowledge, the tools they need to make the best choices among these seemingly infinite possibilities. The hub organizes start-up summits, debates, discussions, mock stocks and online games for students',image: 'Assets/eco&buss.PNG',),
                ImageColumn(title: '•	The Page Turner Society •',about: 'To encourage the culture of reading books of different genres, conduct book exchanges, meeting authors, visiting book cafes etc. Understand the importance of literature in our society, in technical/ scientific environments and for enriched conversation and developing greater ideas.',image: 'Assets/pts.PNG',),
                ImageColumn(title: '•	Knuth Programming Hub •',about: 'KNUTH Programming Hub  is the programming hub of Jaypee Institute of Information Technology, Noida. Around 8500 students (current students of JIIT, JIIT Alumni, Students and Alumni of various renowned institutions) and professionals are the active members of the official Facebook page of the hub. Throughout the year, various events e.g. programming competitions – online and onsite, workshops, debugging events, etc are organised by the student and faculty coordination team of the hub. ',image: 'Assets/new.jpg',),
                ImageColumn(title: '•	Ecoquence •',about: 'EcoQuence is the Environment Hub of JIIT, Noida, Sector-62 open to students of all branches. The college as an institution and its students are interested in sustainability, both out of a desire for ecological responsibility and because of the simple fact that saving resources also saves money. ',image: 'Assets/ecoquence.PNG',),

              ],
            ),
          ),

        ),

      ),
    );
  }
}

class ImageColumn extends StatelessWidget {
  late String title,about,image;
  ImageColumn({required this.title,required this.about,required this.image,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: Text(
                '$title',
                style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20,bottom: 20),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Text(
                '$about',
                style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('$image'),
              width: 300,
              height: 300,
              ),
          ),
        ),
      ],
    );
  }
}