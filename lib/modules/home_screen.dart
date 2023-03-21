import 'package:flutter/material.dart';
import 'package:podcastapp/modules/podcast_screen.dart';
import 'package:podcastapp/modules/search_screen.dart';
import 'package:podcastapp/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.only(start: 25, end: 25, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text("P",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    Text("o",
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 30)),
                    Text("dcast",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                  ],
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xffE85C19), Color(0xffFFBB82)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 3, color: const Color(0xff707070))),
                    ),
                    Image.asset("assets/girl.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 25, end: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                          offset: const Offset(0, 20),
                        ),
                      ]),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, const SearchScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xff656872),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Podcasts...",
                                style: TextStyle(color: Color(0xffdddddd)),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Icon(Icons.search,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        height: 40,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xff656872),
                        thickness: 0.8,
                      ),
                      const Text(
                        "Your category",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          categoryWidget("UI", Colors.deepOrangeAccent),
                          const SizedBox(width: 10),
                          categoryWidget("UX", const Color(0xff656872)),
                          const SizedBox(width: 10),
                          categoryWidget("Logo", const Color(0xff656872)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          categoryWidget("Art", const Color(0xff656872)),
                          const SizedBox(width: 10),
                          categoryWidget("Idea", const Color(0xff656872)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(0.0)),
                              child: const Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 27),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "UI Podcasts",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                podcastWidget(
                  img: "assets/img1.png",
                  text1: "UI Narrative",
                  text2: "podtail",
                  icon: const Icon(Icons.pause, color: Colors.white),
                  color: Colors.deepOrangeAccent,
                ),
                const SizedBox(height: 20),
                podcastWidget(
                  img: "assets/img2.png",
                  text1: "UX Podcast",
                  text2: "Announcer Name",
                  icon:
                      const Icon(Icons.play_arrow_rounded, color: Colors.white),
                  color: const Color(0xff676B76),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    navigateTo(context, const PodcastScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 20),
                          color: const Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/img1.png"),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Empathizing With users",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "08:16 / 20:21",
                                  style: TextStyle(color: Color(0xffDEDBDB)),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
