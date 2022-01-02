// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Dart implementation of the gRPC helloworld.Greeter server.
import 'package:grpc/grpc.dart';
import 'package:helloworld/protos/model.pbgrpc.dart';
import 'package:uuid/uuid.dart';

class PeopleService extends PeopleServiceBase {
  @override
  Future<PeopleResp> get(ServiceCall call, Empty request) async {
    final peopleResp = PeopleResp(
      people: [
        Person()
          ..name = 'Masdani'
          ..uuid = Uuid().v4()
      ],
    );

    return peopleResp;
  }
}

Future<void> main(List<String> args) async {
  final server = Server(
    [PeopleService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
