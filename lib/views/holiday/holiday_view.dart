part of 'holiday_body.dart';

class HolidayView extends StatelessWidget {
  const HolidayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _ListViewBuilder(context),
    );
  }
}
