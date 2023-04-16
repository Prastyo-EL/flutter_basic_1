import 'package:flutter/material.dart';
import 'package:flutter_basic_1/widgets/photo_profile.dart';
import 'package:flutter_basic_1/values.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? name;

  static void _launchURL(String _url) async {
    print(_url);
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
  static List<Widget> _createButtons(int len) {
    List<Widget> btns = [];
    var names = Values.links.keys.toList();
    for (int i = 0; i < len; i++) {
      btns.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            child: Text(
              names[i],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              primary: Colors.white,
              fixedSize: const Size(550, 50),
            ),
            onPressed: () => _launchURL(Values.links.values.toList()[i]),
          ),
        ),
      );
    }
    return btns;
  }

  final List<Widget> buttons = _createButtons(
    Values.links.keys.length,
  );

  @override
  void initState() {
    name = 'Pangeran Kodok';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        // title: const Text('Portofolio Prastyo'),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PhotoProfile(),
            // Text(name ?? 'No Name'),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       name = 'Prastyo Eko Susanto';
            //     });
            //   },
            //   child: const Text('Change Name'),
            // ),
            SelectableText(
              Values.name,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            //description
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SelectableText(
                Values.description,
                style: Theme.of(context).textTheme.subtitle2,
                textAlign: TextAlign.center,
              ),
            ),
//buttons
            ...buttons,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: const Text(
                  'Paper by Prastyo Eko Susanto',
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
                onTap: () => _launchURL('https://ijair.id/index.php/ijair/article/view/257'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: InkWell(
                child: const Text(
                  'Github Repository',
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
                onTap: () => _launchURL(
                    'https://github.com/Prastyo-EL'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _launchURL(Values.floatingActionButtonLink),
        tooltip: Values.floatingActionButtonName,
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
