import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'preloader_model.dart';
export 'preloader_model.dart';

class PreloaderWidget extends StatefulWidget {
  const PreloaderWidget({
    super.key,
    this.name,
  });

  final String? name;

  @override
  _PreloaderWidgetState createState() => _PreloaderWidgetState();
}

class _PreloaderWidgetState extends State<PreloaderWidget>
    with TickerProviderStateMixin {
  late PreloaderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(30.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 200.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreloaderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.name != null && widget.name != '') {
        _model.apiResultProfile = await CmsGroup.getProfileCall.call(
          name: widget.name,
        );
        if ((_model.apiResultProfile?.jsonBody ?? '')) {
          FFAppState().update(() {
            FFAppState().uName = CmsGroup.getProfileCall
                .name(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uEmail = CmsGroup.getProfileCall
                .email(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uPhone = CmsGroup.getProfileCall
                .phone(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uWhatsapp = CmsGroup.getProfileCall
                .whatsapp(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uTitle = CmsGroup.getProfileCall
                .title(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uPhoto = CmsGroup.getProfileCall
                .photourl(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uSlug = CmsGroup.getProfileCall
                .slug(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().uId = CmsGroup.getProfileCall
                .idUser(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString()
                .toString();
            FFAppState().uQr = CmsGroup.getProfileCall
                .qrUser(
                  (_model.apiResultProfile?.jsonBody ?? ''),
                )
                .toString();
          });

          context.goNamed(
            'Design1',
            pathParameters: {
              'name': serializeParam(
                FFAppState().uSlug,
                ParamType.String,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 1200),
              ),
            },
          );
        } else {
          context.pushNamed('scanQr');
        }
      } else {
        context.pushNamed('scanQr');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Cube-1s-200px.gif',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Loading...',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
