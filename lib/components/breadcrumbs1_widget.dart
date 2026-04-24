import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'breadcrumbs1_model.dart';
export 'breadcrumbs1_model.dart';

class Breadcrumbs1Widget extends StatefulWidget {
  const Breadcrumbs1Widget({super.key});

  @override
  State<Breadcrumbs1Widget> createState() => _Breadcrumbs1WidgetState();
}

class _Breadcrumbs1WidgetState extends State<Breadcrumbs1Widget> {
  late Breadcrumbs1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Breadcrumbs1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Container(
        width: double.infinity,
        height: 44.0,
        decoration: BoxDecoration(
          color: Color(0xFFF1F4F8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 2.0, 0.0, 2.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.home_rounded,
                    color: Color(0xFF57636C),
                    size: 22.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF57636C),
                  size: 16.0,
                ),
              ),
              Container(
                height: 100.0,
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'Page Title',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: Color(0xFF57636C),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF57636C),
                  size: 16.0,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'Page Details',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: Color(0xFF14181B),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
