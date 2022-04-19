import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:resmi_tatiller/viewmodel/holiday_view_model.dart';

part 'holiday_view.dart';

extension on HolidayView {
  AppBar _appBar(context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: const Text('Tatiller'),
    );
  }

  Widget _ListViewBuilder(context) {
    final holidayView = HolidayViewModel();
    holidayView.getHoliday();
    return Observer(builder: (_) {
      if (holidayView.isLoading == true) {
        return const Center(child: CircularProgressIndicator());
      } else if (holidayView.isError == true) {
        holidayView.getHoliday();
        return Center(child: Text(holidayView.errorMessage));
      } else {
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return ExpansionTile(
              title: Text(holidayView.posts[index].gun),
              subtitle: Text(holidayView.posts[index].en),
              leading: Icon(Icons.calendar_today),
              children: [
                ListTile(
                  title: Text(holidayView.posts[index].uzuntarih),
                  subtitle: Text(holidayView.posts[index].haftagunu),
                ),
              ],
            );
          },
        );
      }
    });
  }
}
