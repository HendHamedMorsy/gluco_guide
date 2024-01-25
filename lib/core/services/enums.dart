import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../gen/colors.gen.dart';
import '../constants/route_names.dart';

enum OrderStatus {
  pickup((
    name: "Pickup",
    bgColor: Color.fromRGBO(255, 248, 230, 1),
    fColor: ColorName.pickupYellow
  )),
  delivered((
    name: "Delivered",
    bgColor: Color.fromRGBO(229, 247, 244, 1),
    fColor: ColorName.successGreen
  ));

  const OrderStatus(this.status);
  final ({String name, Color bgColor, Color fColor}) status;
}

enum AuthResult { aborted, success, failure }

enum PickupTime {
  moveIn("24 Aug 2023"),
  moveOut("26 Aug 2023");

  const PickupTime(this.status);

  final String status;
}
enum UserGender {
  male("Male"),
  female("Female");

  const UserGender(this.gender);

  final String gender;
}
enum UserType {
  type1("Type I"),
  type2("Type II");

  const UserType(this.type);

  final String type;
}
enum Diseases {
  kidneyDisfunction("Kidney Disfunction "),
  liverCirrhosis("Liver Cirrhosis"),
  fattyLiver("Fatty Liver "),
  cancer("Cancer "),
  hypertension("Hypertension"),
  anemia("Anemia"),
  deficiency("G6P Dehydrogenase Deficiency"),
  other("Other");

  const Diseases(this.name);

  final String name;
}
enum OTPRoute {
  resetPasswordScreen(RouteNames.resetPasswordPageSubRoute),
  mainScreen(RouteNames.mainPageRoute);

  const OTPRoute(this.status);

  final String status;
}

@HiveType(typeId: 2)
enum PaymentOptions {
  @HiveField(7)
  cash("Cash"),
  @HiveField(8)
  creditCard("Credit Card"),
  @HiveField(9)
  cardOnDelivery("Card On Delivery"),
  @HiveField(10)
  wallet("Wallet");

  const PaymentOptions(this.paymentMethod);
  final String? paymentMethod;
}

typedef OrderChip = ({
  String backendKey,
  String valueName,
  int id,
  int? dayInterval
});
typedef SpecialInstructionItem = ({
  String backendCode,
  String valueName,
  int id,
  String iconPath,
  String instructionStatus
});

enum ApartmentTypes {
  apartment((
    backendKey: "apartment",
    valueName: "Apartment",
    id: 0,
    dayInterval: null
  )),
  villa((backendKey: "villa", valueName: "Villa", id: 1, dayInterval: null)),
  office((backendKey: "office", valueName: "Office", id: 2, dayInterval: null)),
  hotel((backendKey: "hotel", valueName: "Hotel", id: 3, dayInterval: null));

  const ApartmentTypes(this.name);
  final OrderChip name;
}

enum SpecialInstructions {
  specialCare((
    backendCode: "TS-002",
    valueName: "Special Care",
    id: 0,
    iconPath: "Assets.icons.specialCare.path",
    instructionStatus: "+20 AED"
  )),
  folded((
    backendCode: "TS-011",
    valueName: "Folded",
    id: 1,
    iconPath: "Assets.icons.folded.path",
    instructionStatus: "Free"
  )),
  ecoPack((
    backendCode: "TS-013",
    valueName: "Eco Pack",
    id: 2,
    iconPath: "Assets.icons.ecoPack.path",
    instructionStatus: "Free"
  )),
  starch((
    backendCode: "TS-014",
    valueName: "Starch",
    id: 3,
    iconPath: "Assets.icons.starch.path",
    instructionStatus: "+20 AED"
  )),
  onHanger((
    backendCode: "TS-015",
    valueName: "On Hanger",
    id: 4,
    iconPath: "Assets.icons.clothesHanger.path",
    instructionStatus: "Free"
  )),
  alteration((
    backendCode: "TS-016",
    valueName: "Alteration",
    id: 5,
    iconPath: "Assets.icons.alteration.path",
    instructionStatus: "Free"
  ));

  const SpecialInstructions(this.specialInstructionItem);
  final SpecialInstructionItem specialInstructionItem;
}

enum DateTypes {
  standardDay((
    backendKey: "Standard Delivery",
    valueName: "Standard Delivery",
    id: 0,
    dayInterval: 2
  )),
  nextDay((
    backendKey: "Next Day Delivery",
    valueName: "Next Day",
    id: 1,
    dayInterval: 1
  )),
  sameDay((
    backendKey: "Same Day Delivery",
    valueName: "Same Day",
    id: 2,
    dayInterval: 0
  ));

  const DateTypes(this.orderChip);
  final OrderChip orderChip;
}
