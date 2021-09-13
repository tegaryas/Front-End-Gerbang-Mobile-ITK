class NilaiModel {
  final String semester;
  final int sks;
  final double ips;
  final List<NilaiPerSemester> nilai;
  NilaiModel({
    this.semester,
    this.sks,
    this.ips,
    this.nilai,
  });
}

class NilaiPerSemester {
  final String kode;
  final String matkul;
  final int sksmatkul;
  final String nilai;
  NilaiPerSemester({
    this.kode,
    this.matkul,
    this.sksmatkul,
    this.nilai,
  });
}

List<NilaiModel> nilai = [
  NilaiModel(
    semester: 'Genap 2020',
    ips: 3.58,
    sks: 17,
    nilai: [
      NilaiPerSemester(
        kode: 'KU151006',
        matkul: 'Agama Islam',
        sksmatkul: 2,
        nilai: 'B',
      ),
      NilaiPerSemester(
        kode: 'FI151001',
        matkul: 'Fisika Dasar',
        sksmatkul: 3,
        nilai: 'A',
      ),
      NilaiPerSemester(
        kode: 'IF151101',
        matkul: 'Matematika Disktrit',
        sksmatkul: 3,
        nilai: 'BC',
      ),
      NilaiPerSemester(
        kode: 'IF151102',
        matkul: 'Pengantar Sistem dan Teknologi Informasi',
        sksmatkul: 3,
        nilai: 'B',
      ),
      NilaiPerSemester(
        kode: 'KI151001',
        matkul: 'Kimia Dasar',
        sksmatkul: 2,
        nilai: 'B',
      ),
      NilaiPerSemester(
        kode: 'KU151003',
        matkul: 'Teknik Komunikasi Ilmiah',
        sksmatkul: 2,
        nilai: 'BC',
      ),
      NilaiPerSemester(
        kode: 'MA151001',
        matkul: 'Kalkulus',
        sksmatkul: 3,
        nilai: 'A',
      ),
    ],
  ),
  NilaiModel(
    semester: 'Ganjil 2020',
    ips: 3.58,
    sks: 22,
    nilai: [
      NilaiPerSemester(
        kode: 'FI151001',
        matkul: 'Fisika Dasar',
        sksmatkul: 3,
        nilai: 'A',
      ),
    ],
  ),
];
