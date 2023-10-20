import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarSer = locator<SnackbarService>();

  bool btnMedSelected = false;
  bool btnFireSelected = false;
  bool btnPoliceSelected = false;

  Future<void> helpPressed() async {
    if (btnFireSelected == false &&
        btnMedSelected == false &&
        btnPoliceSelected == false) {
      _snackbarSer.showSnackbar(
          message: "Select Emergency Concern!",
          duration: const Duration(seconds: 1));
      return;
    }

    _snackbarSer.showSnackbar(
        message: "Rescue Coming!, You're Dead if None!",
        duration: const Duration(seconds: 2));
    btnMedSelected = false;
    btnFireSelected = false;
    btnPoliceSelected = false;
    rebuildUi();
  }

  void medPressed() {
    btnMedSelected = !btnMedSelected;
    rebuildUi();
  }

  void firePressed() {
    btnFireSelected = !btnFireSelected;
    rebuildUi();
  }

  void policePressed() {
    btnPoliceSelected = !btnPoliceSelected;
    rebuildUi();
  }
}
