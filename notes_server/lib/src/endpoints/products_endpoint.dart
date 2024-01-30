import 'package:notes_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ProductsEndpoint extends Endpoint {
  Future<void> createNote(Session session, Product product) async {
    await Product.insert(session, product);
  }
}
