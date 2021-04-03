import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/ui/views/home/home_view.dart';
import 'package:stacked_starter_template/ui/views/about/about_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      path: '/',
      initial: true,
    ),
    CupertinoRoute(
      page: AboutView,
      path: 'about',
    )
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
  ],
)
class AppSetup {}
