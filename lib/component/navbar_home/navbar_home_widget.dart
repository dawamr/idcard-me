import '/component/barcode_view/barcode_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'navbar_home_model.dart';
export 'navbar_home_model.dart';

class NavbarHomeWidget extends StatefulWidget {
  const NavbarHomeWidget({super.key});

  @override
  _NavbarHomeWidgetState createState() => _NavbarHomeWidgetState();
}

class _NavbarHomeWidgetState extends State<NavbarHomeWidget> {
  late NavbarHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarHomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
        child: Container(
          height: 90.0,
          constraints: const BoxConstraints(
            maxWidth: 393.0,
          ),
          decoration: const BoxDecoration(
            color: Color(0x00FFFFFF),
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 75.0,
                        constraints: BoxConstraints(
                          minWidth: 100.0,
                          maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, -1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50.0, 0.0, 50.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Builder(
                                builder: (context) => FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderRadius: 50.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor: Colors.white,
                                  icon: Icon(
                                    Icons.file_upload_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    if (isWeb) {
                                      await Clipboard.setData(ClipboardData(
                                          text:
                                              'https://vcard.solarion.id/${FFAppState().uSlug}'));
                                      await Share.share(
                                        'https://vcard.solarion.id/${FFAppState().uSlug}',
                                        sharePositionOrigin:
                                            getWidgetBoundingBox(context),
                                      );
                                    } else {
                                      await Share.share(
                                        'https://vcard.solarion.id/${FFAppState().uSlug}',
                                        sharePositionOrigin:
                                            getWidgetBoundingBox(context),
                                      );
                                    }
                                  },
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                borderRadius: 50.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                fillColor: Colors.white,
                                icon: Icon(
                                  Icons.contact_page_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  await launchURL(
                                      'https://cmsvcard.solarion.id/assets/${FFAppState().uContactFile}');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -2.41),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onDoubleTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                child: const BarcodeViewWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      onLongPress: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                child: const BarcodeViewWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: FlutterFlowIconButton(
                        borderColor: Colors.white,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 75.0,
                        fillColor: FlutterFlowTheme.of(context).tertiary,
                        icon: const Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 45.0,
                        ),
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            isDismissible: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.8,
                                  child: const BarcodeViewWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
