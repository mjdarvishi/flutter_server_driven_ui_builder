import 'package:flutter/material.dart';

abstract class BaseDrivenUiWidget<S> extends StatelessWidget {
  final S schema;
  const BaseDrivenUiWidget(this.schema, {super.key});
}
abstract class BaseDrivenUiStateFullWidget<S> extends StatefulWidget {
  final S schema;
  const BaseDrivenUiStateFullWidget(this.schema, {super.key});
}
