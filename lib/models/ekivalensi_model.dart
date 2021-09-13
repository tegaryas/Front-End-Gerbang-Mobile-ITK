class TahunEkivalensi {
  final String tahun;
  final List<Ekivalensi> kurikulum;

  TahunEkivalensi({
    this.tahun,
    this.kurikulum,
  });
}

class Ekivalensi {
  final String kode;
  final String nama;
  final String sks;
  final bool isAmbil;

  Ekivalensi({
    this.kode,
    this.nama,
    this.sks,
    this.isAmbil,
  });
}

List<TahunEkivalensi> listTahunEkivalensi = [
  TahunEkivalensi(
    tahun: '2020',
    kurikulum: [
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
    ],
  ),
  TahunEkivalensi(
    tahun: '2015',
    kurikulum: [
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
    ],
  ),
  TahunEkivalensi(
    tahun: '2010',
    kurikulum: [
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
      Ekivalensi(
        kode: 'IF201401',
        nama: 'Pengantar Probabilitas',
        sks: '3',
        isAmbil: true,
      ),
    ],
  ),
];
