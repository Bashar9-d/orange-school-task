import 'package:flutter/material.dart';

class PotatoScreen extends StatefulWidget {
  const PotatoScreen({super.key});

  @override
  State<PotatoScreen> createState() => _PotatoScreenState();
}

class _PotatoScreenState extends State<PotatoScreen> {
  bool showArms = false;
  bool showEars = false;
  bool showEyebrows = false;
  bool showEyes = false;
  bool showGlasses = false;
  bool showHat = false;
  bool showMouth = false;
  bool showMustache = false;
  bool showNose = false;
  bool showShoes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Potato Screen"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/body.png"),
                Visibility(
                  visible: showArms,
                  child: Image.asset("assets/images/arms.png"),
                ),
                Visibility(
                  visible: showEars,
                  child: Image.asset("assets/images/ears.png"),
                ),
                Visibility(
                  visible: showEyebrows,
                  child: Image.asset("assets/images/eyebrows.png"),
                ),
                Visibility(
                  visible: showEyes,
                  child: Image.asset("assets/images/eyes.png"),
                ),
                Visibility(
                  visible: showGlasses,
                  child: Image.asset("assets/images/glasses.png"),
                ),
                Visibility(
                  visible: showHat,
                  child: Image.asset("assets/images/hat.png"),
                ),
                Visibility(
                  visible: showMouth,
                  child: Image.asset("assets/images/mouth.png"),
                ),
                Visibility(
                  visible: showMustache,
                  child: Image.asset("assets/images/mustache.png"),
                ),
                Visibility(
                  visible: showNose,
                  child: Image.asset("assets/images/nose.png"),
                ),
                Visibility(
                  visible: showShoes,
                  child: Image.asset("assets/images/shoes.png"),
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2, //y axis
              ),
              children: [
                CheckboxListTile(
                  title: Text("Arms"),
                  value: showArms,
                  onChanged: (value) {
                    showArms = value!;
                    setState(() {});
                  },
                ),
                CheckboxListTile(
                  title: Text("Shoes"),
                  value: showShoes,
                  onChanged: (value) {
                    showShoes = value!;
                    setState(() {});
                  },
                ),
                CheckboxListTile(
                  title: Text("Nose"),
                  value: showNose,
                  onChanged: (value) {
                    showNose = value!;
                    setState(() {});
                  },
                ),
                ///////////////////////////////////////////////////
                CheckboxListTile(
                  title: Text("Ears"),
                  value: showEars,
                  onChanged: (value) {
                    showEars = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Eyesbrows"),
                  value: showEyebrows,
                  onChanged: (value) {
                    showEyebrows = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Eyes"),
                  value: showEyes,
                  onChanged: (value) {
                    showEyes = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Glasses"),
                  value: showGlasses,
                  onChanged: (value) {
                    showGlasses = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Hat"),
                  value: showHat,
                  onChanged: (value) {
                    showHat = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Mouth"),
                  value: showMouth,
                  onChanged: (value) {
                    showMouth = value!;
                    setState(() {});
                  },
                ),

                CheckboxListTile(
                  title: Text("Mustache"),
                  value: showMustache,
                  onChanged: (value) {
                    showMustache = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
