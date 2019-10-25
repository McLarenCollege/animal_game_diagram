class Questions {
  String data;
  Yes yes;
  No no;

  Questions({this.data, this.yes, this.no});

  Questions.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    yes = json['yes'] != null ? Yes.fromJson(json['yes']) : null;
    no = json['no'] != null ? No.fromJson(json['no']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['data'] = this.data;
    if (this.yes != null) {
      data['yes'] = this.yes.toJson();
    }
    if (this.no != null) {
      data['no'] = this.no.toJson();
    }
    return data;
  }
}

class Yes {
  String data;

  Yes({this.data});

  Yes.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}


class No {
  String data;

  No({this.data});

  No.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}

