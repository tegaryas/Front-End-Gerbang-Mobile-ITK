class MatakuliahPrasyarat {
  final String kode;
  final String matakuliah;
  final String syarat;
  MatakuliahPrasyarat({
    this.kode,
    this.matakuliah,
    this.syarat,
  });
}

class TahunPrasyarat {
  final String tahun;
  List<Prasyarat> listPrasyarat;
  TahunPrasyarat({
    this.tahun,
    this.listPrasyarat,
  });
}

class Prasyarat {
  final int semester;
  final List<MatakuliahPrasyarat> matakuliah;

  Prasyarat({
    this.semester,
    this.matakuliah,
  });
}

List<TahunPrasyarat> tahunPrasyarats = [
  TahunPrasyarat(
    tahun: '2020',
    listPrasyarat: [
      Prasyarat(
        semester: 2,
        matakuliah: [
          MatakuliahPrasyarat(
            kode: 'IF1404',
            matakuliah: 'Pemrogramanan Berorientasi Objek',
            syarat: '[Semester 1] KU1218 - Algoritme Pemrograman (minimal D)',
          ),
        ],
      ),
      Prasyarat(
        semester: 3,
        matakuliah: [
          MatakuliahPrasyarat(
            kode: 'IF1408',
            matakuliah: 'Struktur Data',
            syarat:
                '[Semester 2] IF1404 - Pemrograman Berorientasi Objek (minimal D)',
          ),
        ],
      ),
      Prasyarat(
        semester: 4,
        matakuliah: [
          MatakuliahPrasyarat(
            kode: 'IF1410',
            matakuliah: 'Perancangan dan Analisis Algoritme',
            syarat: '[Semester 3] IF1408 - Struktur Data (minimal D)',
          ),
          MatakuliahPrasyarat(
            kode: 'IF1412',
            matakuliah: 'Teori Graf dan Otomata',
            syarat: '[Semester 2] IF1402 - Matematika Diskrit (minimal D)',
          ),
          MatakuliahPrasyarat(
            kode: 'IF1414',
            matakuliah: 'Grafika Komputer',
            syarat:
                '[Semester 3] IF1405 - Aljabar Linier dan Geometri (minimal D)',
          ),
          MatakuliahPrasyarat(
            kode: 'IF1415',
            matakuliah: 'Analisis dan Perancangan Perangkat Lunak',
            syarat:
                '[Semester 2] IF1404 - Pemrograman Berorientasi Objek (minimal D)',
          ),
        ],
      ),
    ],
  ),
  TahunPrasyarat(
    tahun: '2015',
    listPrasyarat: [
      Prasyarat(
        semester: 2,
        matakuliah: [
          MatakuliahPrasyarat(
            kode: 'IF1404',
            matakuliah: 'Pemrogramanan Berorientasi Objek',
            syarat: '[Semester 1] KU1218 - Algoritme Pemrograman (minimal D)',
          ),
        ],
      ),
      Prasyarat(
        semester: 3,
        matakuliah: [
          MatakuliahPrasyarat(
            kode: 'IF1408',
            matakuliah: 'Struktur Data',
            syarat:
                '[Semester 2] IF1404 - Pemrograman Berorientasi Objek (minimal D)',
          ),
        ],
      ),
    ],
  )
];
