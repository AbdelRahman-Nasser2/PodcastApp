import 'package:flutter/material.dart';

class PodcastScreen extends StatefulWidget {
  const PodcastScreen({super.key});

  @override
  _PodcastScreenState createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  double _value = 40.0;
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 25, end: 25, top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Colors.white),
                ),
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/setting.png")),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 20),
                          color: Colors.deepOrangeAccent.withOpacity(0.6),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Image.asset("assets/bigimg.png"),
                  ),
                  const Text(
                    "Empathizing With users",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "UI Narrative: UI/UX Design Podcast",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFav = !isFav;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffECEFF7),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: (isFav != true)
                                  ? Colors.red
                                  : const Color(0xff838DA7),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffECEFF7),
                            ),
                            child: const Icon(
                              Icons.download_rounded,
                              color: Color(0xff838DA7),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffECEFF7),
                            ),
                            child: const Icon(
                              Icons.share_outlined,
                              color: Color(0xff838DA7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "08:16",
                        style: TextStyle(color: Color(0xff838DA7)),
                      ),
                      Expanded(
                          child: Slider(
                        autofocus: true,
                        mouseCursor: MouseCursor.uncontrolled,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        min: 0.0,
                        max: 100.0,
                        inactiveColor: const Color(0xffD4D9E8),
                        activeColor: Colors.deepOrangeAccent,
                      )),
                      const Text(
                        "20:21",
                        style: TextStyle(color: Color(0xff838DA7)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/back.png"),
                      Container(
                        width: 70,
                        height: 70,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 10),
                                color: Colors.deepOrangeAccent.withOpacity(0.5),
                                blurRadius: 20,
                              )
                            ],
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.pause,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Image.asset("assets/next.png"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(35))),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/playlist.png"),
                      const Text(
                        "Next Up",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
