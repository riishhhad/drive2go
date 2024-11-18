class MycarModel {
  MycarModel({
      this.id, 
      this.vehicle, 
      this.user, 
      this.pickupDate, 
      this.returnDate, 
      this.pickupLocation, 
      this.returnLocation, 
      this.amount, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.v,});

  MycarModel.fromJson(dynamic json) {
    id = json['_id'];
    vehicle = json['vehicle'] != null ? Vehicle.fromJson(json['vehicle']) : null;
    user = json['user'];
    pickupDate = json['pickupDate'];
    returnDate = json['returnDate'];
    pickupLocation = json['pickupLocation'];
    returnLocation = json['returnLocation'];
    amount = json['amount'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }
  String? id;
  Vehicle? vehicle;
  String? user;
  String? pickupDate;
  String? returnDate;
  String? pickupLocation;
  String? returnLocation;
  int? amount;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    if (vehicle != null) {
      map['vehicle'] = vehicle?.toJson();
    }
    map['user'] = user;
    map['pickupDate'] = pickupDate;
    map['returnDate'] = returnDate;
    map['pickupLocation'] = pickupLocation;
    map['returnLocation'] = returnLocation;
    map['amount'] = amount;
    map['status'] = status;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    return map;
  }
  static List<MycarModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => MycarModel.fromJson(value)).toList();
  }
}

class Vehicle {
  Vehicle({
      this.location, 
      this.id, 
      this.brand, 
      this.model, 
      this.description, 
      this.rentPrice, 
      this.mileage, 
      this.photos, 
      this.vehicleColor, 
      this.gearType, 
      this.fuelType, 
      this.noOfSeats, 
      this.rating, 
      this.noOfDoors, 
      this.ownerName, 
      this.ownerPhoneNumber, 
      this.ownerPlace, 
      this.ownerProfilePhoto, 
      this.available, 
      this.v,});

  Vehicle.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    id = json['_id'];
    brand = json['brand'];
    model = json['model'];
    description = json['description'];
    rentPrice = json['rentPrice'];
    mileage = json['mileage'];
    photos = json['photos'] != null ? json['photos'].cast<String>() : [];
    vehicleColor = json['vehicleColor'];
    gearType = json['gearType'];
    fuelType = json['fuelType'];
    noOfSeats = json['noOfSeats'];
    rating = json['rating'];
    noOfDoors = json['noOfDoors'];
    ownerName = json['ownerName'];
    ownerPhoneNumber = json['ownerPhoneNumber'];
    ownerPlace = json['ownerPlace'];
    ownerProfilePhoto = json['ownerProfilePhoto'];
    available = json['available'];
    v = json['__v'];
  }
  Location? location;
  String? id;
  String? brand;
  String? model;
  String? description;
  int? rentPrice;
  int? mileage;
  List<String>? photos;
  String? vehicleColor;
  String? gearType;
  String? fuelType;
  int? noOfSeats;
  double? rating;
  int? noOfDoors;
  String? ownerName;
  String? ownerPhoneNumber;
  String? ownerPlace;
  String? ownerProfilePhoto;
  bool? available;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['_id'] = id;
    map['brand'] = brand;
    map['model'] = model;
    map['description'] = description;
    map['rentPrice'] = rentPrice;
    map['mileage'] = mileage;
    map['photos'] = photos;
    map['vehicleColor'] = vehicleColor;
    map['gearType'] = gearType;
    map['fuelType'] = fuelType;
    map['noOfSeats'] = noOfSeats;
    map['rating'] = rating;
    map['noOfDoors'] = noOfDoors;
    map['ownerName'] = ownerName;
    map['ownerPhoneNumber'] = ownerPhoneNumber;
    map['ownerPlace'] = ownerPlace;
    map['ownerProfilePhoto'] = ownerProfilePhoto;
    map['available'] = available;
    map['__v'] = v;
    return map;
  }

}

class Location {
  Location({
      this.type, 
      this.coordinates,});

  Location.fromJson(dynamic json) {
    type = json['type'];
    coordinates = json['coordinates'] != null ? json['coordinates'].cast<double>() : [];
  }
  String? type;
  List<double>? coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['coordinates'] = coordinates;
    return map;
  }

}