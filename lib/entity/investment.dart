import 'package:flutter/cupertino.dart';

class Investment {
  final String name;
  final String description;
  final IconData icon;
  final double popularity;
  final String riskLevel;
  final double potentialReturn;
  final String timeHorizon;
  final double minimumInvestment;
  final String currency;
  final String restrictions;
  final String taxBenefits;
  final String investmentFirm;

  Investment({
    required this.name,
    required this.description,
    required this.icon,
    required this.popularity,
    required this.riskLevel,
    required this.potentialReturn,
    required this.timeHorizon,
    required this.minimumInvestment,
    required this.currency,
    required this.restrictions,
    required this.taxBenefits,
    required this.investmentFirm,
  });
}
