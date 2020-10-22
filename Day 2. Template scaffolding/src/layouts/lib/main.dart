import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layouts',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          subtitle1: TextStyle(
            color: Color.fromARGB(255, 210, 210, 210),
          ),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.black,
                secondary: Colors.white,
              ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  static const String _imageUrl =
      'https://image.winudf.com/v2/image1/Y29tLm1vYmlsZXVuaXZlcnNpdHkuZm9vZF9zY3JlZW5fMl8xNTQyNzE2MzUyXzA0OQ/screen-2.jpg?fakeurl=1&type=.jpg';

  static const String _assetPath = 'assets/bg.jpg';

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: FadeInImage(
              image: AssetImage(_assetPath),
              // image: NetworkImage(_imageUrl),
              placeholder: MemoryImage(kTransparentImage),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(140, 0, 0, 0),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.infinity,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Text(
                      'Welcome to Food Delivery App',
                      style: textTheme.headline2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 24.0,
                    ),
                    child: Text(
                      'Enjoy deliveries from a variety restaurants',
                      style: textTheme.subtitle1,
                    ),
                  ),
                  PrimaryButton(),
                  SecondaryButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 12.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  child: Icon(Icons.android),
                  padding: EdgeInsets.only(
                    right: 8.0,
                  ),
                ),
                Text(
                  'Continue with Android',
                  style: TextStyle(
                    fontSize: 16.0,
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

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          color: Colors.deepOrange,
          textTheme: ButtonTextTheme.accent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              'Continue with phone',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
