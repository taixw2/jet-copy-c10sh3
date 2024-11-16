import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_balance_item/home_balance_item_widget.dart';
import 'package:flutter/material.dart';
import 'banlance_stat_model.dart';
export 'banlance_stat_model.dart';

class BanlanceStatWidget extends StatefulWidget {
  const BanlanceStatWidget({super.key});

  @override
  State<BanlanceStatWidget> createState() => _BanlanceStatWidgetState();
}

class _BanlanceStatWidgetState extends State<BanlanceStatWidget> {
  late BanlanceStatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BanlanceStatModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        wrapWithModel(
          model: _model.homeBalanceItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: HomeBalanceItemWidget(
            amount: '2304 \$',
            label: FFLocalizations.of(context).getText(
              '9m1kdg4t' /* Total balance */,
            ),
          ),
        ),
        Container(
          width: 1.0,
          height: 28.0,
          decoration: const BoxDecoration(
            color: Color(0xFF292929),
          ),
        ),
        wrapWithModel(
          model: _model.homeBalanceItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: HomeBalanceItemWidget(
            amount: '2304 \$',
            label: FFLocalizations.of(context).getText(
              'nnbbz6xx' /* Total spendings */,
            ),
          ),
        ),
        Container(
          width: 1.0,
          height: 28.0,
          decoration: const BoxDecoration(
            color: Color(0xFF292929),
          ),
        ),
        wrapWithModel(
          model: _model.homeBalanceItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: HomeBalanceItemWidget(
            amount: '23 \$',
            label: FFLocalizations.of(context).getText(
              'hjsrbj3m' /* Net profit */,
            ),
          ),
        ),
      ],
    );
  }
}
