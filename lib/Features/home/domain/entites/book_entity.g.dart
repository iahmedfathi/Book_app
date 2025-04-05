// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntityAdapter extends TypeAdapter<BookEntity> {
  @override
  final int typeId = 0;

  @override
  BookEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntity(
      rating: fields[5] as num?,
      price: fields[6] as num?,
      bookId: fields[0] as String,
      title: fields[1] as String,
      author: fields[2] as String,
      description: fields[3] as String?,
      imageUrl: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
