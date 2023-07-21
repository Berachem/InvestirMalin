import 'package:flutter/material.dart';

import 'entity/investment.dart';

void main() {
  runApp(InvestirMalinApp());
}

class InvestirMalinApp extends StatelessWidget {
  const InvestirMalinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'InvestirMalin',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InvestirMalin - Où investir ?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.monetization_on,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Bienvenue sur InvestirMalin !',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Vous êtes novice en matière d\'investissement ? Pas de soucis ! Notre application est là pour vous guider dans vos choix d\'investissement.',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Naviguer vers la page de comparaison des options d'investissement
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComparaisonPage()),
                );
              },
              child: const Text('Comparer les options d\'investissement'),
            ),
          ],
        ),
      ),
    );
  }
}




class ComparaisonPage extends StatelessWidget {
final List<Investment> optionsInvestissement = [
  Investment(
    name: 'Crypto-monnaies',
    description: 'Investissez dans les cryptomonnaies pour profiter des hausses de prix.',
    icon: Icons.attach_money,
    popularity: 80.0,
    riskLevel: 'Élevé',
    potentialReturn: 100.0,
    timeHorizon: 'Court terme',
    minimumInvestment: 1000.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Aucun',
    investmentFirm: 'Nom de la société de gestion',
  ),
  Investment(
    name: 'PEL (Plan d\'Épargne Logement)',
    description: 'Placez votre argent dans un PEL pour épargner à moyen terme et obtenir des avantages fiscaux.',
    icon: Icons.home,
    popularity: 70.0,
    riskLevel: 'Faible',
    potentialReturn: 50.0,
    timeHorizon: 'Moyen terme',
    minimumInvestment: 500.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Réduction d\'impôt',
    investmentFirm: 'Nom de la société de gestion',
  ),
  Investment(
    name: 'PEA (Plan d\'Épargne en Actions)',
    description: 'Investissez dans des actions en utilisant un PEA pour profiter d\'avantages fiscaux sur les plus-values.',
    icon: Icons.bar_chart,
    popularity: 60.0,
    riskLevel: 'Moyen',
    potentialReturn: 80.0,
    timeHorizon: 'Moyen terme',
    minimumInvestment: 100.0,
    currency: 'EUR',
    restrictions: 'Actions européennes uniquement',
    taxBenefits: 'Exonération d\'impôt sur les plus-values',
    investmentFirm: 'Nom de la société de gestion',
  ),
  Investment(
    name: 'Investissement immobilier',
    description: 'Achetez des biens immobiliers pour générer des revenus locatifs ou réaliser des plus-values à long terme.',
    icon: Icons.business,
    popularity: 75.0,
    riskLevel: 'Moyen',
    potentialReturn: 70.0,
    timeHorizon: 'Long terme',
    minimumInvestment: 5000.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Réduction d\'impôt sur les revenus fonciers',
    investmentFirm: 'Nom de la société de gestion immobilière',
  ),
  Investment(
    name: 'Marché boursier',
    description: 'Investissez dans des actions d\'entreprises cotées en bourse pour bénéficier des performances du marché.',
    icon: Icons.trending_up,
    popularity: 85.0,
    riskLevel: 'Élevé',
    potentialReturn: 120.0,
    timeHorizon: 'Moyen terme',
    minimumInvestment: 200.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Aucun',
    investmentFirm: 'Nom de la société de courtage',
  ),
  Investment(
    name: 'Fonds communs de placement (FCP)',
    description: 'Placez votre argent dans un portefeuille diversifié géré par des professionnels.',
    icon: Icons.account_balance_wallet,
    popularity: 65.0,
    riskLevel: 'Moyen',
    potentialReturn: 60.0,
    timeHorizon: 'Moyen terme',
    minimumInvestment: 100.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Aucun',
    investmentFirm: 'Nom de la société de gestion de fonds',
  ),
  Investment(
    name: 'Marché des matières premières',
    description: 'Investissez dans des matières premières telles que l\'or, le pétrole, etc., pour diversifier votre portefeuille.',
    icon: Icons.grain,
    popularity: 50.0,
    riskLevel: 'Moyen',
    potentialReturn: 40.0,
    timeHorizon: 'Moyen terme',
    minimumInvestment: 500.0,
    currency: 'USD',
    restrictions: 'Aucune',
    taxBenefits: 'Aucun',
    investmentFirm: 'Nom de la société de courtage en matières premières',
  ),
  Investment(
    name: 'Cryptomonnaies stables',
    description: 'Investissez dans des cryptomonnaies stables indexées sur des devises fiduciaires pour limiter la volatilité.',
    icon: Icons.monetization_on,
    popularity: 70.0,
    riskLevel: 'Faible',
    potentialReturn: 90.0,
    timeHorizon: 'Court terme',
    minimumInvestment: 500.0,
    currency: 'USD',
    restrictions: 'Aucune',
    taxBenefits: 'Aucun',
    investmentFirm: 'Nom de la société de gestion',
  ),
  Investment(
    name: 'Investissement dans les obligations',
    description: 'Investissez dans des obligations d\'État ou d\'entreprise pour générer des revenus fixes.',
    icon: Icons.money,
    popularity: 60.0,
    riskLevel: 'Faible',
    potentialReturn: 40.0,
    timeHorizon: 'Court terme',
    minimumInvestment: 100.0,
    currency: 'EUR',
    restrictions: 'Aucune',
    taxBenefits: 'Exonération d\'impôt sur les intérêts des obligations d\'État',
    investmentFirm: 'Nom de la société de gestion',
  ),
  // Ajoutez d'autres options d'investissement ici
];

   ComparaisonPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Options d\'investissement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: optionsInvestissement.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => {
                      // Naviguer vers la page de détails de l'option d'investissement
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage(optionInvestissement: optionsInvestissement[index])),
                      ),
                    },
                    leading: Icon(optionsInvestissement[index].icon),
                    title: Text(optionsInvestissement[index].name),
                    subtitle: Text(optionsInvestissement[index].description),
                    trailing: Text('${optionsInvestissement[index].popularity}%',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Vous pouvez ajouter des actions lorsqu'un utilisateur clique sur une option d'investissement ici
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage extends StatefulWidget {
  final Investment optionInvestissement;

  // Constructeur de la classe DetailsPage prenant en paramètre une instance d'Investment
  DetailsPage({required this.optionInvestissement});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double _potentialReturn = 0.0;
  double _minimumInvestment = 0.0;

  @override
  void initState() {
    _potentialReturn = widget.optionInvestissement.potentialReturn;
    _minimumInvestment = widget.optionInvestissement.minimumInvestment;
    super.initState();
  }


  Color _getRiskLevelColor(int riskLevel) {
    if (riskLevel < 25) {
      return Colors.green;
    } else if (riskLevel < 50) {
      return Colors.yellow;
    } else if (riskLevel < 75) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  Color _getPotentialReturnColor(int potentialReturn) {
    if (potentialReturn < 25) {
      return Colors.red;
    } else if (potentialReturn < 50) {
      return Colors.orange;
    } else if (potentialReturn < 75) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'option d\'investissement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              widget.optionInvestissement.icon,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 16.0),
            Text(
              widget.optionInvestissement.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              widget.optionInvestissement.description,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            Text(
              'Popularité : ${widget.optionInvestissement.popularity}%',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
  Slider(
              activeColor: _getPotentialReturnColor(widget.optionInvestissement.popularity.toInt()),
              value: widget.optionInvestissement.popularity,
              onChanged: (newValue) {
                setState(() {
                  //_potentialReturn = newValue;
                });
              },
              min: 0,
              max: 100,
            ),

            Text(
              'Niveau de risque : ${widget.optionInvestissement.riskLevel}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Potentiel de rendement : ${_potentialReturn.toStringAsFixed(2)}%',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              activeColor: _getRiskLevelColor(widget.optionInvestissement.potentialReturn.toInt()),
              value: _potentialReturn,
              onChanged: (newValue) {
                setState(() {
                  //_potentialReturn = newValue;
                });
              },
              min: 0,
              max: 100,
            ),
            Text(
              'Horizon temporel : ${widget.optionInvestissement.timeHorizon}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Investissement minimum : ${_minimumInvestment.toStringAsFixed(2)} ${widget.optionInvestissement.currency}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              activeColor: _getRiskLevelColor(widget.optionInvestissement.minimumInvestment.toInt()),
              value: _minimumInvestment,
              onChanged: (newValue) {
                setState(() {
                  //_minimumInvestment = newValue;
                });
              },
              min: 0,
              max: 5000,
            ),
            Text(
              'Restrictions : ${widget.optionInvestissement.restrictions}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Avantages fiscaux : ${widget.optionInvestissement.taxBenefits}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Société de gestion : ${widget.optionInvestissement.investmentFirm}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Vous pouvez afficher d'autres détails de l'option d'investissement ici
          ],
        ),
      ),
    );
  }
}