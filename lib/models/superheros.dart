import 'dart:convert';

class Superheros {
    String response;
    String id;
    String name;
    Powerstats powerstats;
    Biography biography;
    Appearance appearance;
    Work work;
    Connections connections;
    Image image;

    Superheros({
        required this.response,
        required this.id,
        required this.name,
        required this.powerstats,
        required this.biography,
        required this.appearance,
        required this.work,
        required this.connections,
        required this.image,
    });

    factory Superheros.fromRawJson(String str) => Superheros.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Superheros.fromJson(Map<String, dynamic> json) => Superheros(
        response: json["response"],
        id: json["id"],
        name: json["name"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        biography: Biography.fromJson(json["biography"]),
        appearance: Appearance.fromJson(json["appearance"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "response": response,
        "id": id,
        "name": name,
        "powerstats": powerstats.toJson(),
        "biography": biography.toJson(),
        "appearance": appearance.toJson(),
        "work": work.toJson(),
        "connections": connections.toJson(),
        "image": image.toJson(),
    };
}

class Appearance {
    String gender;
    String race;
    List<String> height;
    List<String> weight;
    String eyeColor;
    String hairColor;

    Appearance({
        required this.gender,
        required this.race,
        required this.height,
        required this.weight,
        required this.eyeColor,
        required this.hairColor,
    });

    factory Appearance.fromRawJson(String str) => Appearance.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: json["gender"],
        race: json["race"],
        height: List<String>.from(json["height"].map((x) => x)),
        weight: List<String>.from(json["weight"].map((x) => x)),
        eyeColor: json["eye-color"],
        hairColor: json["hair-color"],
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "race": race,
        "height": List<dynamic>.from(height.map((x) => x)),
        "weight": List<dynamic>.from(weight.map((x) => x)),
        "eye-color": eyeColor,
        "hair-color": hairColor,
    };
}

class Biography {
    String fullName;
    String alterEgos;
    List<String> aliases;
    String placeOfBirth;
    String firstAppearance;
    String publisher;
    String alignment;

    Biography({
        required this.fullName,
        required this.alterEgos,
        required this.aliases,
        required this.placeOfBirth,
        required this.firstAppearance,
        required this.publisher,
        required this.alignment,
    });

    factory Biography.fromRawJson(String str) => Biography.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["full-name"],
        alterEgos: json["alter-egos"],
        aliases: List<String>.from(json["aliases"].map((x) => x)),
        placeOfBirth: json["place-of-birth"],
        firstAppearance: json["first-appearance"],
        publisher: json["publisher"],
        alignment: json["alignment"],
    );

    Map<String, dynamic> toJson() => {
        "full-name": fullName,
        "alter-egos": alterEgos,
        "aliases": List<dynamic>.from(aliases.map((x) => x)),
        "place-of-birth": placeOfBirth,
        "first-appearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignment,
    };
}

class Connections {
    String groupAffiliation;
    String relatives;

    Connections({
        required this.groupAffiliation,
        required this.relatives,
    });

    factory Connections.fromRawJson(String str) => Connections.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation: json["group-affiliation"],
        relatives: json["relatives"],
    );

    Map<String, dynamic> toJson() => {
        "group-affiliation": groupAffiliation,
        "relatives": relatives,
    };
}

class Image {
    String url;

    Image({
        required this.url,
    });

    factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class Powerstats {
    String intelligence;
    String strength;
    String speed;
    String durability;
    String power;
    String combat;

    Powerstats({
        required this.intelligence,
        required this.strength,
        required this.speed,
        required this.durability,
        required this.power,
        required this.combat,
    });

    factory Powerstats.fromRawJson(String str) => Powerstats.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
    );

    Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
    };
}

class Work {
    String occupation;
    String base;

    Work({
        required this.occupation,
        required this.base,
    });

    factory Work.fromRawJson(String str) => Work.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"],
        base: json["base"],
    );

    Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
    };
}