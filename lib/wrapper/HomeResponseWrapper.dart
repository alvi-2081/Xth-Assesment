class HomeResponseWrapper {
  HomeResponseWrapper({
    int? success,
    List<dynamic>? error,
    Data? data,
  }) {
    _success = success;
    _error = error;
    _data = data;
  }

  HomeResponseWrapper.fromJson(dynamic json) {
    _success = json['success'];
    if (json['error'] != null) {
      _error = [];
      // json['error'].forEach((v) {
      //   _error?.add(Dynamic.fromJson(v));
      // });
    }
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _success;
  List<dynamic>? _error;
  Data? _data;
  HomeResponseWrapper copyWith({
    int? success,
    List<dynamic>? error,
    Data? data,
  }) =>
      HomeResponseWrapper(
        success: success ?? _success,
        error: error ?? _error,
        data: data ?? _data,
      );
  int? get success => _success;
  List<dynamic>? get error => _error;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_error != null) {
      map['error'] = _error?.map((v) => v.toJson()).toList();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    Cart? cart,
    RecommendedProducts? recommendedProducts,
  }) {
    _cart = cart;
    _recommendedProducts = recommendedProducts;
  }

  Data.fromJson(dynamic json) {
    _cart = json['cart'] != null ? Cart.fromJson(json['cart']) : null;
    _recommendedProducts = json['recommended_products'] != null
        ? RecommendedProducts.fromJson(json['recommended_products'])
        : null;
  }
  Cart? _cart;
  RecommendedProducts? _recommendedProducts;
  Data copyWith({
    Cart? cart,
    RecommendedProducts? recommendedProducts,
  }) =>
      Data(
        cart: cart ?? _cart,
        recommendedProducts: recommendedProducts ?? _recommendedProducts,
      );
  Cart? get cart => _cart;
  RecommendedProducts? get recommendedProducts => _recommendedProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_cart != null) {
      map['cart'] = _cart?.toJson();
    }
    if (_recommendedProducts != null) {
      map['recommended_products'] = _recommendedProducts?.toJson();
    }
    return map;
  }
}

class RecommendedProducts {
  RecommendedProducts({
    List<ProductsRecommended>? productsRecommended,
    Ad? ad,
  }) {
    _productsRecommended = productsRecommended;
    _ad = ad;
  }

  RecommendedProducts.fromJson(dynamic json) {
    if (json['products_recommended'] != null) {
      _productsRecommended = [];
      json['products_recommended'].forEach((v) {
        _productsRecommended?.add(ProductsRecommended.fromJson(v));
      });
    }
    _ad = json['Ad'] != null ? Ad.fromJson(json['Ad']) : null;
  }
  List<ProductsRecommended>? _productsRecommended;
  Ad? _ad;
  RecommendedProducts copyWith({
    List<ProductsRecommended>? productsRecommended,
    Ad? ad,
  }) =>
      RecommendedProducts(
        productsRecommended: productsRecommended ?? _productsRecommended,
        ad: ad ?? _ad,
      );
  List<ProductsRecommended>? get productsRecommended => _productsRecommended;
  Ad? get ad => _ad;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_productsRecommended != null) {
      map['products_recommended'] =
          _productsRecommended?.map((v) => v.toJson()).toList();
    }
    if (_ad != null) {
      map['Ad'] = _ad?.toJson();
    }
    return map;
  }
}

class Ad {
  Ad({
    List<dynamic>? filters,
  }) {
    _filters = filters;
  }

  Ad.fromJson(dynamic json) {
    if (json['filters'] != null) {
      _filters = [];
      // json['filters'].forEach((v) {
      //   _filters?.add(Dynamic.fromJson(v));
      // });
    }
  }
  List<dynamic>? _filters;
  Ad copyWith({
    List<dynamic>? filters,
  }) =>
      Ad(
        filters: filters ?? _filters,
      );
  List<dynamic>? get filters => _filters;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_filters != null) {
      map['filters'] = _filters?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class ProductsRecommended {
  ProductsRecommended({
    String? id,
    String? thumb,
    String? priceFormated,
    String? priceWithoutCurrency,
    double? price,
    String? name,
    String? enName,
    String? description,
    String? sku,
    String? isbn,
    bool? hasOption,
    int? categoryId,
    int? quantity,
    List<dynamic>? special,
    String? manufacturer,
    bool? isNew,
    bool? isExclusive,
    int? order,
    dynamic score,
    String? eventPrice,
    double? rating,
    String? totalReviews,
    String? seoUrlAr,
    String? seoUrlEn,
    String? shareUrl,
    List<Options>? options,
    List<CategoryHierarchyRecommended>? categoryHierarchyRecommended,
  }) {
    _id = id;
    _thumb = thumb;
    _priceFormated = priceFormated;
    _priceWithoutCurrency = priceWithoutCurrency;
    _price = price;
    _name = name;
    _enName = enName;
    _description = description;
    _sku = sku;
    _isbn = isbn;
    _hasOption = hasOption;
    _categoryId = categoryId;
    _quantity = quantity;
    _special = special;
    _manufacturer = manufacturer;
    _isNew = isNew;
    _isExclusive = isExclusive;
    _order = order;
    _score = score;
    _eventPrice = eventPrice;
    _rating = rating;
    _totalReviews = totalReviews;
    _seoUrlAr = seoUrlAr;
    _seoUrlEn = seoUrlEn;
    _shareUrl = shareUrl;
    _options = options;
    _categoryHierarchyRecommended = categoryHierarchyRecommended;
  }

  ProductsRecommended.fromJson(dynamic json) {
    _id = json['id'];
    _thumb = json['thumb'];
    _priceFormated = json['price_formated'];
    _priceWithoutCurrency = json['priceWithoutCurrency'];
    _price = json['price'];
    _name = json['name'];
    _enName = json['en_name'];
    _description = json['description'];
    _sku = json['sku'];
    _isbn = json['isbn'];
    _hasOption = json['has_option'];
    _categoryId = json['category_id'];
    _quantity = json['quantity'];
    if (json['special'] != null) {
      _special = [];
      // json['special'].forEach((v) {
      //   _special?.add(Dynamic.fromJson(v));
      // });
    }
    _manufacturer = json['manufacturer'];
    _isNew = json['is_new'];
    _isExclusive = json['is_exclusive'];
    _order = json['order'];
    _score = json['score'];
    _eventPrice = json['event_price'];
    _rating = json['rating'];
    _totalReviews = json['total_reviews'];
    _seoUrlAr = json['seo_url_ar'];
    _seoUrlEn = json['seo_url_en'];
    _shareUrl = json['share_url'];
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(Options.fromJson(v));
      });
    }
    if (json['category_hierarchy_recommended'] != null) {
      _categoryHierarchyRecommended = [];
      json['category_hierarchy_recommended'].forEach((v) {
        _categoryHierarchyRecommended
            ?.add(CategoryHierarchyRecommended.fromJson(v));
      });
    }
  }
  String? _id;
  String? _thumb;
  String? _priceFormated;
  String? _priceWithoutCurrency;
  double? _price;
  String? _name;
  String? _enName;
  String? _description;
  String? _sku;
  String? _isbn;
  bool? _hasOption;
  int? _categoryId;
  int? _quantity;
  List<dynamic>? _special;
  String? _manufacturer;
  bool? _isNew;
  bool? _isExclusive;
  int? _order;
  dynamic _score;
  String? _eventPrice;
  double? _rating;
  String? _totalReviews;
  String? _seoUrlAr;
  String? _seoUrlEn;
  String? _shareUrl;
  List<Options>? _options;
  List<CategoryHierarchyRecommended>? _categoryHierarchyRecommended;
  ProductsRecommended copyWith({
    String? id,
    String? thumb,
    String? priceFormated,
    String? priceWithoutCurrency,
    double? price,
    String? name,
    String? enName,
    String? description,
    String? sku,
    String? isbn,
    bool? hasOption,
    int? categoryId,
    int? quantity,
    List<dynamic>? special,
    String? manufacturer,
    bool? isNew,
    bool? isExclusive,
    int? order,
    dynamic score,
    String? eventPrice,
    double? rating,
    String? totalReviews,
    String? seoUrlAr,
    String? seoUrlEn,
    String? shareUrl,
    List<Options>? options,
    List<CategoryHierarchyRecommended>? categoryHierarchyRecommended,
  }) =>
      ProductsRecommended(
        id: id ?? _id,
        thumb: thumb ?? _thumb,
        priceFormated: priceFormated ?? _priceFormated,
        priceWithoutCurrency: priceWithoutCurrency ?? _priceWithoutCurrency,
        price: price ?? _price,
        name: name ?? _name,
        enName: enName ?? _enName,
        description: description ?? _description,
        sku: sku ?? _sku,
        isbn: isbn ?? _isbn,
        hasOption: hasOption ?? _hasOption,
        categoryId: categoryId ?? _categoryId,
        quantity: quantity ?? _quantity,
        special: special ?? _special,
        manufacturer: manufacturer ?? _manufacturer,
        isNew: isNew ?? _isNew,
        isExclusive: isExclusive ?? _isExclusive,
        order: order ?? _order,
        score: score ?? _score,
        eventPrice: eventPrice ?? _eventPrice,
        rating: rating ?? _rating,
        totalReviews: totalReviews ?? _totalReviews,
        seoUrlAr: seoUrlAr ?? _seoUrlAr,
        seoUrlEn: seoUrlEn ?? _seoUrlEn,
        shareUrl: shareUrl ?? _shareUrl,
        options: options ?? _options,
        categoryHierarchyRecommended:
            categoryHierarchyRecommended ?? _categoryHierarchyRecommended,
      );
  String? get id => _id;
  String? get thumb => _thumb;
  String? get priceFormated => _priceFormated;
  String? get priceWithoutCurrency => _priceWithoutCurrency;
  double? get price => _price;
  String? get name => _name;
  String? get enName => _enName;
  String? get description => _description;
  String? get sku => _sku;
  String? get isbn => _isbn;
  bool? get hasOption => _hasOption;
  int? get categoryId => _categoryId;
  int? get quantity => _quantity;
  List<dynamic>? get special => _special;
  String? get manufacturer => _manufacturer;
  bool? get isNew => _isNew;
  bool? get isExclusive => _isExclusive;
  int? get order => _order;
  dynamic get score => _score;
  String? get eventPrice => _eventPrice;
  double? get rating => _rating;
  String? get totalReviews => _totalReviews;
  String? get seoUrlAr => _seoUrlAr;
  String? get seoUrlEn => _seoUrlEn;
  String? get shareUrl => _shareUrl;
  List<Options>? get options => _options;
  List<CategoryHierarchyRecommended>? get categoryHierarchyRecommended =>
      _categoryHierarchyRecommended;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['thumb'] = _thumb;
    map['price_formated'] = _priceFormated;
    map['priceWithoutCurrency'] = _priceWithoutCurrency;
    map['price'] = _price;
    map['name'] = _name;
    map['en_name'] = _enName;
    map['description'] = _description;
    map['sku'] = _sku;
    map['isbn'] = _isbn;
    map['has_option'] = _hasOption;
    map['category_id'] = _categoryId;
    map['quantity'] = _quantity;
    if (_special != null) {
      map['special'] = _special?.map((v) => v.toJson()).toList();
    }
    map['manufacturer'] = _manufacturer;
    map['is_new'] = _isNew;
    map['is_exclusive'] = _isExclusive;
    map['order'] = _order;
    map['score'] = _score;
    map['event_price'] = _eventPrice;
    map['rating'] = _rating;
    map['total_reviews'] = _totalReviews;
    map['seo_url_ar'] = _seoUrlAr;
    map['seo_url_en'] = _seoUrlEn;
    map['share_url'] = _shareUrl;
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    if (_categoryHierarchyRecommended != null) {
      map['category_hierarchy_recommended'] =
          _categoryHierarchyRecommended?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CategoryHierarchyRecommended {
  CategoryHierarchyRecommended({
    int? categoryId,
    String? name,
    String? enName,
  }) {
    _categoryId = categoryId;
    _name = name;
    _enName = enName;
  }

  CategoryHierarchyRecommended.fromJson(dynamic json) {
    _categoryId = json['category_id'];
    _name = json['name'];
    _enName = json['en_name'];
  }
  int? _categoryId;
  String? _name;
  String? _enName;
  CategoryHierarchyRecommended copyWith({
    int? categoryId,
    String? name,
    String? enName,
  }) =>
      CategoryHierarchyRecommended(
        categoryId: categoryId ?? _categoryId,
        name: name ?? _name,
        enName: enName ?? _enName,
      );
  int? get categoryId => _categoryId;
  String? get name => _name;
  String? get enName => _enName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = _categoryId;
    map['name'] = _name;
    map['en_name'] = _enName;
    return map;
  }
}

class Options {
  Options({
    int? optionId,
    int? productOptionId,
    String? type,
    int? required,
    String? name,
    String? enName,
    List<OptionValue>? optionValue,
  }) {
    _optionId = optionId;
    _productOptionId = productOptionId;
    _type = type;
    _required = required;
    _name = name;
    _enName = enName;
    _optionValue = optionValue;
  }

  Options.fromJson(dynamic json) {
    _optionId = json['option_id'];
    _productOptionId = json['product_option_id'];
    _type = json['type'];
    _required = json['required'];
    _name = json['name'];
    _enName = json['en_name'];
    if (json['option_value'] != null) {
      _optionValue = [];
      json['option_value'].forEach((v) {
        _optionValue?.add(OptionValue.fromJson(v));
      });
    }
  }
  int? _optionId;
  int? _productOptionId;
  String? _type;
  int? _required;
  String? _name;
  String? _enName;
  List<OptionValue>? _optionValue;
  Options copyWith({
    int? optionId,
    int? productOptionId,
    String? type,
    int? required,
    String? name,
    String? enName,
    List<OptionValue>? optionValue,
  }) =>
      Options(
        optionId: optionId ?? _optionId,
        productOptionId: productOptionId ?? _productOptionId,
        type: type ?? _type,
        required: required ?? _required,
        name: name ?? _name,
        enName: enName ?? _enName,
        optionValue: optionValue ?? _optionValue,
      );
  int? get optionId => _optionId;
  int? get productOptionId => _productOptionId;
  String? get type => _type;
  int? get required => _required;
  String? get name => _name;
  String? get enName => _enName;
  List<OptionValue>? get optionValue => _optionValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['option_id'] = _optionId;
    map['product_option_id'] = _productOptionId;
    map['type'] = _type;
    map['required'] = _required;
    map['name'] = _name;
    map['en_name'] = _enName;
    if (_optionValue != null) {
      map['option_value'] = _optionValue?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class OptionValue {
  OptionValue({
    int? productOptionVariantId,
    int? quantity,
    String? image,
    String? hexColor,
    String? sku,
    String? price,
    String? priceFormated,
    String? eventPrice,
    String? name,
    String? enName,
  }) {
    _productOptionVariantId = productOptionVariantId;
    _quantity = quantity;
    _image = image;
    _hexColor = hexColor;
    _sku = sku;
    _price = price;
    _priceFormated = priceFormated;
    _eventPrice = eventPrice;
    _name = name;
    _enName = enName;
  }

  OptionValue.fromJson(dynamic json) {
    _productOptionVariantId = json['product_option_variant_id'];
    _quantity = json['quantity'];
    _image = json['image'];
    _hexColor = json['hex_color'];
    _sku = json['sku'];
    _price = json['price'];
    _priceFormated = json['price_formated'];
    _eventPrice = json['event_price'];
    _name = json['name'];
    _enName = json['en_name'];
  }
  int? _productOptionVariantId;
  int? _quantity;
  String? _image;
  String? _hexColor;
  String? _sku;
  String? _price;
  String? _priceFormated;
  String? _eventPrice;
  String? _name;
  String? _enName;
  OptionValue copyWith({
    int? productOptionVariantId,
    int? quantity,
    String? image,
    String? hexColor,
    String? sku,
    String? price,
    String? priceFormated,
    String? eventPrice,
    String? name,
    String? enName,
  }) =>
      OptionValue(
        productOptionVariantId:
            productOptionVariantId ?? _productOptionVariantId,
        quantity: quantity ?? _quantity,
        image: image ?? _image,
        hexColor: hexColor ?? _hexColor,
        sku: sku ?? _sku,
        price: price ?? _price,
        priceFormated: priceFormated ?? _priceFormated,
        eventPrice: eventPrice ?? _eventPrice,
        name: name ?? _name,
        enName: enName ?? _enName,
      );
  int? get productOptionVariantId => _productOptionVariantId;
  int? get quantity => _quantity;
  String? get image => _image;
  String? get hexColor => _hexColor;
  String? get sku => _sku;
  String? get price => _price;
  String? get priceFormated => _priceFormated;
  String? get eventPrice => _eventPrice;
  String? get name => _name;
  String? get enName => _enName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_option_variant_id'] = _productOptionVariantId;
    map['quantity'] = _quantity;
    map['image'] = _image;
    map['hex_color'] = _hexColor;
    map['sku'] = _sku;
    map['price'] = _price;
    map['price_formated'] = _priceFormated;
    map['event_price'] = _eventPrice;
    map['name'] = _name;
    map['en_name'] = _enName;
    return map;
  }
}

class Cart {
  Cart({
    List<Products>? products,
    List<dynamic>? vouchers,
    String? couponStatus,
    String? coupon,
    dynamic voucherStatus,
    String? voucher,
    int? rewardStatus,
    String? reward,
    List<Totals>? totals,
    String? offer,
    int? offerAverage,
    String? total,
    double? totalRaw,
    int? totalProductCount,
  }) {
    _products = products;
    _vouchers = vouchers;
    _couponStatus = couponStatus;
    _coupon = coupon;
    _voucherStatus = voucherStatus;
    _voucher = voucher;
    _rewardStatus = rewardStatus;
    _reward = reward;
    _totals = totals;
    _offer = offer;
    _offerAverage = offerAverage;
    _total = total;
    _totalRaw = totalRaw;
    _totalProductCount = totalProductCount;
  }

  Cart.fromJson(dynamic json) {
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    if (json['vouchers'] != null) {
      _vouchers = [];
      // json['vouchers'].forEach((v) {
      //   _vouchers?.add(Dynamic.fromJson(v));
      // });
    }
    _couponStatus = json['coupon_status'];
    _coupon = json['coupon'];
    _voucherStatus = json['voucher_status'];
    _voucher = json['voucher'];
    _rewardStatus = json['reward_status'];
    _reward = json['reward'];
    if (json['totals'] != null) {
      _totals = [];
      json['totals'].forEach((v) {
        _totals?.add(Totals.fromJson(v));
      });
    }
    _offer = json['offer'];
    _offerAverage = json['offer_average'];
    _total = json['total'];
    _totalRaw = json['total_raw'];
    _totalProductCount = json['total_product_count'];
  }
  List<Products>? _products;
  List<dynamic>? _vouchers;
  String? _couponStatus;
  String? _coupon;
  dynamic _voucherStatus;
  String? _voucher;
  int? _rewardStatus;
  String? _reward;
  List<Totals>? _totals;
  String? _offer;
  int? _offerAverage;
  String? _total;
  double? _totalRaw;
  int? _totalProductCount;
  Cart copyWith({
    List<Products>? products,
    List<dynamic>? vouchers,
    String? couponStatus,
    String? coupon,
    dynamic voucherStatus,
    String? voucher,
    int? rewardStatus,
    String? reward,
    List<Totals>? totals,
    String? offer,
    int? offerAverage,
    String? total,
    double? totalRaw,
    int? totalProductCount,
  }) =>
      Cart(
        products: products ?? _products,
        vouchers: vouchers ?? _vouchers,
        couponStatus: couponStatus ?? _couponStatus,
        coupon: coupon ?? _coupon,
        voucherStatus: voucherStatus ?? _voucherStatus,
        voucher: voucher ?? _voucher,
        rewardStatus: rewardStatus ?? _rewardStatus,
        reward: reward ?? _reward,
        totals: totals ?? _totals,
        offer: offer ?? _offer,
        offerAverage: offerAverage ?? _offerAverage,
        total: total ?? _total,
        totalRaw: totalRaw ?? _totalRaw,
        totalProductCount: totalProductCount ?? _totalProductCount,
      );
  List<Products>? get products => _products;
  List<dynamic>? get vouchers => _vouchers;
  String? get couponStatus => _couponStatus;
  String? get coupon => _coupon;
  dynamic get voucherStatus => _voucherStatus;
  String? get voucher => _voucher;
  int? get rewardStatus => _rewardStatus;
  String? get reward => _reward;
  List<Totals>? get totals => _totals;
  String? get offer => _offer;
  int? get offerAverage => _offerAverage;
  String? get total => _total;
  double? get totalRaw => _totalRaw;
  int? get totalProductCount => _totalProductCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    if (_vouchers != null) {
      map['vouchers'] = _vouchers?.map((v) => v.toJson()).toList();
    }
    map['coupon_status'] = _couponStatus;
    map['coupon'] = _coupon;
    map['voucher_status'] = _voucherStatus;
    map['voucher'] = _voucher;
    map['reward_status'] = _rewardStatus;
    map['reward'] = _reward;
    if (_totals != null) {
      map['totals'] = _totals?.map((v) => v.toJson()).toList();
    }
    map['offer'] = _offer;
    map['offer_average'] = _offerAverage;
    map['total'] = _total;
    map['total_raw'] = _totalRaw;
    map['total_product_count'] = _totalProductCount;
    return map;
  }
}

class Totals {
  Totals({
    String? title,
    String? text,
    String? value,
    String? code,
  }) {
    _title = title;
    _text = text;
    _value = value;
    _code = code;
  }

  Totals.fromJson(dynamic json) {
    _title = json['title'];
    _text = json['text'];
    _value = json['value'];
    _code = json['code'];
  }
  String? _title;
  String? _text;
  String? _value;
  String? _code;
  Totals copyWith({
    String? title,
    String? text,
    String? value,
    String? code,
  }) =>
      Totals(
        title: title ?? _title,
        text: text ?? _text,
        value: value ?? _value,
        code: code ?? _code,
      );
  String? get title => _title;
  String? get text => _text;
  String? get value => _value;
  String? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['text'] = _text;
    map['value'] = _value;
    map['code'] = _code;
    return map;
  }
}

class Products {
  Products({
    String? key,
    String? thumb,
    String? name,
    String? productId,
    String? categoryId,
    String? manufacturerName,
    dynamic model,
    List<dynamic>? option,
    String? quantity,
    String? minimum,
    String? maximum,
    bool? stock,
    String? reward,
    int? priceNoTax,
    String? priceNoTaxFormatted,
    String? price,
    String? priceFormatted,
    String? total,
    String? totalFormatted,
    int? avaialbleQuantity,
    dynamic crossDiscount,
    String? enName,
    String? eventPrice,
    List<Special>? special,
    List<CategoryHierarchy>? categoryHierarchy,
  }) {
    _key = key;
    _thumb = thumb;
    _name = name;
    _productId = productId;
    _categoryId = categoryId;
    _manufacturerName = manufacturerName;
    _model = model;
    _option = option;
    _quantity = quantity;
    _minimum = minimum;
    _maximum = maximum;
    _stock = stock;
    _reward = reward;
    _priceNoTax = priceNoTax;
    _priceNoTaxFormatted = priceNoTaxFormatted;
    _price = price;
    _priceFormatted = priceFormatted;
    _total = total;
    _totalFormatted = totalFormatted;
    _avaialbleQuantity = avaialbleQuantity;
    _crossDiscount = crossDiscount;
    _enName = enName;
    _eventPrice = eventPrice;
    _special = special;
    _categoryHierarchy = categoryHierarchy;
  }

  Products.fromJson(dynamic json) {
    _key = json['key'];
    _thumb = json['thumb'];
    _name = json['name'];
    _productId = json['product_id'];
    _categoryId = json['category_id'];
    _manufacturerName = json['manufacturer_name'];
    _model = json['model'];
    if (json['option'] != null) {
      _option = [];
      // json['option'].forEach((v) {
      //   _option?.add(Dynamic.fromJson(v));
      // });
    }
    _quantity = json['quantity'];
    _minimum = json['minimum'];
    _maximum = json['maximum'];
    _stock = json['stock'];
    _reward = json['reward'];
    _priceNoTax = json['price_no_tax'];
    _priceNoTaxFormatted = json['price_no_tax_formatted'];
    _price = json['price'];
    _priceFormatted = json['price_formatted'];
    _total = json['total'];
    _totalFormatted = json['total_formatted'];
    _avaialbleQuantity = json['avaialble_quantity'];
    _crossDiscount = json['cross_discount'];
    _enName = json['en_name'];
    _eventPrice = json['event_price'];
    if (json['special'] != null) {
      _special = [];
      json['special'].forEach((v) {
        _special?.add(Special.fromJson(v));
      });
    }
    if (json['category_hierarchy'] != null) {
      _categoryHierarchy = [];
      json['category_hierarchy'].forEach((v) {
        _categoryHierarchy?.add(CategoryHierarchy.fromJson(v));
      });
    }
  }
  String? _key;
  String? _thumb;
  String? _name;
  String? _productId;
  String? _categoryId;
  String? _manufacturerName;
  dynamic _model;
  List<dynamic>? _option;
  String? _quantity;
  String? _minimum;
  String? _maximum;
  bool? _stock;
  String? _reward;
  int? _priceNoTax;
  String? _priceNoTaxFormatted;
  String? _price;
  String? _priceFormatted;
  String? _total;
  String? _totalFormatted;
  int? _avaialbleQuantity;
  dynamic _crossDiscount;
  String? _enName;
  String? _eventPrice;
  List<Special>? _special;
  List<CategoryHierarchy>? _categoryHierarchy;
  Products copyWith({
    String? key,
    String? thumb,
    String? name,
    String? productId,
    String? categoryId,
    String? manufacturerName,
    dynamic model,
    List<dynamic>? option,
    String? quantity,
    String? minimum,
    String? maximum,
    bool? stock,
    String? reward,
    int? priceNoTax,
    String? priceNoTaxFormatted,
    String? price,
    String? priceFormatted,
    String? total,
    String? totalFormatted,
    int? avaialbleQuantity,
    dynamic crossDiscount,
    String? enName,
    String? eventPrice,
    List<Special>? special,
    List<CategoryHierarchy>? categoryHierarchy,
  }) =>
      Products(
        key: key ?? _key,
        thumb: thumb ?? _thumb,
        name: name ?? _name,
        productId: productId ?? _productId,
        categoryId: categoryId ?? _categoryId,
        manufacturerName: manufacturerName ?? _manufacturerName,
        model: model ?? _model,
        option: option ?? _option,
        quantity: quantity ?? _quantity,
        minimum: minimum ?? _minimum,
        maximum: maximum ?? _maximum,
        stock: stock ?? _stock,
        reward: reward ?? _reward,
        priceNoTax: priceNoTax ?? _priceNoTax,
        priceNoTaxFormatted: priceNoTaxFormatted ?? _priceNoTaxFormatted,
        price: price ?? _price,
        priceFormatted: priceFormatted ?? _priceFormatted,
        total: total ?? _total,
        totalFormatted: totalFormatted ?? _totalFormatted,
        avaialbleQuantity: avaialbleQuantity ?? _avaialbleQuantity,
        crossDiscount: crossDiscount ?? _crossDiscount,
        enName: enName ?? _enName,
        eventPrice: eventPrice ?? _eventPrice,
        special: special ?? _special,
        categoryHierarchy: categoryHierarchy ?? _categoryHierarchy,
      );
  String? get key => _key;
  String? get thumb => _thumb;
  String? get name => _name;
  String? get productId => _productId;
  String? get categoryId => _categoryId;
  String? get manufacturerName => _manufacturerName;
  dynamic get model => _model;
  List<dynamic>? get option => _option;
  String? get quantity => _quantity;
  String? get minimum => _minimum;
  String? get maximum => _maximum;
  bool? get stock => _stock;
  String? get reward => _reward;
  int? get priceNoTax => _priceNoTax;
  String? get priceNoTaxFormatted => _priceNoTaxFormatted;
  String? get price => _price;
  String? get priceFormatted => _priceFormatted;
  String? get total => _total;
  String? get totalFormatted => _totalFormatted;
  int? get avaialbleQuantity => _avaialbleQuantity;
  dynamic get crossDiscount => _crossDiscount;
  String? get enName => _enName;
  String? get eventPrice => _eventPrice;
  List<Special>? get special => _special;
  List<CategoryHierarchy>? get categoryHierarchy => _categoryHierarchy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['thumb'] = _thumb;
    map['name'] = _name;
    map['product_id'] = _productId;
    map['category_id'] = _categoryId;
    map['manufacturer_name'] = _manufacturerName;
    map['model'] = _model;
    if (_option != null) {
      map['option'] = _option?.map((v) => v.toJson()).toList();
    }
    map['quantity'] = _quantity;
    map['minimum'] = _minimum;
    map['maximum'] = _maximum;
    map['stock'] = _stock;
    map['reward'] = _reward;
    map['price_no_tax'] = _priceNoTax;
    map['price_no_tax_formatted'] = _priceNoTaxFormatted;
    map['price'] = _price;
    map['price_formatted'] = _priceFormatted;
    map['total'] = _total;
    map['total_formatted'] = _totalFormatted;
    map['avaialble_quantity'] = _avaialbleQuantity;
    map['cross_discount'] = _crossDiscount;
    map['en_name'] = _enName;
    map['event_price'] = _eventPrice;
    if (_special != null) {
      map['special'] = _special?.map((v) => v.toJson()).toList();
    }
    if (_categoryHierarchy != null) {
      map['category_hierarchy'] =
          _categoryHierarchy?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CategoryHierarchy {
  CategoryHierarchy({
    String? categoryId,
    String? name,
    String? enName,
  }) {
    _categoryId = categoryId;
    _name = name;
    _enName = enName;
  }

  CategoryHierarchy.fromJson(dynamic json) {
    _categoryId = json['category_id'];
    _name = json['name'];
    _enName = json['en_name'];
  }
  String? _categoryId;
  String? _name;
  String? _enName;
  CategoryHierarchy copyWith({
    String? categoryId,
    String? name,
    String? enName,
  }) =>
      CategoryHierarchy(
        categoryId: categoryId ?? _categoryId,
        name: name ?? _name,
        enName: enName ?? _enName,
      );
  String? get categoryId => _categoryId;
  String? get name => _name;
  String? get enName => _enName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = _categoryId;
    map['name'] = _name;
    map['en_name'] = _enName;
    return map;
  }
}

class Special {
  Special({
    String? discountRatio,
    String? originalPrice,
    String? priceFormated,
    double? originalPriceWithoutCurrency,
    double? priceWithoutCurrency,
  }) {
    _discountRatio = discountRatio;
    _originalPrice = originalPrice;
    _priceFormated = priceFormated;
    _originalPriceWithoutCurrency = originalPriceWithoutCurrency;
    _priceWithoutCurrency = priceWithoutCurrency;
  }

  Special.fromJson(dynamic json) {
    _discountRatio = json['discount_ratio'];
    _originalPrice = json['original_price'];
    _priceFormated = json['price_formated'];
    _originalPriceWithoutCurrency = json['originalPriceWithoutCurrency'];
    _priceWithoutCurrency = json['priceWithoutCurrency'];
  }
  String? _discountRatio;
  String? _originalPrice;
  String? _priceFormated;
  double? _originalPriceWithoutCurrency;
  double? _priceWithoutCurrency;
  Special copyWith({
    String? discountRatio,
    String? originalPrice,
    String? priceFormated,
    double? originalPriceWithoutCurrency,
    double? priceWithoutCurrency,
  }) =>
      Special(
        discountRatio: discountRatio ?? _discountRatio,
        originalPrice: originalPrice ?? _originalPrice,
        priceFormated: priceFormated ?? _priceFormated,
        originalPriceWithoutCurrency:
            originalPriceWithoutCurrency ?? _originalPriceWithoutCurrency,
        priceWithoutCurrency: priceWithoutCurrency ?? _priceWithoutCurrency,
      );
  String? get discountRatio => _discountRatio;
  String? get originalPrice => _originalPrice;
  String? get priceFormated => _priceFormated;
  double? get originalPriceWithoutCurrency => _originalPriceWithoutCurrency;
  double? get priceWithoutCurrency => _priceWithoutCurrency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discount_ratio'] = _discountRatio;
    map['original_price'] = _originalPrice;
    map['price_formated'] = _priceFormated;
    map['originalPriceWithoutCurrency'] = _originalPriceWithoutCurrency;
    map['priceWithoutCurrency'] = _priceWithoutCurrency;
    return map;
  }
}
