// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_sell_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarSellUserCollection on Isar {
  IsarCollection<CarSellUser> get carSellUsers => this.collection();
}

const CarSellUserSchema = CollectionSchema(
  name: r'CarSellUser',
  id: -5664995466781788973,
  properties: {
    r'accidental': PropertySchema(
      id: 0,
      name: r'accidental',
      type: IsarType.string,
    ),
    r'brand': PropertySchema(
      id: 1,
      name: r'brand',
      type: IsarType.string,
    ),
    r'carDescription': PropertySchema(
      id: 2,
      name: r'carDescription',
      type: IsarType.string,
    ),
    r'carName': PropertySchema(
      id: 3,
      name: r'carName',
      type: IsarType.string,
    ),
    r'carPrice': PropertySchema(
      id: 4,
      name: r'carPrice',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 5,
      name: r'city',
      type: IsarType.string,
    ),
    r'color': PropertySchema(
      id: 6,
      name: r'color',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 7,
      name: r'image',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 8,
      name: r'location',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 9,
      name: r'type',
      type: IsarType.string,
    ),
    r'typeSale': PropertySchema(
      id: 10,
      name: r'typeSale',
      type: IsarType.string,
    ),
    r'tyre': PropertySchema(
      id: 11,
      name: r'tyre',
      type: IsarType.string,
    ),
    r'verifyCar': PropertySchema(
      id: 12,
      name: r'verifyCar',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 13,
      name: r'year',
      type: IsarType.string,
    )
  },
  estimateSize: _carSellUserEstimateSize,
  serialize: _carSellUserSerialize,
  deserialize: _carSellUserDeserialize,
  deserializeProp: _carSellUserDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _carSellUserGetId,
  getLinks: _carSellUserGetLinks,
  attach: _carSellUserAttach,
  version: '3.1.0+1',
);

int _carSellUserEstimateSize(
  CarSellUser object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.accidental.length * 3;
  bytesCount += 3 + object.brand.length * 3;
  bytesCount += 3 + object.carDescription.length * 3;
  bytesCount += 3 + object.carName.length * 3;
  bytesCount += 3 + object.carPrice.length * 3;
  bytesCount += 3 + object.city.length * 3;
  bytesCount += 3 + object.color.length * 3;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.type.length * 3;
  bytesCount += 3 + object.typeSale.length * 3;
  bytesCount += 3 + object.tyre.length * 3;
  bytesCount += 3 + object.verifyCar.length * 3;
  bytesCount += 3 + object.year.length * 3;
  return bytesCount;
}

void _carSellUserSerialize(
  CarSellUser object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accidental);
  writer.writeString(offsets[1], object.brand);
  writer.writeString(offsets[2], object.carDescription);
  writer.writeString(offsets[3], object.carName);
  writer.writeString(offsets[4], object.carPrice);
  writer.writeString(offsets[5], object.city);
  writer.writeString(offsets[6], object.color);
  writer.writeString(offsets[7], object.image);
  writer.writeString(offsets[8], object.location);
  writer.writeString(offsets[9], object.type);
  writer.writeString(offsets[10], object.typeSale);
  writer.writeString(offsets[11], object.tyre);
  writer.writeString(offsets[12], object.verifyCar);
  writer.writeString(offsets[13], object.year);
}

CarSellUser _carSellUserDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarSellUser(
    accidental: reader.readString(offsets[0]),
    brand: reader.readString(offsets[1]),
    carDescription: reader.readString(offsets[2]),
    carName: reader.readString(offsets[3]),
    carPrice: reader.readString(offsets[4]),
    city: reader.readString(offsets[5]),
    color: reader.readString(offsets[6]),
    image: reader.readString(offsets[7]),
    location: reader.readString(offsets[8]),
    type: reader.readString(offsets[9]),
    typeSale: reader.readString(offsets[10]),
    tyre: reader.readString(offsets[11]),
    verifyCar: reader.readString(offsets[12]),
    year: reader.readString(offsets[13]),
  );
  object.id = id;
  return object;
}

P _carSellUserDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _carSellUserGetId(CarSellUser object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _carSellUserGetLinks(CarSellUser object) {
  return [];
}

void _carSellUserAttach(
    IsarCollection<dynamic> col, Id id, CarSellUser object) {
  object.id = id;
}

extension CarSellUserQueryWhereSort
    on QueryBuilder<CarSellUser, CarSellUser, QWhere> {
  QueryBuilder<CarSellUser, CarSellUser, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarSellUserQueryWhere
    on QueryBuilder<CarSellUser, CarSellUser, QWhereClause> {
  QueryBuilder<CarSellUser, CarSellUser, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CarSellUserQueryFilter
    on QueryBuilder<CarSellUser, CarSellUser, QFilterCondition> {
  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accidental',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accidental',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accidental',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accidental',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      accidentalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accidental',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      brandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carName',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carName',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> carPriceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      carPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      colorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeSaleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeSaleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeSale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeSale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> typeSaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeSale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeSale',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      typeSaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeSale',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tyre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tyre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tyre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> tyreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tyre',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      tyreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tyre',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'verifyCar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'verifyCar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'verifyCar',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verifyCar',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      verifyCarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'verifyCar',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'year',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'year',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition> yearIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: '',
      ));
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterFilterCondition>
      yearIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'year',
        value: '',
      ));
    });
  }
}

extension CarSellUserQueryObject
    on QueryBuilder<CarSellUser, CarSellUser, QFilterCondition> {}

extension CarSellUserQueryLinks
    on QueryBuilder<CarSellUser, CarSellUser, QFilterCondition> {}

extension CarSellUserQuerySortBy
    on QueryBuilder<CarSellUser, CarSellUser, QSortBy> {
  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByAccidental() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accidental', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByAccidentalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accidental', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCarDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDescription', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy>
      sortByCarDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDescription', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCarName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carName', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCarNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carName', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCarPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCarPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByTypeSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeSale', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByTypeSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeSale', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByTyre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tyre', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByTyreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tyre', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByVerifyCar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verifyCar', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByVerifyCarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verifyCar', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarSellUserQuerySortThenBy
    on QueryBuilder<CarSellUser, CarSellUser, QSortThenBy> {
  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByAccidental() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accidental', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByAccidentalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accidental', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCarDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDescription', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy>
      thenByCarDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDescription', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCarName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carName', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCarNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carName', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCarPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCarPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByTypeSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeSale', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByTypeSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeSale', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByTyre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tyre', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByTyreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tyre', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByVerifyCar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verifyCar', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByVerifyCarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verifyCar', Sort.desc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension CarSellUserQueryWhereDistinct
    on QueryBuilder<CarSellUser, CarSellUser, QDistinct> {
  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByAccidental(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accidental', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByCarDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByCarName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByCarPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carPrice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByTypeSale(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeSale', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByTyre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tyre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByVerifyCar(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verifyCar', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarSellUser, CarSellUser, QDistinct> distinctByYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year', caseSensitive: caseSensitive);
    });
  }
}

extension CarSellUserQueryProperty
    on QueryBuilder<CarSellUser, CarSellUser, QQueryProperty> {
  QueryBuilder<CarSellUser, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> accidentalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accidental');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> carDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carDescription');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> carNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carName');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> carPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carPrice');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> typeSaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeSale');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> tyreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tyre');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> verifyCarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verifyCar');
    });
  }

  QueryBuilder<CarSellUser, String, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
