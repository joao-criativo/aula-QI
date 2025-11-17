class Profile {
String? name;
String? image;
bool? like;

Profile({this.name, this.image, this.like});


@override
  String toString() {
    return "name: $name / image: $image / Like: $like \n";
  }
  }

