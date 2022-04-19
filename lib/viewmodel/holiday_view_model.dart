import 'package:mobx/mobx.dart';
import 'package:resmi_tatiller/models/holiday_model.dart';
import 'package:resmi_tatiller/services/holiday_services.dart';

part 'holiday_view_model.g.dart';

class HolidayViewModel = _HolidayViewModelBase with _$HolidayViewModel;

abstract class _HolidayViewModelBase with Store {
  final errorMessage = "Beklenmedik Bir hata oluştu";
  @observable
  List<Holiday> posts = [];

  @action
  getHoliday() async {
    try {
      final _holidayApi = HolidayServices();
      posts = await _holidayApi.getHoliday();
      setLoading(false);
    } catch (e) {
      setError(true);
      print(e);
    }
  }

  @observable
  bool isLoading = true;

  @action
  setLoading(bool value) {
    isLoading = value;
  }

  @observable
  bool turkish = true;

  @action
  setTurkish(bool value) {
    turkish = value;
  }

  @observable
  bool isError = false;

  @action
  setError(bool value) {
    isError = value;
  }
}
