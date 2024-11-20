// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String namaProduk;
    String deskripsi;
    int harga;

    Fields({
        required this.user,
        required this.namaProduk,
        required this.deskripsi,
        required this.harga,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        namaProduk: json["nama_produk"],
        deskripsi: json["deskripsi"],
        harga: json["harga"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "nama_produk": namaProduk,
        "deskripsi": deskripsi,
        "harga": harga,
    };
}
