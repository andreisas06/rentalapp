import 'package:bloc/bloc.dart';
import 'package:rental/app/pages/home.dart';
import 'package:rental/app/pages/myaccountpage.dart';
import 'package:rental/app/pages/mysavedpage.dart';
import 'package:rental/app/pages/mysettingspage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MySavedClickedEvents,
  MySettingsPageClickedEvents,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(Home());

  // @override
  // NavigationStates get initialState => Home();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.MySavedClickedEvents:
        yield MySavedPage();
        break;
      case NavigationEvents.MySettingsPageClickedEvents:
        yield MySettingsPage();
        break;
    }
  }
}
