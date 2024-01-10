import 'package:first_stacked_app/app/app.dialogs.dart';
import 'package:first_stacked_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final _dialogService = locator<DialogService>();

  void captureEmail() {
    _dialogService.showCustomDialog(
        variant: DialogType.infoAlert,
        title: 'Thanks for signing up!',
        description: 'Check in your email for a verification email.');
  }
}
