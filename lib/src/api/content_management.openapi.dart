// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:openapi_base/openapi_base.dart';
part 'content_management.openapi.g.dart';

@_i1.JsonSerializable()
class HelloResponse implements OpenApiContent {
  HelloResponse({this.message, this.randomNumber});

  factory HelloResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloResponseFromJson(jsonMap);

  /// The Hello World greeting ;-)
  @_i1.JsonKey(name: 'message')
  final String? message;

  /// Some random nummer
  @_i1.JsonKey(name: 'random_number')
  final int? randomNumber;

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);
  @override
  String toString() => toJson().toString();
}

class _HelloNameGetResponse200 extends HelloNameGetResponse
    implements OpenApiResponseBodyJson {
  /// OK
  _HelloNameGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final HelloResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class HelloNameGetResponse extends OpenApiResponse
    implements HasSuccessResponse<HelloResponse> {
  HelloNameGetResponse();

  /// OK
  factory HelloNameGetResponse.response200(HelloResponse body) =>
      _HelloNameGetResponse200.response200(body);

  void map({required ResponseMap<_HelloNameGetResponse200> on200}) {
    if (this is _HelloNameGetResponse200) {
      on200((this as _HelloNameGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  OK
  @override
  HelloResponse requireSuccess() {
    if (this is _HelloNameGetResponse200) {
      return (this as _HelloNameGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class content_management implements ApiEndpoint {
  /// hello
  /// get: /hello/{name}
  Future<HelloNameGetResponse> helloNameGet({required String name});
}

abstract class content_managementClient implements OpenApiClient {
  factory content_managementClient(
          Uri baseUri, OpenApiRequestSender requestSender) =>
      _content_managementClientImpl._(baseUri, requestSender);

  /// hello
  /// get: /hello/{name}
  ///
  Future<HelloNameGetResponse> helloNameGet({required String name});
}

class _content_managementClientImpl extends OpenApiClientBase
    implements content_managementClient {
  _content_managementClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// hello
  /// get: /hello/{name}
  ///
  @override
  Future<HelloNameGetResponse> helloNameGet({required String name}) async {
    final request = OpenApiClientRequest('get', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _HelloNameGetResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }
}

class content_managementUrlResolve with OpenApiUrlEncodeMixin {
  /// hello
  /// get: /hello/{name}
  ///
  OpenApiClientRequest helloNameGet({required String name}) {
    final request = OpenApiClientRequest('get', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    return request;
  }
}

class content_managementRouter extends OpenApiServerRouterBase {
  content_managementRouter(this.impl);

  final ApiEndpointProvider<content_management> impl;

  @override
  void configure() {
    addRoute('/hello/{name}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (content_management impl) async => impl.helloNameGet(
              name: paramRequired(
                  name: 'name',
                  value: request.pathParameter('name'),
                  decode: (value) => paramToString(value))));
    }, security: []);
  }
}

class SecuritySchemes {}

T _throwStateError<T>(String message) => throw StateError(message);
