import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'horarios_model.dart';
export 'horarios_model.dart';

class HorariosWidget extends StatefulWidget {
  const HorariosWidget({
    Key? key,
    this.idNegocio,
  }) : super(key: key);

  final int? idNegocio;

  @override
  _HorariosWidgetState createState() => _HorariosWidgetState();
}

class _HorariosWidgetState extends State<HorariosWidget> {
  late HorariosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HorariosModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<NegocioRecord>>(
      stream: queryNegocioRecord(
        queryBuilder: (negocioRecord) =>
            negocioRecord.where('id_negocio', isEqualTo: widget.idNegocio),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitRing(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }
        List<NegocioRecord> containerNegocioRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerNegocioRecord = containerNegocioRecordList.isNotEmpty
            ? containerNegocioRecordList.first
            : null;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Horarios de funcionamento',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: StreamBuilder<List<HorariosRecord>>(
                    stream: queryHorariosRecord(
                      parent: containerNegocioRecord!.reference,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<HorariosRecord> columnHorariosRecordList =
                          snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(columnHorariosRecordList.length,
                            (columnIndex) {
                          final columnHorariosRecord =
                              columnHorariosRecordList[columnIndex];
                          return Text(
                            '${columnHorariosRecord.dia} ${columnHorariosRecord.horas}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 13.0,
                                ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Text(
                  'Horarios de funcionamento',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Text(
                  '${containerNegocioRecord!.endereco.rua} , ${containerNegocioRecord!.endereco.numero} - ${containerNegocioRecord!.endereco.bairro} - ${containerNegocioRecord!.endereco.cidade}, ${containerNegocioRecord!.endereco.estado}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 13.0,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
