
class sanpham {
    late int id;
    late String sanphamName;
    late int loaisanphamId;
    late String thuonghieu;
    late int dongia;
    late int soluong;
    late String mota;
    late String kichthuoc;
    late String hinhanh;
    late int trangthai;
    late dynamic createdAt;
    late dynamic updatedAt;
    late dynamic deletedAt;

  sanpham({
    required this.id,
    required this.sanphamName,
    required this.loaisanphamId,
    required this.thuonghieu,
    required this.dongia,
    required this.soluong,
    required this.mota,
    required this.kichthuoc,
    required this.hinhanh,
    required this.trangthai,
  });

 sanpham.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sanphamName = json['sanpham_name'];
    loaisanphamId = json['loaisanpham_id'];
    thuonghieu = json['thuonghieu'];
    dongia = json['dongia'];
    soluong = json['soluong'];
    mota = json['mota'];
    kichthuoc = json['kichthuoc'];
    hinhanh = json['hinhanh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sanpham_name'] = this.sanphamName;
    data['loaisanpham_id'] = this.loaisanphamId;
    data['thuonghieu'] = this.thuonghieu;
    data['dongia'] = this.dongia;
    data['soluong'] = this.soluong;
    data['mota'] = this.mota;
    data['kichthuoc'] = this.kichthuoc;
    data['hinhanh'] = this.hinhanh;
    data['trangthai'] = this.trangthai;
    return data;
  }
}


// factory sanpham.fromJson(Map<String, dynamic> json) {
  //   return sanpham(
  //     id: json['id'],
  //     sanphamName: json['sanphamName'],
  //     loaisanphamId: json['loaisanphamId'],
  //     thuonghieu: json['thuonghieu'],
  //     dongia: json['dongia'],
  //     soluong: json['soluong'],
  //     mota: json['mota'],
  //     kichthuoc: json['kichthuoc'],
  //     hinhanh: json['hinhanh'],
  //     trangthai: json['trangthai'],
  //   );
  // }