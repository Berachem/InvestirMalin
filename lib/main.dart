import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:invest/presentation/UI/backArrow.dart';
import 'package:invest/presentation/UI/cardMoreInvestments.dart';
import 'package:invest/presentation/UI/creditCard.dart';
import 'package:invest/presentation/UI/infoBannerActions.dart';
import 'package:invest/presentation/UI/searchBar.dart';

import 'entity/investment.dart';

void main() {
  runApp(const InvestirMalinApp());
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CreditCard(
                backgroundGradient:
                    LinearGradient(colors: [Colors.blue, Colors.blue[800]!]),
                onTopRightButtonClicked: () {},
                cardIcon: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",
                  width: 50,
                )),
            const SizedBox(height: 32.0),
            const Text(
              'Bienvenue sur InvestirMalin !${Emojis.moneyBag}',
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
            Container(
              width: 200,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      color: const Color(0x4960F9).withOpacity(.3),
                      spreadRadius: 4,
                      blurRadius: 50)
                ]),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComparaisonPage()),
                    );
                  },
                  splashColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                      decoration: BoxDecoration(
                        //gradient:
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/finance_app_2%2FbuttonBackgroundSmall.png?alt=media&token=fa2f9bba-120a-4a94-8bc2-f3adc2b58a73"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 88.0,
                              maxWidth: 200.0,
                              minHeight:
                                  36.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text('Découvrir',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComparaisonPage extends StatefulWidget {
  const ComparaisonPage({super.key});

  @override
  State<ComparaisonPage> createState() => _ComparaisonPageState();
}

class _ComparaisonPageState extends State<ComparaisonPage> {
  final List<Investment> DEFAULToptionsInvestissement = [
    Investment(
      name: 'Crypto-monnaies',
      description:
          'Investissez dans les cryptomonnaies pour profiter des hausses de prix.',
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
      description:
          'Placez votre argent dans un PEL pour épargner à moyen terme et obtenir des avantages fiscaux.',
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
      description:
          'Investissez dans des actions en utilisant un PEA pour profiter d\'avantages fiscaux sur les plus-values.',
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
      description:
          'Achetez des biens immobiliers pour générer des revenus locatifs ou réaliser des plus-values à long terme.',
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
      description:
          'Investissez dans des actions d\'entreprises cotées en bourse pour bénéficier des performances du marché.',
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
      description:
          'Placez votre argent dans un portefeuille diversifié géré par des professionnels.',
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
      description:
          'Investissez dans des matières premières telles que l\'or, le pétrole, etc., pour diversifier votre portefeuille.',
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
      description:
          'Investissez dans des cryptomonnaies stables indexées sur des devises fiduciaires pour limiter la volatilité.',
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
      description:
          'Investissez dans des obligations d\'État ou d\'entreprise pour générer des revenus fixes.',
      icon: Icons.money,
      popularity: 60.0,
      riskLevel: 'Faible',
      potentialReturn: 40.0,
      timeHorizon: 'Court terme',
      minimumInvestment: 100.0,
      currency: 'EUR',
      restrictions: 'Aucune',
      taxBenefits:
          'Exonération d\'impôt sur les intérêts des obligations d\'État',
      investmentFirm: 'Nom de la société de gestion',
    ),
    // Ajoutez d'autres options d'investissement ici
  ];
  final TextEditingController _textController = TextEditingController();

  List<Investment> optionsInvestissement = [];

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    optionsInvestissement = DEFAULToptionsInvestissement;
    _textController.addListener(_onSearchTextChanged);
    super.initState();
  }

  void _onSearchTextChanged() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        optionsInvestissement = DEFAULToptionsInvestissement.where(
            (optionInvestissement) =>
                optionInvestissement.name
                    .toLowerCase()
                    .contains(_textController.text.toLowerCase()) ||
                optionInvestissement.description
                    .toLowerCase()
                    .contains(_textController.text.toLowerCase())).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackArrow(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 125.0),
                SearchInput(
                  textController: _textController,
                  hintText: 'Rechercher une option d\'investissement',
                ),
                const SizedBox(height: 16.0),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 600),
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: optionsInvestissement.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () => {
                            // Naviguer vers la page de détails de l'option d'investissement
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      optionInvestissement:
                                          optionsInvestissement[index])),
                            ),
                          },
                          leading: Icon(optionsInvestissement[index].icon),
                          title: Text(optionsInvestissement[index].name),
                          subtitle:
                              Text(optionsInvestissement[index].description),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          // Vous pouvez ajouter des actions lorsqu'un utilisateur clique sur une option d'investissement ici
                        );
                      },
                    ),
                  ),
                ),
                CardMoreInvestment(
                  imageUrl: 'https://i.ibb.co/mzk2gXQ/investissement.png',
                  onPressed: () => print("Investissement"),
                  subtitle: '',
                  text: 'Investissements alternatif',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final Investment optionInvestissement;

  // Constructeur de la classe DetailsPage prenant en paramètre une instance d'Investment
  const DetailsPage({super.key, required this.optionInvestissement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackArrow(),
          Column(
            children: [
              const SizedBox(height: 100.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      optionInvestissement.icon,
                      size: 100,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      optionInvestissement.name,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      optionInvestissement.description,
                      style: const TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32.0),
                    _buildDetailsRow(
                        'Popularité',
                        '${optionInvestissement.popularity}%',
                        Colors.black,
                        Colors.blue),
                    //_buildSlider('Popularité', optionInvestissement.popularity, 0, 100, (value) {}),
                    _buildDetailsRow(
                        'Niveau de risque',
                        optionInvestissement.riskLevel,
                        Colors.black,
                        Colors.blue),
                    // _buildSlider('Niveau de risque', optionInvestissement.potentialReturn, 0, 100, (value) {}),
                    _buildDetailsRow(
                        'Potentiel de rendement',
                        '${optionInvestissement.potentialReturn.toStringAsFixed(2)}%',
                        Colors.black,
                        Colors.blue),
                    //_buildSlider('Potentiel de rendement', optionInvestissement.potentialReturn, 0, 100, (value) {}),
                    _buildDetailsRow(
                        'Horizon temporel',
                        optionInvestissement.timeHorizon,
                        Colors.black,
                        Colors.blue),
                    _buildDetailsRow(
                        'Investissement minimum',
                        '${optionInvestissement.minimumInvestment.toStringAsFixed(2)} ${optionInvestissement.currency}',
                        Colors.black,
                        Colors.blue),
                    //  _buildSlider('Investissement minimum', optionInvestissement.minimumInvestment, 0, 5000, (value) {}),
                    _buildDetailsRow(
                        'Restrictions',
                        optionInvestissement.restrictions,
                        Colors.black,
                        Colors.blue),
                    _buildDetailsRow(
                        'Avantages fiscaux',
                        optionInvestissement.taxBenefits,
                        Colors.black,
                        Colors.blue),
                    //_buildDetailsRow('Société de gestion', optionInvestissement.investmentFirm, Colors.black, Colors.blue),
                    // Vous pouvez afficher d'autres détails de l'option d'investissement ici
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      persistentFooterButtons: [
        TextButton(
          onPressed: () {
            // Ajouter l'option d'investissement à la liste des options d'investissement favorites
            print(
                'Option d\'investissement ajoutée aux favoris : ${optionInvestissement.name}');
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 8.0),
              Text('Ajouter aux favoris'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsRow(
      String label, String value, Color labelColor, Color valueColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: labelColor,
            ),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            value,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlider(String label, double value, double min, double max,
      Function(double) onChanged) {
    return Slider(
      value: value,
      onChanged: onChanged,
      min: min,
      max: max,
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    );
  }
}
