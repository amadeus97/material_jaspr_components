import 'package:jaspr/jaspr.dart';

class ElevatedButton extends StatelessComponent {
  ElevatedButton(this.children, {super.key, this.onClick});

  final List<Component>? children;
  final VoidCallback? onClick;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'md-elevated-button',
      children: children,
      events: events(onClick: onClick),
    );
  }
}
