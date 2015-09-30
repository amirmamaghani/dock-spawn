import 'package:angular/application_factory.dart';
import 'package:di/annotations.dart';
import 'package:angular/angular.dart';

@Injectable()
class Greeter {
  String name;
}


@Decorator(selector: '[app-header]')
class Title {
  final dom.Element element;

  @NgOneWay('name')
  ApplicationModel displayModel;

  Title(this.element) {
  }
}

class ApplicationModel {
  final String name;

  ApplicationModel(this.name);
}


class OrderPanelModule extends Module{

}

void main() {
  applicationFactory()
  .rootContextType(Greeter)
  .run();
}