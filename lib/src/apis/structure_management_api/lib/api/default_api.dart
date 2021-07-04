//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// returns all available categories for structures
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> structuresCategoriesGetWithHttpInfo() async {
    final path = r'/structures/categories';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// returns all available categories for structures
  Future<List<String>> structuresCategoriesGet() async {
    final response = await structuresCategoriesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }

  /// delete this category. category needs to be empty
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<Response> structuresCategoryDeleteWithHttpInfo(String category) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }

    final path = r'/structures/{category}'
      .replaceAll('{' + 'category' + '}', category.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// delete this category. category needs to be empty
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<void> structuresCategoryDelete(String category) async {
    final response = await structuresCategoryDeleteWithHttpInfo(category);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// returns names of current available structures in that category
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<Response> structuresCategoryGetWithHttpInfo(String category) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }

    final path = r'/structures/{category}'
      .replaceAll('{' + 'category' + '}', category.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// returns names of current available structures in that category
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<List<Structure>> structuresCategoryGet(String category) async {
    final response = await structuresCategoryGetWithHttpInfo(category);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Structure>') as List)
        .cast<Structure>()
        .toList(growable: false);
    }
    return Future<List<Structure>>.value(null);
  }

  /// delete this structure
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  Future<Response> structuresCategoryNameDeleteWithHttpInfo(String category, String name) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    final path = r'/structures/{category}/{name}'
      .replaceAll('{' + 'category' + '}', category.toString())
      .replaceAll('{' + 'name' + '}', name.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// delete this structure
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  Future<void> structuresCategoryNameDelete(String category, String name) async {
    final response = await structuresCategoryNameDeleteWithHttpInfo(category, name);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// returns a specific structure
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  Future<Response> structuresCategoryNameGetWithHttpInfo(String category, String name) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    final path = r'/structures/{category}/{name}'
      .replaceAll('{' + 'category' + '}', category.toString())
      .replaceAll('{' + 'name' + '}', name.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// returns a specific structure
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  Future<Structure> structuresCategoryNameGet(String category, String name) async {
    final response = await structuresCategoryNameGetWithHttpInfo(category, name);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Structure') as Structure;
        }
    return Future<Structure>.value(null);
  }

  /// Performs an HTTP 'POST /structures/{category}/{name}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  ///
  /// * [Structure] structure (required):
  ///   update existing structure
  Future<Response> structuresCategoryNamePostWithHttpInfo(String category, String name, Structure structure) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (structure == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: structure');
    }

    final path = r'/structures/{category}/{name}'
      .replaceAll('{' + 'category' + '}', category.toString())
      .replaceAll('{' + 'name' + '}', name.toString());

    Object postBody = structure;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  ///
  /// * [Structure] structure (required):
  ///   update existing structure
  Future<void> structuresCategoryNamePost(String category, String name, Structure structure) async {
    final response = await structuresCategoryNamePostWithHttpInfo(category, name, structure);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /structures/{category}/{name}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  ///
  /// * [Structure] structure (required):
  ///   create new structure
  Future<Response> structuresCategoryNamePutWithHttpInfo(String category, String name, Structure structure) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (structure == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: structure');
    }

    final path = r'/structures/{category}/{name}'
      .replaceAll('{' + 'category' + '}', category.toString())
      .replaceAll('{' + 'name' + '}', name.toString());

    Object postBody = structure;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] category (required):
  ///   category the structure is assigned to
  ///
  /// * [String] name (required):
  ///   name of the structure to get
  ///
  /// * [Structure] structure (required):
  ///   create new structure
  Future<void> structuresCategoryNamePut(String category, String name, Structure structure) async {
    final response = await structuresCategoryNamePutWithHttpInfo(category, name, structure);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// create new category
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<Response> structuresCategoryPutWithHttpInfo(String category) async {
    // Verify required params are set.
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }

    final path = r'/structures/{category}'
      .replaceAll('{' + 'category' + '}', category.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// create new category
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   valid category
  Future<void> structuresCategoryPut(String category) async {
    final response = await structuresCategoryPutWithHttpInfo(category);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
