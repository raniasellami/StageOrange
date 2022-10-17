class LocationResponse {
  LocationResponse({
    required this.displayName,
    required this.address,
  });
  late final String displayName;
  late final Address address;

  LocationResponse.fromJson(Map<String, dynamic> json) {
    displayName = json['display_name'];
    address = Address.fromJson(json['address']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data['display_name'] = displayName;
    _data['address'] = address.toJson();
    return _data;
  }
}

class Address {
  Address({
    required this.city,
    required this.county,
    required this.state,
    required this.country,
    required this.countryCode,
  });
  late final String city;
  late final String county;
  late final String state;
  late final String country;
  late final String countryCode;

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    county = json['county'];
    state = json['state'];
    country = json['country'];
    countryCode = json['country_code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['city'] = city;
    _data['county'] = county;
    _data['state'] = state;
    _data['country'] = country;
    _data['country_code'] = countryCode;
    return _data;
  }
}
