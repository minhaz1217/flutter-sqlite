

import 'package:flutter_sqlite/ClientModel.dart';
import 'package:flutter_sqlite/Database.dart';

newClient(Client newClient) async{
  final db = await DBProvider.db.database;
  print("New Client called");
  var res = await db.rawInsert(
      "INSERT Into Client (id,firstName)"
          " VALUES (${newClient.id},${newClient.firstName})");
  return res;
}

newClient2(Client newClient) async{
  final db = await DBProvider.db.database;
  var res = await db.insert("Client", newClient.toMap());
  return res;
}