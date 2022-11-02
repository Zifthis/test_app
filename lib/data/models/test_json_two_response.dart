class TestJsonTwoResponse {
  final String? firstName;
  final String? lastName;
  final int? age;
  final Address? address;

  TestJsonTwoResponse({
    this.firstName,
    this.lastName,
    this.age,
    this.address,
  });

  static TestJsonTwoResponse fromJson(Map<String, dynamic> tesJsonResponse) =>
      TestJsonTwoResponse(
        address: Address.fromJson(tesJsonResponse['address']),
        age: tesJsonResponse['age'],
        firstName: tesJsonResponse['firstName'],
        lastName: tesJsonResponse['lastName'],
      );

  Map<String, dynamic> toJson(TestJsonTwoResponse TestTwotoJson) =>
      <String, dynamic>{
        'address': TestTwotoJson.address,
        'age': TestTwotoJson.age,
        'firstName': TestTwotoJson.firstName,
        'lastName': TestTwotoJson.lastName,
      };
}

class Address {
  final String? streetAddress;
  final String? city;
  final String? state;
  final String? postCode;

  Address({
    this.streetAddress,
    this.city,
    this.state,
    this.postCode,
  });

  static Address fromJson(Map<String, dynamic> addressResponse) => Address(
        city: addressResponse['city'],
        postCode: addressResponse['postalCode'],
        state: addressResponse['state'],
        streetAddress: addressResponse['streetAddress'],
      );

  Map<String, dynamic> toJson(Address addressToJson) => <String, dynamic>{
        'city': addressToJson.city,
        'postalCode': addressToJson.postCode,
        'state': addressToJson.state,
        'streetAddress': addressToJson.streetAddress,
      };
}
