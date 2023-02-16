import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/styles/text_styles.dart';
import 'package:uhandisi/env.dart';
import 'package:http/http.dart' as http;

class GenerateMaterialsButton extends StatelessWidget {
  const GenerateMaterialsButton({
    Key? key,
    required this.controller,
    required this.onSubmit,
    required this.selectedInput,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function() onSubmit;
  final SelectedInput selectedInput;

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    return FilledButton.tonal(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
            Size.fromWidth(TextStyles.inputWidthDesktop)),
      ),
      onPressed: store.state.isComputing
          ? null
          : () async {
              onSubmit();
              if (selectedInput == SelectedInput.materialList) {
                store.dispatch(SortMaterialsAction());
              } else {
                String shortcode = store.state.coriolisLink.shortCode();
                List<String> mats = [];

                Uri url = Uri.parse('$testURL$shortcode');
                store.dispatch(MaterialComputationAction(isComputing: true));

                var response = await http.get(url);
                var data = json.decode(response.body);

                Map<String, int> materials = Map.from(data['materials']);
                var shipName = data['shipName'];
                var buildName = data['buildName'];
                store.dispatch(SetShipAndBuildNameAction(
                    shipName: shipName, buildName: buildName));

                for (var item in materials.entries) {
                  mats.add('${item.key}: ${item.value}');
                }
                store.dispatch(GetUserInputAction(input: mats));
                store.dispatch(ConvertUserInputAction());
                store.dispatch(MaterialComputationAction(isComputing: false));
                store.dispatch(SortMaterialsAction());
              }
            },
      child: store.state.isComputing
          ? const SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator.adaptive(),
            )
          : const Text('Generate list'),
    );
  }
}
