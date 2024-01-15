import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://hsbgmkwzkjoxyqsdteea.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhzYmdta3d6a2pveHlxc2R0ZWVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIyNzcxMjQsImV4cCI6MjAxNzg1MzEyNH0.1R_uTL2spXtmq0HxUNR5QRfkMObPMmqkYfr-BR1pc-s';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
