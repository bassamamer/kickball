import 'dart:typed_data';

/// Fix for Dart 3 compatibility where UnmodifiableUint8ListView might be missing
/// or caused issues in older dependency versions.
typedef UnmodifiableUint8ListView = Uint8List;
