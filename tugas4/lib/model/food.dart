class Risol {
  final int id;
  final String title;
  final String description;
  final String photo;

  Risol({
    required this.id,
    required this.title,
    required this.description,
    required this.photo,
  });
}

List<Risol> risolList = [
  Risol(
    id: 1,
    title: 'Risol Smoke Beef',
    description:
        'Risol yang berisi smoke beef, telur rebus, mayoneise, dan saus sambal.',
    photo: '../../assets/risol.jpg',
  ),
  Risol(
    id: 2,
    title: 'Risol Sayur',
    description:
        'Risol yang berisi campuran sayuran dan kentang dengan rasa manis dan gurih.',
    photo: '../../assets/risol.jpg',
  ),
  Risol(
    id: 3,
    title: 'Risol Ayam Pedas',
    description:
        'Risol yang berisi potongan ayam bagian dada dengan bumbu pedas.',
    photo: '../../assets/risol.jpg',
  ),
  Risol(
    id: 4,
    title: 'Risol Bihun',
    description:
        'Risol yang berisi campuran bihun dan wortel yang gurih.',
    photo: '../../assets/risol.jpg',
  )
];