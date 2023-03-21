import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
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
            ],
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, end: 20, top: 10),
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                validator: (value) {
                  return null;
                },
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                keyboardAppearance: Brightness.light,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                decoration: InputDecoration(
                  // isDense: true,
                  hintText: "Enter your podcast...",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  fillColor: Colors.white,
                  labelText: "Search...",
                  labelStyle: const TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: Colors.deepOrangeAccent,
                      width: 1,
                    ),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  filled: true,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.deepOrangeAccent,
                    ),
                    onPressed: () {},
                  ),
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
