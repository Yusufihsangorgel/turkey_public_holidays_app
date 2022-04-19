import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:resmi_tatiller/widget/button_widget.dart';
part 'home_view.dart';

extension on HomeView {
  IntroductionScreen _introductionScreen(context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Resmi Tatiller Uygulamasına Hoşgeldiniz',
          body:
              'Türkiye\'nin tüm resmi tatilleri görmek için bu uygulamayı kullanabilirsiniz.',
          image: buildImage('images/holiday1.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Resmi Tatiller Uygulamasına Hoşgeldiniz',
          body:
              'Türkiye\'nin tüm resmi tatilleri görmek için bu uygulamayı kullanabilirsiniz.',
          image: buildImage('images/holiday2.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Resmi Tatiller Uygulamasına Hoşgeldiniz',
          body: 'Hadi Başlayalım..!',
          image: buildImage('images/holiday3.jpg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('Tatilleri Gör',
          style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.of(context).pushNamed('/holiday');
      },
      showSkipButton: true,
      skip: const Text('Skip'),
      onSkip: () {
        Navigator.of(context).pushNamed('/holiday');
      },
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),

      dotsFlex: 0,
      nextFlex: 0,
      //isProgressTap: false,
      // isProgress: false,
      showNextButton: true,
      // showBackButton: true,
      showDoneButton: true,
      //freeze: true,
      // animationDuration: 1000,
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeView()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        activeColor: Colors.red,
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle:
            const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: const TextStyle(fontSize: 20),
        bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
