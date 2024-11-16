import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'zh_Hans', 'ru'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? zh_HansText = '',
    String? ruText = '',
  }) =>
      [enText, zh_HansText, ruText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // GuidePage
  {
    'd4f9bkmo': {
      'en': 'Jetlins',
      'ru': 'Jetlins',
      'zh_Hans': 'Jetlins',
    },
    'k7rhvibv': {
      'en': 'Ship your package to our warehouse',
      'ru': 'Отправьте вашу посылку на наш склад',
      'zh_Hans': '将您的包裹运送到我们的仓库',
    },
    'pp0zogfu': {
      'en': 'Easily monitor package info and location status',
      'ru':
          'Легко отслеживайте информацию о посылке и статус ее местонахождения',
      'zh_Hans': '轻松监控包裹信息和位置状态',
    },
    '3jjn6jx4': {
      'en': 'Pack and and distribute to your address',
      'ru': 'Упакуйте и отправьте по вашему адресу',
      'zh_Hans': '包装并分发到您的地址',
    },
    't79znukb': {
      'en': 'Accept your package right to your doors',
      'ru': 'Принимайте вашу посылку прямо к вашей двери',
      'zh_Hans': '直接将包裹送到您家门口',
    },
    'fhtmz1u6': {
      'en': 'Log in',
      'ru': 'Войти',
      'zh_Hans': '登录',
    },
    'ohqf308y': {
      'en': 'Get access',
      'ru': 'Получить доступ',
      'zh_Hans': '获取访问权限',
    },
    'ofu7x35f': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // LoginPage
  {
    'g9kssqjf': {
      'en': 'Jetlins',
      'ru': 'Jetlins',
      'zh_Hans': 'Jetlins',
    },
    'ycvr09f9': {
      'en': 'Your email',
      'ru': 'Ваш адрес электронной почты',
      'zh_Hans': '您的电子邮件地址',
    },
    'xb23o7c6': {
      'en': 'Your password',
      'ru': 'Ваш пароль',
      'zh_Hans': '您的密码',
    },
    'em4o3lw6': {
      'en': 'Log in',
      'ru': 'Войти',
      'zh_Hans': '登录',
    },
    'ef7p5gf2': {
      'en': 'Get access',
      'ru': 'Получить доступ',
      'zh_Hans': '获取访问权限',
    },
    '9ipx42te': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // GetAccessPage
  {
    '1w9r5zz5': {
      'en': 'Main information',
      'ru': 'Основная информация',
      'zh_Hans': '主要信息',
    },
    '0r5rfix2': {
      'en': 'Full name',
      'ru': 'Полное имя',
      'zh_Hans': '姓名',
    },
    '0sb6pqhq': {
      'en': 'Phone',
      'ru': 'Телефон',
      'zh_Hans': '电话',
    },
    'moz5crbb': {
      'en': 'Email',
      'ru': 'Электронная почта',
      'zh_Hans': '电子邮件',
    },
    'q1u4tvs2': {
      'en': 'Postal code',
      'ru': 'Почтовый индекс',
      'zh_Hans': '邮政编码',
    },
    '7vf0m1b3': {
      'en': 'Package information',
      'ru': 'Информация о посылке',
      'zh_Hans': '包裹信息',
    },
    '39v9vsvt': {
      'en': 'Volume',
      'ru': 'Объем',
      'zh_Hans': '体积',
    },
    'u4f2i7qk': {
      'en': 'Weight',
      'ru': 'Масса',
      'zh_Hans': '重量',
    },
    '0z93b7va': {
      'en': 'Submit',
      'ru': 'Представлять на рассмотрение',
      'zh_Hans': '提交',
    },
    'nck3lg0k': {
      'en': 'Get access',
      'ru': 'Получить доступ',
      'zh_Hans': '获取访问权限',
    },
    '10jzpiwy': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // MainPage
  {
    '7rfhpi9h': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
    'qvjxhfem': {
      'en': 'Order',
      'ru': 'Заказ',
      'zh_Hans': '订单',
    },
    'rayhqpbb': {
      'en': 'Support',
      'ru': 'Поддерживать',
      'zh_Hans': '支持',
    },
    't273znpe': {
      'en': 'Profile',
      'ru': 'Профиль',
      'zh_Hans': '我的',
    },
    'jlvcv7yr': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // WarehouseLocationPage
  {
    '7bbt7ynv': {
      'en': 'Copy',
      'ru': 'Копировать',
      'zh_Hans': '复制',
    },
    'dbw07rc3': {
      'en': 'Share',
      'ru': 'Делиться',
      'zh_Hans': '分享',
    },
    'ahpxal1n': {
      'en': 'Warehouse location',
      'ru': 'Местоположение склада',
      'zh_Hans': '仓库地址',
    },
    'bsgciesm': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CalculatorPage
  {
    'ob6zwfxq': {
      'en': 'Weight',
      'ru': 'Вес',
      'zh_Hans': '重量',
    },
    'v3nat4rl': {
      'en': 'Volume',
      'ru': 'Объем',
      'zh_Hans': '体积',
    },
    'rht71v17': {
      'en': 'Picking type',
      'ru': 'Тип подбора',
      'zh_Hans': '打包类型',
    },
    'a2s00vhi': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    'krez0msx': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    'nt7pguxc': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    'jdp0dcfr': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'ebk0aoso': {
      'en': 'Product Category',
      'ru': 'Категория продукта',
      'zh_Hans': '产品类别',
    },
    'tk02ruut': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    '71wcjt5y': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    'qa4kd799': {
      'en': 'Laptop (15-18 days)',
      'ru': 'Ноутбук (15-18 дней)',
      'zh_Hans': '笔记本电脑（15-18天）',
    },
    'xiij32tk': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'rpwyor29': {
      'en': 'Total Sum',
      'ru': 'Общая сумма',
      'zh_Hans': '总和',
    },
    '69iz8kun': {
      'en': '313.1 \$',
      'ru': '313,1 \$',
      'zh_Hans': '313.1 美元',
    },
    'bjkhojv1': {
      'en': 'Weight rate per kg',
      'ru': 'Норма веса за кг',
      'zh_Hans': '每公斤重量费率',
    },
    '8lx5b2xm': {
      'en': '3.10 \$',
      'ru': '3.10 \$',
      'zh_Hans': '3.10 美元',
    },
    'z15k2byx': {
      'en': 'Weight rate total',
      'ru': 'Общий весовой коэффициент',
      'zh_Hans': '重量费率总计',
    },
    'k1iy76fz': {
      'en': '3.10 \$',
      'ru': '3.10 \$',
      'zh_Hans': '3.10 美元',
    },
    'kxa20c1g': {
      'en': 'Loading rate in your country',
      'ru': 'Скорость загрузки в вашей стране',
      'zh_Hans': '您所在国家/地区的装载率',
    },
    'i9wyjuoa': {
      'en': 'Calculator',
      'ru': 'Калькулятор',
      'zh_Hans': '计算器',
    },
    'm5o7gw6l': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // NotificationPage
  {
    'jli7gu1c': {
      'en': 'Update JL- 4443 Jone Doe status',
      'ru': 'Обновление статуса JL-4443 Jone Doe',
      'zh_Hans': '更新 JL- 4443 Jone Doe 状态',
    },
    'l0u5lbwd': {
      'en': 'JL-4443 just arrived at warehouse',
      'ru': 'JL-4443 только что прибыл на склад',
      'zh_Hans': 'JL-4443刚刚到仓库',
    },
    '76s05g79': {
      'en': '2024.09.16 13:20',
      'ru': '2024.09.16 13:20',
      'zh_Hans': '2024.09.16 13:20',
    },
    'cusjyuhq': {
      'en': 'Update JL- 4443 Jone Doe status',
      'ru': 'Обновление статуса JL-4443 Jone Doe',
      'zh_Hans': '更新 JL- 4443 Jone Doe 状态',
    },
    'v0vp5ihj': {
      'en': 'JL-4443 just arrived at warehouse',
      'ru': 'JL-4443 только что прибыл на склад',
      'zh_Hans': 'JL-4443刚刚到仓库',
    },
    'c3tnqf61': {
      'en': '2024.09.16 13:20',
      'ru': '2024.09.16 13:20',
      'zh_Hans': '2024.09.16 13:20',
    },
    '5k88piqn': {
      'en': 'Update JL- 4443 Jone Doe status',
      'ru': 'Обновление статуса JL-4443 Jone Doe',
      'zh_Hans': '更新 JL- 4443 Jone Doe 状态',
    },
    '5bbkxn89': {
      'en': 'JL-4443 just arrived at warehouse',
      'ru': 'JL-4443 только что прибыл на склад',
      'zh_Hans': 'JL-4443刚刚到仓库',
    },
    '06yygl4d': {
      'en': '2024.09.16 13:20',
      'ru': '2024.09.16 13:20',
      'zh_Hans': '2024.09.16 13:20',
    },
    '4yj1lp0e': {
      'en': 'Update JL- 4443 Jone Doe status',
      'ru': 'Обновление статуса JL-4443 Jone Doe',
      'zh_Hans': '更新 JL- 4443 Jone Doe 状态',
    },
    'zpc9mmkx': {
      'en': 'JL-4443 just arrived at warehouse',
      'ru': 'JL-4443 только что прибыл на склад',
      'zh_Hans': 'JL-4443刚刚到仓库',
    },
    '0sn3xz1p': {
      'en': '2024.09.16 13:20',
      'ru': '2024.09.16 13:20',
      'zh_Hans': '2024.09.16 13:20',
    },
    'cq273ee0': {
      'en': 'Notification',
      'ru': 'Уведомление',
      'zh_Hans': '通知',
    },
    'mybgccz1': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // RecentNewsPage
  {
    'octmilq4': {
      'en': 'Recent news',
      'ru': 'Последние новости',
      'zh_Hans': '最新资讯',
    },
    '8eit9q0w': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // BanlancePage
  {
    'wxs70g38': {
      'en': 'Total shipment',
      'ru': 'Общая отгрузка',
      'zh_Hans': '统计总发货量',
    },
    'zuhsrldm': {
      'en': 'Have arrived',
      'ru': 'Прибыли',
      'zh_Hans': '已到货',
    },
    'xkf6tg95': {
      'en': '23 \$',
      'ru': '23 \$',
      'zh_Hans': '23 美元',
    },
    'ukssewi3': {
      'en': 'Dispatcher\'s balance',
      'ru': 'Баланс диспетчера',
      'zh_Hans': '调度员余额',
    },
    'r1y9mu1r': {
      'en': '2304 \$',
      'ru': '2304 \$',
      'zh_Hans': '2304 美元',
    },
    'b5syltu8': {
      'en': 'Foreign Unloading Fee',
      'ru': 'Иностранная посадка',
      'zh_Hans': '国外卸货费',
    },
    'br3fp47u': {
      'en': 'Total Packaging Fee',
      'ru': 'Общая упаковка',
      'zh_Hans': '打包费总额',
    },
    'hfysvrh7': {
      'en': 'Shipping Profit',
      'ru': 'Прибыль от доставки',
      'zh_Hans': '发货的利润',
    },
    'pursfjwd': {
      'en': 'Arrival Profit',
      'ru': 'Прибыль прибытия',
      'zh_Hans': '到货的利润',
    },
    'm01973d6': {
      'en': '2304 \$',
      'ru': '2304 \$',
      'zh_Hans': '2304 美元',
    },
    'cksi5m5p': {
      'en': 'Agent Commission',
      'ru': 'агентская комиссия',
      'zh_Hans': '代理的总提成',
    },
    'wqif6x7b': {
      'en': 'account manager \ncommission',
      'ru': 'менеджер по работе с клиентами\nкомиссия',
      'zh_Hans': '客户经理 \n佣金',
    },
    'j2xyzblv': {
      'en': 'History',
      'ru': 'История',
      'zh_Hans': '历史',
    },
    'ispzhwlj': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    'ba2epd0k': {
      'en': 'Yearly',
      'ru': 'Ежегодно',
      'zh_Hans': '每年',
    },
    'pfix85dm': {
      'en': 'Yearly',
      'ru': 'Ежегодно',
      'zh_Hans': '每年',
    },
    '5l1l5x0h': {
      'en': 'Monthly',
      'ru': 'Ежемесячно',
      'zh_Hans': '每月',
    },
    'cjo13eyg': {
      'en': 'Weekly',
      'ru': 'Еженедельно',
      'zh_Hans': '每周',
    },
    'qkjbyeek': {
      'en': 'Select...',
      'ru': 'Выбирать...',
      'zh_Hans': '选择...',
    },
    'mqwyr3rk': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'ge9bfhbe': {
      'en': 'Banlance',
      'ru': 'Баланс',
      'zh_Hans': '余额',
    },
    't003hje0': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // BanlanceEditPage
  {
    'n8t6zpw0': {
      'en': 'Expenditure',
      'ru': 'Расходы',
      'zh_Hans': '支出',
    },
    'bko99w91': {
      'en': 'Income',
      'ru': 'Доход',
      'zh_Hans': '收入',
    },
    'vz38tcvc': {
      'en': 'Packaging code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'ndr8xto5': {
      'en': 'Option 1',
      'ru': 'Вариант 1',
      'zh_Hans': '选项 1',
    },
    '0zftm7z9': {
      'en': 'Option 2',
      'ru': 'Вариант 2',
      'zh_Hans': '选项 2',
    },
    '4kpu8o32': {
      'en': 'Option 3',
      'ru': 'Вариант 3',
      'zh_Hans': '选项 3',
    },
    'wqnovoey': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'owubuha8': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    'iz8bb0hu': {
      'en': 'Banlance',
      'ru': 'Банланс',
      'zh_Hans': '平衡',
    },
    'c1fcojn2': {
      'en': 'Save',
      'ru': 'Сохранить',
      'zh_Hans': '保存',
    },
    'tpqmj14p': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // OrderDetail
  {
    '0q46exoh': {
      'en': 'Package infomation',
      'ru': 'Информация о пакете',
      'zh_Hans': '包裹信息',
    },
    '3vtoo1jq': {
      'en': 'Package code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'kfctcfgk': {
      'en': 'Client phone number',
      'ru': 'Номер телефона клиента',
      'zh_Hans': '客户电话号码',
    },
    '6cu6vavg': {
      'en': 'Address',
      'ru': 'Адрес',
      'zh_Hans': '地址',
    },
    'rjxqzw9x': {
      'en': 'Product Category',
      'ru': 'Категория продукта',
      'zh_Hans': '产品类别',
    },
    'u3aytnwr': {
      'en': 'Package list',
      'ru': 'Список пакетов',
      'zh_Hans': '包裹列表',
    },
    'ms9931jy': {
      'en': 'Volume(m3)',
      'ru': 'Объем(м3)',
      'zh_Hans': '体积(m3)',
    },
    'deqfins3': {
      'en': 'Dimension(cm)',
      'ru': 'Размеры (см)',
      'zh_Hans': '尺寸(厘米)',
    },
    'i453n80w': {
      'en': 'Weight(kg)',
      'ru': 'Вес(кг)',
      'zh_Hans': '重量(公斤)',
    },
    'n64a28pc': {
      'en': 'Amount of places',
      'ru': 'Количество мест',
      'zh_Hans': '名额数量',
    },
    'b82qyd4o': {
      'en': 'Packaging Type',
      'ru': 'Тип упаковки',
      'zh_Hans': '包裹类型',
    },
    'mjjv5lmr': {
      'en': 'Option 1',
      'ru': 'Вариант 1',
      'zh_Hans': '选项 1',
    },
    '78imepji': {
      'en': 'Option 2',
      'ru': 'Вариант 2',
      'zh_Hans': '选项 2',
    },
    'rvacox7r': {
      'en': 'Option 3',
      'ru': 'Вариант 3',
      'zh_Hans': '选项 3',
    },
    '5q36rpcq': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    '5fbiw5k1': {
      'en': 'Subtotal',
      'ru': 'Промежуточный итог',
      'zh_Hans': '小计',
    },
    'u8zc7d14': {
      'en': 'Amount by kg',
      'ru': 'Количество в кг',
      'zh_Hans': '重量（公斤）',
    },
    'bx689zk7': {
      'en': 'Amount by weight',
      'ru': 'Количество по весу',
      'zh_Hans': '重量含量',
    },
    '2j81yl7n': {
      'en': 'Insurance',
      'ru': 'Страхование',
      'zh_Hans': '保险',
    },
    'm0cud40z': {
      'en': 'Package costs',
      'ru': 'Стоимость пакета',
      'zh_Hans': '包裹费用',
    },
    'pbzy2jxq': {
      'en': 'Load/unload costs',
      'ru': 'Расходы на погрузку/разгрузку',
      'zh_Hans': '装卸费用',
    },
    'xb0o5klb': {
      'en': 'Total Sum',
      'ru': 'Общая сумма',
      'zh_Hans': '总和',
    },
    '34b68ugu': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    '6tzvvtgj': {
      'en': 'TextField',
      'ru': 'Текстовое поле',
      'zh_Hans': '文本框',
    },
    '7ymja05v': {
      'en': 'Parcel already arrived at cargo.',
      'ru': 'Посылка уже прибыла в грузовой пункт.',
      'zh_Hans': '包裹已抵达货站。',
    },
    '6tiy4v9g': {
      'en': 'Gallery',
      'ru': 'Галерея',
      'zh_Hans': '画廊',
    },
    '6d2avfdq': {
      'en': 'OrderDetail',
      'ru': 'Подробности заказа',
      'zh_Hans': '订单详情',
    },
    'c9szrmes': {
      'en': 'Edit',
      'ru': 'Редактировать',
      'zh_Hans': '编辑',
    },
    'vrbsx52y': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateOrder
  {
    'zrhs17eo': {
      'en': 'Package code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'zpyr0l33': {
      'en': 'Client phone number',
      'ru': 'Номер телефона клиента',
      'zh_Hans': '客户电话号码',
    },
    'qwdaw7hv': {
      'en': 'Email',
      'ru': 'Электронная почта',
      'zh_Hans': '电子邮件',
    },
    'zgupirky': {
      'en': 'Address',
      'ru': 'Адрес',
      'zh_Hans': '地址',
    },
    'qr59qi6p': {
      'en': 'Package list',
      'ru': 'Список пакетов',
      'zh_Hans': '包裹列表',
    },
    'rhbk5it1': {
      'en': 'Volume(m3)',
      'ru': 'Объем(м3)',
      'zh_Hans': '体积(m3)',
    },
    'y4sci7hl': {
      'en': 'Dimension(cm)',
      'ru': 'Размеры (см)',
      'zh_Hans': '尺寸(厘米)',
    },
    'esgxi4l4': {
      'en': 'Weight(kg)',
      'ru': 'Вес(кг)',
      'zh_Hans': '重量(公斤)',
    },
    'gtr9hq9l': {
      'en': 'Amount of places',
      'ru': 'Количество мест',
      'zh_Hans': '名额数量',
    },
    'r3r4bvoq': {
      'en': 'Product Category',
      'ru': 'Категория продукта',
      'zh_Hans': '产品类别',
    },
    'whq2yxdv': {
      'en': 'Packaging Type',
      'ru': 'Тип упаковки',
      'zh_Hans': '包装类型',
    },
    'vvziz61l': {
      'en': 'Option 1',
      'ru': 'Вариант 1',
      'zh_Hans': '选项 1',
    },
    '2e63sel0': {
      'en': 'Option 2',
      'ru': 'Вариант 2',
      'zh_Hans': '选项 2',
    },
    '2f31wl06': {
      'en': 'Option 3',
      'ru': 'Вариант 3',
      'zh_Hans': '选项 3',
    },
    '8fsl52r4': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'zrksh3rc': {
      'en': 'Subtotal',
      'ru': 'Промежуточный итог',
      'zh_Hans': '小计',
    },
    '8dve3e9k': {
      'en': 'Amount by kg',
      'ru': 'Количество в кг',
      'zh_Hans': '重量（公斤）',
    },
    'dsjotz5v': {
      'en': 'Amount by weight',
      'ru': 'Количество по весу',
      'zh_Hans': '重量含量',
    },
    'wip1a7gi': {
      'en': 'Insurance',
      'ru': 'Страхование',
      'zh_Hans': '保险',
    },
    '0qvhhk0t': {
      'en': 'Package costs',
      'ru': 'Стоимость пакета',
      'zh_Hans': '套餐费用',
    },
    'ar1ixqxj': {
      'en': 'Load/unload costs',
      'ru': 'Расходы на погрузку/разгрузку',
      'zh_Hans': '装卸费用',
    },
    'z7li0due': {
      'en': 'Total Sum',
      'ru': 'Общая сумма',
      'zh_Hans': '总和',
    },
    '21dsqwlf': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    'p7tlgayk': {
      'en': 'TextField',
      'ru': 'Текстовое поле',
      'zh_Hans': '文本框',
    },
    '7hwqyns5': {
      'en': 'Gallery',
      'ru': 'Галерея',
      'zh_Hans': '画廊',
    },
    '0n8qfafl': {
      'en': 'Confirm and send',
      'ru': 'Подтвердить и отправить',
      'zh_Hans': '确认并发送',
    },
    'seyxx9yn': {
      'en': 'Save as draft',
      'ru': 'Сохранить как черновик',
      'zh_Hans': '保存为草稿',
    },
    's7c73swu': {
      'en': 'Create order',
      'ru': 'Создать заказ',
      'zh_Hans': '创建订单',
    },
    'zptg6bdx': {
      'en': 'Edit',
      'ru': 'Редактировать',
      'zh_Hans': '编辑',
    },
    '8jvctph0': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateUserPage
  {
    'zlccyumd': {
      'en': 'Packaging code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'd6xugim4': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '1lm7olmu': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'o4ju6cry': {
      'en': 'Full name',
      'ru': 'Полное имя',
      'zh_Hans': '姓名',
    },
    'vjiasc9i': {
      'en': 'Email',
      'ru': 'Электронная почта',
      'zh_Hans': '电子邮件',
    },
    'i2l2rhti': {
      'en': 'Phone',
      'ru': 'Телефон',
      'zh_Hans': '电话',
    },
    'cpcp0ty0': {
      'en': 'Postal code',
      'ru': 'Почтовый индекс',
      'zh_Hans': '邮政编码',
    },
    'o2vlbuil': {
      'en': 'Address',
      'ru': 'Адрес',
      'zh_Hans': '地址',
    },
    'zsz37uny': {
      'en': '*',
      'ru': '*',
      'zh_Hans': '*',
    },
    'shttduyw': {
      'en': 'Client ID',
      'ru': 'Идентификатор клиента',
      'zh_Hans': '客户端 ID',
    },
    '7zgemn0m': {
      'en': 'Customer Manager',
      'ru': 'Менеджер по клиентам',
      'zh_Hans': '客户经理',
    },
    'w5ulp612': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'x44qumgp': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '1yafnyza': {
      'en': 'Raise a price',
      'ru': 'Поднять цену',
      'zh_Hans': '提高价格',
    },
    'r3i3wxy3': {
      'en': 'Password',
      'ru': 'Пароль',
      'zh_Hans': '密码',
    },
    'n7svgjj1': {
      'en': 'Create user',
      'ru': 'Создать пользователя',
      'zh_Hans': '创建用户',
    },
    '6cg02l1m': {
      'en': 'Save',
      'ru': 'Сохранить',
      'zh_Hans': '保存',
    },
    'k9c89t6t': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // AllUserPage
  {
    '8sr1lasr': {
      'en': 'All user',
      'ru': 'Все пользователи',
      'zh_Hans': '所有用户',
    },
    'j1jehsmh': {
      'en': 'All',
      'ru': 'Админ',
      'zh_Hans': '管理员',
    },
    '5iwvr61e': {
      'en': 'Admin',
      'ru': 'Админ',
      'zh_Hans': '管理员',
    },
    '7zlq84el': {
      'en': 'Client',
      'ru': 'Клиент',
      'zh_Hans': '客户',
    },
    'qfdpjdwh': {
      'en': 'Manager',
      'ru': 'Менеджер',
      'zh_Hans': '经理',
    },
    'gnhvx8iq': {
      'en': 'Agent',
      'ru': 'Агент',
      'zh_Hans': '代理人/代理商',
    },
    'n5x6agf4': {
      'en': 'Dispatcher',
      'ru': 'Диспетчер',
      'zh_Hans': '调度员',
    },
    'yc2bdnio': {
      'en': 'JL-444 Joe Wilson',
      'ru': 'JL-444 Джо Уилсон',
      'zh_Hans': 'JL-444 乔·威尔逊',
    },
    'd8e2hhjc': {
      'en': 'Client｜Email:joewilson@gmail.com',
      'ru': 'Клиент｜Электронная почта:joewilson@gmail.com',
      'zh_Hans': '客户｜邮箱:joewilson@gmail.com',
    },
    'v78iqowa': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // UserInfoPage
  {
    'lwc4q2ze': {
      'en': 'Change photo',
      'ru': 'Изменить фото',
      'zh_Hans': '更改照片',
    },
    'x4sbszo8': {
      'en': 'Full name',
      'ru': 'Полное имя',
      'zh_Hans': '姓名',
    },
    'fjtqch6f': {
      'en': 'User category',
      'ru': 'Категория пользователя',
      'zh_Hans': '用户类别',
    },
    'ixmtwmie': {
      'en': 'Phone',
      'ru': 'Телефон',
      'zh_Hans': '电话',
    },
    '4pdk7y6d': {
      'en': 'Email',
      'ru': 'Электронная почта',
      'zh_Hans': '电子邮件',
    },
    'vbm2lbhp': {
      'en': 'Postal code',
      'ru': 'Почтовый индекс',
      'zh_Hans': '邮政编码',
    },
    't6weifr6': {
      'en': 'Client’s Agent ID',
      'ru': 'Идентификатор агента клиента',
      'zh_Hans': '客户的代理人 ID',
    },
    '7xpu2ldt': {
      'en': 'Client’s Manger ID',
      'ru': 'Идентификатор менеджера клиента',
      'zh_Hans': '客户经理 ID',
    },
    'x575m7yl': {
      'en': 'Password',
      'ru': 'Пароль',
      'zh_Hans': '密码',
    },
    '3pagm49d': {
      'en': 'JL-443 Joe Wilson',
      'ru': 'JL-443 Джо Уилсон',
      'zh_Hans': 'JL-443 乔·威尔逊',
    },
    'xhz1x37a': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // LoginUserInfoPage
  {
    'qpn1o0h0': {
      'en': 'JL-444 Joe Wilson',
      'ru': 'JL-444 Джо Уилсон',
      'zh_Hans': 'JL-444 乔·威尔逊',
    },
    '0xd8ltmx': {
      'en': 'Change photo',
      'ru': 'Изменить фото',
      'zh_Hans': '更改照片',
    },
    '47foshcv': {
      'en': 'Full name',
      'ru': 'Полное имя',
      'zh_Hans': '姓名',
    },
    '2dfx8q5y': {
      'en': 'User category',
      'ru': 'Категория пользователя',
      'zh_Hans': '用户类别',
    },
    'nv1ubcr6': {
      'en': 'Client',
      'ru': 'Клиент',
      'zh_Hans': '客户',
    },
    'ha0brsav': {
      'en': 'Phone',
      'ru': 'Телефон',
      'zh_Hans': '电话',
    },
    'ro3qdrnx': {
      'en': 'Email',
      'ru': 'Электронная почта',
      'zh_Hans': '电子邮件',
    },
    'fb6omj6j': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // EditUserFieldPage
  {
    '8rnp4ptt': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    '77nv59sl': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // GalleryPage
  {
    '612ce2ap': {
      'en': '2023.09.03',
      'ru': '2023.09.03',
      'zh_Hans': '2023.09.03',
    },
    'mr36558n': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'ghkdygij': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'odritarp': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '3k6wi14m': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '17eyn1rw': {
      'en': '2023.09.03',
      'ru': '2023.09.03',
      'zh_Hans': '2023.09.03',
    },
    'we6jkspb': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '4hxhgagg': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '5x6xmes7': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'f147ck9r': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'llli3jjg': {
      'en': '2023.09.03',
      'ru': '2023.09.03',
      'zh_Hans': '2023.09.03',
    },
    'ejcm4ccd': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '2ehlibmj': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'kmee3nuy': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    'wbpqta4k': {
      'en': '+12',
      'ru': '+12',
      'zh_Hans': '+12',
    },
    '18p1xiw6': {
      'en': 'Gallery',
      'ru': 'Галерея',
      'zh_Hans': '图库',
    },
    'musahjfk': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // SelectLanguagePage
  {
    'shppf62r': {
      'en': 'Select language',
      'ru': 'Выберите язык',
      'zh_Hans': '选择语言',
    },
    'pz64rzs7': {
      'en': '中文',
      'ru': '中文',
      'zh_Hans': '中文',
    },
    'o01ms4te': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'ox1u3eqs': {
      'en': 'English',
      'ru': 'English',
      'zh_Hans': 'English',
    },
    '6y3n8hrt': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'pb0b2sj1': {
      'en': 'Русский язык',
      'ru': 'Русский язык',
      'zh_Hans': 'Русский язык',
    },
    'cye2j2lj': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '405roocx': {
      'en': 'Select language',
      'ru': 'Выберите язык',
      'zh_Hans': '选择语言',
    },
    'pldn0vqs': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // AllOrderPage
  {
    'bit7i7o1': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    'eaxnvst3': {
      'en': 'On packaging',
      'ru': 'В упаковке',
      'zh_Hans': '打包中',
    },
    'l33d9rp5': {
      'en': 'On warehouse',
      'ru': 'На складе',
      'zh_Hans': '仓库中',
    },
    '1pwclrjg': {
      'en': 'All orders',
      'ru': 'Все заказы',
      'zh_Hans': '所有订单',
    },
    'z0ryb5qr': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CustomClearance
  {
    'gp0cmqu1': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    'te9csrde': {
      'en': 'Paid',
      'ru': 'Оплаченный',
      'zh_Hans': '有薪酬的',
    },
    'vlvxa43c': {
      'en': 'Unpaid',
      'ru': 'Неоплаченный',
      'zh_Hans': '未付',
    },
    '8cnlqbx0': {
      'en': 'Package code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'f8qsc4a1': {
      'en': 'JL-4443-0809-2',
      'ru': 'JL-4443-0809-2',
      'zh_Hans': 'JL-4443-0809-2',
    },
    'mlox0j15': {
      'en': 'Client code',
      'ru': 'Код клиента',
      'zh_Hans': '客户端代码',
    },
    'ur0r30lf': {
      'en': 'JL-4443-John wilson smiths',
      'ru': 'JL-4443-Джон Уилсон Смитс',
      'zh_Hans': 'JL-4443-约翰·威尔逊·史密斯',
    },
    '60o8qvj9': {
      'en': 'Company name',
      'ru': 'Название компании',
      'zh_Hans': '公司名称',
    },
    'apxk4qur': {
      'en': 'Re  Co',
      'ru': 'Ре Ко',
      'zh_Hans': '再钴',
    },
    '15q9cvva': {
      'en': 'Date',
      'ru': 'Дата',
      'zh_Hans': '日期',
    },
    'ukv2kqlq': {
      'en': '2024.08.12',
      'ru': '2024.08.12',
      'zh_Hans': '2024.08.12',
    },
    'ocefqc3u': {
      'en': 'Balance',
      'ru': 'Баланс',
      'zh_Hans': '平衡',
    },
    'buggg23q': {
      'en': '300 \$',
      'ru': '300 \$',
      'zh_Hans': '300 美元',
    },
    'ouzwqi2t': {
      'en': 'Status',
      'ru': 'Статус',
      'zh_Hans': '地位',
    },
    '41hpor5v': {
      'en': 'Paid',
      'ru': 'Оплаченный',
      'zh_Hans': '有薪酬的',
    },
    '1cym4x5w': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    '0dt2x5py': {
      'en': 'faflanfwfof,anfoanfoa,ajofejofna,anfoanfoae,we arenosd',
      'ru': 'faflanfwfof,anfoanfoa,ajofejofna,anfoanfoae,мы arenosd',
      'zh_Hans': 'faflanfwfof，anfoanfoa，ajofejofna，anfoanfoae，我们是',
    },
    'dae07jve': {
      'en': 'Package code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'xa47gxc1': {
      'en': 'JL-4443-0809-2',
      'ru': 'JL-4443-0809-2',
      'zh_Hans': 'JL-4443-0809-2',
    },
    '4iq0rkex': {
      'en': 'Client code',
      'ru': 'Код клиента',
      'zh_Hans': '客户端代码',
    },
    'jydmbt5o': {
      'en': 'JL-4443-John wilson smiths',
      'ru': 'JL-4443-Джон Уилсон Смитс',
      'zh_Hans': 'JL-4443-约翰·威尔逊·史密斯',
    },
    'p7c5nyaw': {
      'en': 'Company name',
      'ru': 'Название компании',
      'zh_Hans': '公司名称',
    },
    'ukoqt6m1': {
      'en': 'Re  Co',
      'ru': 'Ре Ко',
      'zh_Hans': '再钴',
    },
    'fxkrmft5': {
      'en': 'Date',
      'ru': 'Дата',
      'zh_Hans': '日期',
    },
    'qvvqq4p5': {
      'en': '2024.08.12',
      'ru': '2024.08.12',
      'zh_Hans': '2024.08.12',
    },
    'r3e4dvv0': {
      'en': 'Balance',
      'ru': 'Баланс',
      'zh_Hans': '余额',
    },
    'rh6f20rs': {
      'en': '300 \$',
      'ru': '300 \$',
      'zh_Hans': '300 美元',
    },
    'wppfq48s': {
      'en': 'Status',
      'ru': 'Статус',
      'zh_Hans': '状态',
    },
    '6brzml70': {
      'en': 'Paid',
      'ru': 'Оплаченный',
      'zh_Hans': '已支付',
    },
    'bzzq1972': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    'j893u2im': {
      'en': 'faflanfwfof,anfoanfoa,ajofejofna,anfoanfoae,we arenosd',
      'ru': 'faflanfwfof,anfoanfoa,ajofejofna,anfoanfoae,мы arenosd',
      'zh_Hans': 'faflanfwfof，anfoanfoa，ajofejofna，anfoanfoae，我们是',
    },
    'poxzknld': {
      'en': 'Custom clearance',
      'ru': 'Таможенное оформление',
      'zh_Hans': '清关',
    },
    'qrewoc90': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateCustomClearance
  {
    'xols17kk': {
      'en': 'Custom clearance',
      'ru': 'Таможенное оформление',
      'zh_Hans': '清关',
    },
    'vtis151r': {
      'en': 'Save',
      'ru': 'Сохранить',
      'zh_Hans': '保存',
    },
    'vqk4potg': {
      'en': 'Company name',
      'ru': 'Название компании',
      'zh_Hans': '公司名称',
    },
    't6i2lhey': {
      'en': 'Package code',
      'ru': 'Код упаковки',
      'zh_Hans': '包裹代码',
    },
    'peoqg9yk': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'e1frfgoo': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '49hdofaj': {
      'en': 'Client code',
      'ru': 'Код клиента',
      'zh_Hans': '客户端代码',
    },
    'v4gvebv7': {
      'en': 'Date',
      'ru': 'Дата',
      'zh_Hans': '日期',
    },
    '5vij4efv': {
      'en': 'Balance',
      'ru': 'Баланс',
      'zh_Hans': '平衡',
    },
    'i57arirm': {
      'en': 'Status',
      'ru': 'Статус',
      'zh_Hans': '状态',
    },
    'p19fzpof': {
      'en': 'Paid',
      'ru': 'Оплаченный',
      'zh_Hans': '已支付',
    },
    'rbt3vpjb': {
      'en': 'Unpaid',
      'ru': 'Неоплаченный',
      'zh_Hans': '未支付',
    },
    'vgnuofa8': {
      'en': 'Comments',
      'ru': 'Комментарии',
      'zh_Hans': '评论',
    },
    'ny0ybpyz': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // SettingsPage
  {
    'okbtecz6': {
      'en': 'Calculator settings',
      'ru': 'Настройки калькулятора',
      'zh_Hans': '计算器设置',
    },
    'ukzgxnez': {
      'en': 'Exchange rate settings',
      'ru': 'Настройки обменного курса',
      'zh_Hans': '汇率设置',
    },
    'wbotdrlx': {
      'en': 'Wallet settings',
      'ru': 'Настройки кошелька',
      'zh_Hans': '钱包设置',
    },
    'acqxvo3p': {
      'en': 'Coupon settings',
      'ru': 'Настройки купона',
      'zh_Hans': '优惠券设置',
    },
    'it1ri7dz': {
      'en': 'Packing type settings',
      'ru': 'Настройки типа упаковки',
      'zh_Hans': '包装类型设置',
    },
    't002g02a': {
      'en': 'Warehouse location settings',
      'ru': 'Настройки местоположения склада',
      'zh_Hans': '仓库位置设置',
    },
    '6lf2v9kx': {
      'en': 'Gallery settings',
      'ru': 'Настройки галереи',
      'zh_Hans': '图库设置',
    },
    '5wm9ayhk': {
      'en': 'User permission settings',
      'ru': 'Настройки разрешений пользователя',
      'zh_Hans': '用户权限设置',
    },
    'afdxx57n': {
      'en': 'Notification settings',
      'ru': 'Настройки уведомлений',
      'zh_Hans': '通知设置',
    },
    'z8yyir4n': {
      'en': 'API’s settings',
      'ru': 'Настройки API',
      'zh_Hans': 'API 的设置',
    },
    'vl1ej259': {
      'en': 'Email settings',
      'ru': 'Настройки электронной почты',
      'zh_Hans': '电子邮件设置',
    },
    'zqhmqoam': {
      'en': 'Security settings',
      'ru': 'Настройки безопасности',
      'zh_Hans': '安全设置',
    },
    '2x49h5bg': {
      'en': 'Settings',
      'ru': 'Настройки',
      'zh_Hans': '设置',
    },
    'hglqtoee': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CalculatorSettingsPage
  {
    '4des3uzx': {
      'en': 'Clothes (15-18 delivery days)',
      'ru': 'Одежда (доставка 15-18 дней)',
      'zh_Hans': '衣服（15-18 个送货日）',
    },
    'rd66t4e7': {
      'en': 'Max price per 1kg : 300\$',
      'ru': 'Максимальная цена за 1 кг: 300\$',
      'zh_Hans': '每公斤最高价格：300 美元',
    },
    'a8y9cnr9': {
      'en': 'Calculator settings',
      'ru': 'Настройки калькулятора',
      'zh_Hans': '计算器设置',
    },
    '8g73dqbi': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateCalculatorSettingsPage
  {
    'i2kfkhzl': {
      'en': 'Product category name',
      'ru': 'Название категории продукта',
      'zh_Hans': '产品类别名称',
    },
    'hkgl2o37': {
      'en': 'Delivery time',
      'ru': 'Срок поставки',
      'zh_Hans': '交货时间',
    },
    'rbuq0yil': {
      'en': 'Insurance max limit',
      'ru': 'Максимальный лимит страхования',
      'zh_Hans': '保险最高限额',
    },
    'e38nrg47': {
      'en': 'Insurance by %',
      'ru': 'Страхование по %',
      'zh_Hans': '保险费占比',
    },
    '6deqmm8s': {
      'en': 'Insurance by density (kh/m3)',
      'ru': 'Страхование по плотности (кг/м3)',
      'zh_Hans': '按密度计算的保险费（kh/m3）',
    },
    'a3rm99c4': {
      'en': 'Calculator settings',
      'ru': 'Настройки калькулятора',
      'zh_Hans': '计算器设置',
    },
    'fgjp4jk2': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    '4n9jzu65': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // ExchangeRateSettingsPage
  {
    'i3olpzfr': {
      'en': 'Rate for RUB',
      'ru': 'Курс для руб.',
      'zh_Hans': '卢布汇率',
    },
    '3z4n37xv': {
      'en': '2024.08.09',
      'ru': '2024.08.09',
      'zh_Hans': '2024.08.09',
    },
    'd477bea3': {
      'en': 'Exchange rate settings',
      'ru': 'Настройки обменного курса',
      'zh_Hans': '汇率设置',
    },
    'ggnt5i0o': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateExchangRateSettingsPage
  {
    '5x04rnck': {
      'en': 'Rate name',
      'ru': 'Оценить имя',
      'zh_Hans': '费率名称',
    },
    'tf7gwn58': {
      'en': 'Choose date',
      'ru': 'Выберите дату',
      'zh_Hans': '选择日期',
    },
    'jelhlfle': {
      'en': 'Add rate and amount',
      'ru': 'Добавить ставку и сумму',
      'zh_Hans': '添加费率和金额',
    },
    'xdrashdq': {
      'en': 'Rate',
      'ru': 'Ставка',
      'zh_Hans': '速度',
    },
    '3uz4cr2i': {
      'en': 'Amount',
      'ru': 'Количество',
      'zh_Hans': '数量',
    },
    'ucjc8z4j': {
      'en': 'Exchange rate settings',
      'ru': 'Настройки обменного курса',
      'zh_Hans': '汇率设置',
    },
    'kj99k3xr': {
      'en': 'Save',
      'ru': 'Сохранить',
      'zh_Hans': '保存',
    },
    't2hetcjv': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // WalletSettingsPage
  {
    'enj9z9dc': {
      'en': 'Wallet settings',
      'ru': 'Настройки кошелька',
      'zh_Hans': '钱包设置',
    },
    'upc1k5kg': {
      'en': 'JL-444 Joe Wilson',
      'ru': 'JL-444 Джо Уилсон',
      'zh_Hans': 'JL-444 乔·威尔逊',
    },
    'ce2bnnq2': {
      'en': 'Client｜Email:joewilson@gmail.com',
      'ru': 'Клиент｜Электронная почта:joewilson@gmail.com',
      'zh_Hans': '客户｜邮箱:joewilson@gmail.com',
    },
    'f7jvb3xc': {
      'en': '-230 \$',
      'ru': '-230 \$',
      'zh_Hans': '-230 美元',
    },
    'qsf8j951': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // PreviewWalletPage
  {
    'rfd8atag': {
      'en': 'Wallet',
      'ru': 'Кошелек',
      'zh_Hans': '钱包',
    },
    '9z80tv1l': {
      'en': 'JL-444 Joe Wilson',
      'ru': 'JL-444 Джо Уилсон',
      'zh_Hans': 'JL-444 乔·威尔逊',
    },
    'uxgqvckr': {
      'en': 'Client｜Email: joewilson@gmail.com',
      'ru': 'Клиент｜Электронная почта: joewilson@gmail.com',
      'zh_Hans': '客户｜邮箱：joewilson@gmail.com',
    },
    'x0cqvv3m': {
      'en': '+ 230 \$',
      'ru': '+ 230 \$',
      'zh_Hans': '+ 230 美元',
    },
    '3lyjj101': {
      'en': 'Total balance',
      'ru': 'Фактический баланс',
      'zh_Hans': '总余额',
    },
    '90rblt19': {
      'en': '+ 230 \$',
      'ru': '+ 230 \$',
      'zh_Hans': '+ 230 美元',
    },
    'be1wtpqm': {
      'en': 'Actual balance',
      'ru': 'Фактический баланс',
      'zh_Hans': '实际余额',
    },
    '0hkr50s6': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    '15wsykvm': {
      'en': 'Yearly',
      'ru': 'Ежегодно',
      'zh_Hans': '每年',
    },
    '27afiix5': {
      'en': 'Yearly',
      'ru': 'Ежегодно',
      'zh_Hans': '每年',
    },
    'gff7u4cg': {
      'en': 'Monthly',
      'ru': 'Ежемесячно',
      'zh_Hans': '每月',
    },
    'oe7kf53j': {
      'en': 'Weekly',
      'ru': 'Еженедельно',
      'zh_Hans': '每周',
    },
    '7jg20rdq': {
      'en': 'Select...',
      'ru': 'Выбирать...',
      'zh_Hans': '选择...',
    },
    'wlawooed': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'r6e7ixza': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // PackagingTypeSettingsPage
  {
    'k67u8juh': {
      'en': 'Wood',
      'ru': 'Древесина',
      'zh_Hans': '木材',
    },
    'c88ph063': {
      'en': 'Packaging type settings',
      'ru': 'Настройки типа упаковки',
      'zh_Hans': '包装类型设置',
    },
    'y2oyyhfj': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreatePackagingTypeSettingsPage
  {
    'a15gp7s3': {
      'en': 'Packaging photo',
      'ru': 'Фото упаковки',
      'zh_Hans': '包装照片',
    },
    'fi3vq0az': {
      'en': 'Package name',
      'ru': 'Имя пакета',
      'zh_Hans': '包裹名称',
    },
    'k8u86ln8': {
      'en': 'Packaging type settings',
      'ru': 'Настройки типа упаковки',
      'zh_Hans': '包装类型设置',
    },
    'bxbpf6eo': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    'w42bpfz5': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CouponsettingsPage
  {
    'fvgww5c3': {
      'en': '🎄 Holiday Cheer Coupon 🎄',
      'ru': '🎄 Праздничный купон Cheer 🎄',
      'zh_Hans': '🎄 节日欢乐优惠券 🎄',
    },
    'oa6zypp8': {
      'en':
          'dear customer happy birthday, we made a small coupon gift for you, 30\$ please show this code #2024 to....',
      'ru':
          'Уважаемый клиент, с днем рождения! Мы сделали для вас небольшой подарочный купон на 30\$. Пожалуйста, покажите этот код #2024...',
      'zh_Hans': '亲爱的顾客生日快乐，我们为您制作了一份小优惠券礼物，30 美元请出示此代码#2024 至....',
    },
    'isppjr3k': {
      'en': 'Coupon settings',
      'ru': 'Настройки купона',
      'zh_Hans': '优惠券设置',
    },
    '8dkx0mo5': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateCouponsettingsPage
  {
    '3o5q7sk7': {
      'en': 'Coupon cover',
      'ru': 'Обложка купона',
      'zh_Hans': '优惠券封面',
    },
    'brksuuo9': {
      'en': 'Coupon name',
      'ru': 'Название купона',
      'zh_Hans': '优惠券名称',
    },
    '3l8rsoth': {
      'en': 'Coupon Description',
      'ru': 'Описание купона',
      'zh_Hans': '优惠券说明',
    },
    'k2qq5mpb': {
      'en': 'Amount USD',
      'ru': 'Сумма в долларах США',
      'zh_Hans': '金额 美元',
    },
    'utkbjwxd': {
      'en': 'User ID',
      'ru': 'ID пользователя',
      'zh_Hans': '用户身份',
    },
    'xthgthag': {
      'en': 'Add coupon',
      'ru': 'Добавить купон',
      'zh_Hans': '添加优惠券',
    },
    'gesxtukh': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    'eaedsmoc': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // UserPermissionSettingsPage
  {
    'njzs4n1v': {
      'en': 'Client',
      'ru': 'Клиент',
      'zh_Hans': '客户',
    },
    'ni3f0ot2': {
      'en': 'User permission settings',
      'ru': 'Настройки разрешений пользователя',
      'zh_Hans': '用户权限设置',
    },
    '7ihnpxic': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateUserPermissionSettingsPage
  {
    '4d4d0yvs': {
      'en': 'User category',
      'ru': 'Категория пользователя',
      'zh_Hans': '用户类别',
    },
    'vu1htmqw': {
      'en': 'Permission',
      'ru': 'Разрешение',
      'zh_Hans': '允许',
    },
    '6pcr4h4h': {
      'en': 'See calculator',
      'ru': 'Смотреть калькулятор',
      'zh_Hans': '查看计算器',
    },
    'csgcvtdb': {
      'en': 'See calculator',
      'ru': 'Смотреть калькулятор',
      'zh_Hans': '查看计算器',
    },
    'y6ikuyxg': {
      'en': 'See calculator',
      'ru': 'Смотреть калькулятор',
      'zh_Hans': '查看计算器',
    },
    '3dsb4zlb': {
      'en': 'User permission settings',
      'ru': 'Настройки разрешений пользователя',
      'zh_Hans': '用户权限设置',
    },
    '7r73861k': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    'h0iakcu6': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // WarehouseLocationSettingsPage
  {
    '4nthw1pu': {
      'en': '广州市白云区石门街石沙路石井工业区三横路1号G1 -102 .代码JL8888 \n陈生  123456788 ',
      'ru': '广州市白云区石门街石沙路石井工业区三横路1号G1 -102 .代码JL8888 \nТелефон: 123456788.',
      'zh_Hans': '广州市白云区石门街石沙路石井工业区三横路1号G1 -102 .代码JL8888 陈生 123456788',
    },
    '29ya4bxy': {
      'en': 'User permission settings',
      'ru': 'Настройки разрешений пользователя',
      'zh_Hans': '用户权限设置',
    },
    'ruxzo85s': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // CreateWarehouseLocationSettingsPage
  {
    'rncjznaj': {
      'en': 'Warehouse location',
      'ru': 'Расположение склада',
      'zh_Hans': '仓库位置',
    },
    '9q9w233p': {
      'en': 'Warehouse location settings',
      'ru': 'Настройки местоположения склада',
      'zh_Hans': '仓库位置设置',
    },
    'adpkn5it': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    'v8ti9k81': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // EmailSettingsPage
  {
    'd46d9vck': {
      'en': 'Email settings',
      'ru': 'Настройки электронной почты',
      'zh_Hans': '电子邮件设置',
    },
    'ixms57wn': {
      'en': 'Edit',
      'ru': 'Редактировать',
      'zh_Hans': '编辑',
    },
    'tphv7b5m': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // SecuritySettingsPage
  {
    'mqkyqlki': {
      'en': 'User login attempt aounts',
      'ru': 'Количество попыток входа пользователя в систему',
      'zh_Hans': '用户登录尝试次数',
    },
    'hcev3gzf': {
      'en': 'Login option',
      'ru': 'Вариант входа',
      'zh_Hans': '登录选项',
    },
    'vm56gdrz': {
      'en': 'Get access',
      'ru': 'Получить доступ',
      'zh_Hans': '获取访问权限',
    },
    'y54qq7qb': {
      'en': 'User login attempt aounts',
      'ru': 'Количество попыток входа пользователя в систему',
      'zh_Hans': '用户登录尝试次数',
    },
    'wymcp6sl': {
      'en': 'Security settings',
      'ru': 'Настройки безопасности',
      'zh_Hans': '安全设置',
    },
    'm7www5ku': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // HCaptchaPage
  {
    '4xj903nk': {
      'en': 'HCaptcha',
      'ru': 'HCaptcha',
      'zh_Hans': '验证码',
    },
    '6m5ia4kb': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    'yizm47br': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // UserLoginAttemptCountsPage
  {
    'brj5m1i0': {
      'en': 'HCaptcha',
      'ru': 'HCaptcha',
      'zh_Hans': '验证码',
    },
    'xs9gkxv9': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    '0x5h7ld3': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // NewsSettingsPage
  {
    'o05pemfw': {
      'en': 'News history',
      'ru': 'История новостей',
      'zh_Hans': '历史新闻',
    },
    'q114rdk9': {
      'en':
          'Dear customer,\nWe are pleased to inform you that your cargo with the tracking number [Tracking Number]...',
      'ru':
          'Уважаемый клиент,\nМы рады сообщить вам, что ваш груз с номером отслеживания [Tracking Number]...',
      'zh_Hans': '尊敬的客户，\n我们很高兴地通知您，您的货物跟踪号为 [跟踪号]...',
    },
    'gsiggymn': {
      'en': '2020.12.04 15:30',
      'ru': '2020.12.04 15:30',
      'zh_Hans': '2020.12.04 15:30',
    },
    'ul47lnak': {
      'en': 'News settings',
      'ru': 'Настройки новостей',
      'zh_Hans': '新闻设置',
    },
    'p91j541o': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // AddPhotosPage
  {
    'm7hid3ux': {
      'en': 'Add photos',
      'ru': 'Добавить фото',
      'zh_Hans': '添加照片',
    },
    'atwwhk9e': {
      'en': 'Save',
      'ru': 'Сохранять',
      'zh_Hans': '保存',
    },
    '8l1wv61a': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // HomePage
  {
    '28ecwdlu': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // OrderPage
  {
    'sn8jo94b': {
      'en': 'Orders',
      'ru': 'Заказы',
      'zh_Hans': '订单',
    },
    'mpazdgtt': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    'f3redik9': {
      'en': 'On packaging',
      'ru': 'На упаковке',
      'zh_Hans': '打包中',
    },
    'a2ejbh97': {
      'en': 'On warehouse',
      'ru': 'На складе',
      'zh_Hans': '仓库中',
    },
    'tvnsznia': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    '7y0dwk4a': {
      'en': 'Shipped',
      'ru': 'На упаковке',
      'zh_Hans': '已发货',
    },
    'uwb7be4y': {
      'en': 'Customs cleared',
      'ru': 'На складе',
      'zh_Hans': '清关完成',
    },
    'd013y7fy': {
      'en': 'Have arrived',
      'ru': 'На складе',
      'zh_Hans': '已到达',
    },
    'g6b0jx9d': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // ProfilePage
  {
    'yi3yppl9': {
      'en': 'Create user',
      'ru': 'Создать пользователя',
      'zh_Hans': '创建用户',
    },
    'zogt68mm': {
      'en': 'All user',
      'ru': 'Все пользователи',
      'zh_Hans': '所有用户',
    },
    'z6402k7q': {
      'en': 'General',
      'ru': 'Общий',
      'zh_Hans': '一般的',
    },
    'oxdb9uaa': {
      'en': 'Wallet',
      'ru': 'Кошелек',
      'zh_Hans': '钱包',
    },
    'y9zvgpdi': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'nto9xlvk': {
      'en': 'Gallery',
      'ru': 'Галерея',
      'zh_Hans': '图库',
    },
    'jwgot1ou': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'tlhoagq3': {
      'en': 'Settings',
      'ru': 'Настройки',
      'zh_Hans': '设置',
    },
    '37dam7vk': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '2g41q2ti': {
      'en': 'Languages',
      'ru': 'Языки',
      'zh_Hans': '语言',
    },
    'chbudvmy': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'srd4tpvc': {
      'en': 'Order management',
      'ru': 'Управление заказами',
      'zh_Hans': '订单管理',
    },
    '4q1uehnf': {
      'en': 'All orders',
      'ru': 'Все заказы',
      'zh_Hans': '所有订单',
    },
    '9150qw2i': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'qbn0sr4g': {
      'en': 'Coustom',
      'ru': 'Coustom',
      'zh_Hans': '清关',
    },
    's78pi6mu': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '1fbd7rqd': {
      'en': 'Notification & Support',
      'ru': 'Уведомление и поддержка',
      'zh_Hans': '通知与支持',
    },
    'nrutdryx': {
      'en': 'Notification',
      'ru': 'Уведомление',
      'zh_Hans': '通知',
    },
    'bcwb7duc': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'w5z4jcqx': {
      'en': 'Support',
      'ru': 'Поддерживать',
      'zh_Hans': '支持',
    },
    'jz9ke9ql': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '325f3ykj': {
      'en': 'Logout',
      'ru': 'Выйти',
      'zh_Hans': '登出',
    },
    'nnf59snl': {
      'en': 'Delete account',
      'ru': 'Удалить аккаунт',
      'zh_Hans': '删除帐户',
    },
    'zewbeout': {
      'en': 'Home',
      'ru': 'Главная',
      'zh_Hans': '首页',
    },
  },
  // LabelInput
  {
    'uuuhc08c': {
      'en': '*',
      'ru': '*',
      'zh_Hans': '*',
    },
  },
  // HomeHeader
  {
    'g758j94v': {
      'en': 'Jone Doe',
      'ru': 'Джон Доу',
      'zh_Hans': '琼斯·多伊',
    },
    'qit7o7dt': {
      'en': 'Admin',
      'ru': 'Админ',
      'zh_Hans': '管理员',
    },
  },
  // Steps
  {
    'nsmi26dh': {
      'en': 'Shipped',
      'ru': 'Отправлен',
      'zh_Hans': '已发货',
    },
    'sm8sti9m': {
      'en': 'Customs cleared',
      'ru': 'Прошли таможню',
      'zh_Hans': '清关完成',
    },
    'yplucg2m': {
      'en': 'Have arrived',
      'ru': 'Доставленный',
      'zh_Hans': '已到达',
    },
  },
  // OrderItem
  {
    'qy5fl3o1': {
      'en': 'JL-4443 Jone Doe',
      'ru': 'JL-4443 Джон Доу',
      'zh_Hans': 'JL-4443 琼斯·多伊',
    },
    '37q90i69': {
      'en': 'Clothes',
      'ru': 'Одежда',
      'zh_Hans': '衣服',
    },
    'w39f8gb4': {
      'en': '(12-14 days)',
      'ru': '(12-14 дней)',
      'zh_Hans': '(12-14天)',
    },
    'cmra40vp': {
      'en': 'Dep 2024.09.01',
      'ru': 'Деп 2024.09.01',
      'zh_Hans': '出发日期 2024.09.01',
    },
    '2myp0svw': {
      'en': 'Est 2024.08.20',
      'ru': 'Эст 2024.08.20',
      'zh_Hans': '预计 2024.08.20',
    },
    'uzwygc0e': {
      'en': 'JL-4443-0509-2 | 2024.08.08',
      'ru': 'JL-4443-0509-2 | 2024.08.08',
      'zh_Hans': 'JL-4443-0509-2 | 2024.08.08',
    },
    '6jlbymsz': {
      'en': 'Total sum: 790 \$',
      'ru': 'Общая сумма: 790 \$',
      'zh_Hans': '总金额：790 美元',
    },
  },
  // HomePageS
  {
    'kexujyoo': {
      'en': 'Warehouse \nLocation',
      'ru': 'Склад \nМестоположение',
      'zh_Hans': '仓库位置',
    },
    '1s32ijfv': {
      'en': 'Exchange\nrate',
      'ru': 'Обменный курс',
      'zh_Hans': '汇率',
    },
    'opfh0jr9': {
      'en': 'Calculate\nshipping fee',
      'ru': 'Рассчитать\nстоимость доставки',
      'zh_Hans': '费用计算',
    },
    '3i8abjs4': {
      'en': 'Recent\nnews',
      'ru': 'Последние\nновости',
      'zh_Hans': '最新资讯',
    },
    'v74unj4k': {
      'en': 'Balance',
      'ru': 'Баланс',
      'zh_Hans': '余额',
    },
    'l8b3tm7f': {
      'en': 'Recent orders',
      'ru': 'Последние заказы',
      'zh_Hans': '近期订单',
    },
    '4vd3nrab': {
      'en': 'See All',
      'ru': 'Смотреть все',
      'zh_Hans': '查看全部',
    },
  },
  // ExchangeRate
  {
    'p5yl58qk': {
      'en': 'Exchange rate',
      'ru': 'Обменный курс',
      'zh_Hans': '汇率',
    },
    'hfhzh962': {
      'en': 'RUB',
      'ru': 'руб.',
      'zh_Hans': '卢布',
    },
    '0qd0ekna': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    '6tt3ooez': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    'tcmf4xvw': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    '3aexajf0': {
      'en': 'USD',
      'ru': 'доллар США',
      'zh_Hans': '美元',
    },
    'g23yu0ls': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    'hcxl0c0a': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    '4xczf81n': {
      'en': '13.5 - 1000 to 3000 CNY',
      'ru': '13,5 - 1000 - 3000 юаней',
      'zh_Hans': '13.5 - 1000至3000元人民币',
    },
    'kap10grf': {
      'en': 'Convert',
      'ru': 'Конвертировать',
      'zh_Hans': '转变',
    },
    'izgs0kya': {
      'en': '0',
      'ru': '0',
      'zh_Hans': '0',
    },
    's0abmgw5': {
      'en': 'RUB',
      'ru': 'руб.',
      'zh_Hans': '卢布',
    },
    '1eg0o4fh': {
      'en': 'USD',
      'ru': 'доллар США',
      'zh_Hans': '美元',
    },
    'xdhvkk3a': {
      'en': 'Search...',
      'ru': 'Поиск...',
      'zh_Hans': '搜索...',
    },
    'i78zwry8': {
      'en': '0',
      'ru': '0',
      'zh_Hans': '0',
    },
    'vtun4gug': {
      'en': 'CNY',
      'ru': 'китайский юань',
      'zh_Hans': '人民币',
    },
  },
  // NewsItem
  {
    'ak2v5yhz': {
      'en':
          'Dear customer,\nWe are pleased to inform you that your cargo with the tracking number [Tracking...',
      'ru':
          'Уважаемый клиент,\nМы рады сообщить Вам, что Ваш груз с номером отслеживания [Отслеживание...',
      'zh_Hans': '尊敬的顾客，\n我们很高兴地通知您，您的货物跟踪号为 [跟踪...',
    },
    'oneykv74': {
      'en': '2024.12.04 15:30',
      'ru': '2024.12.04 15:30',
      'zh_Hans': '2024.12.04 15:30',
    },
  },
  // BanlanceStat
  {
    '9m1kdg4t': {
      'en': 'Total balance',
      'ru': 'Общий баланс',
      'zh_Hans': '总余额',
    },
    'nnbbz6xx': {
      'en': 'Total spendings',
      'ru': 'Общие расходы',
      'zh_Hans': '总支出',
    },
    'hjsrbj3m': {
      'en': 'Net profit',
      'ru': 'Чистая прибыль',
      'zh_Hans': '纯利',
    },
  },
  // BanlanceHistoryItem
  {
    '1alirzsw': {
      'en': 'JL-4443-0509-2',
      'ru': 'JL-4443-0509-2',
      'zh_Hans': 'JL-4443-0509-2',
    },
    'jf54gdfn': {
      'en': 'Show comments here show comments here, show comments...',
      'ru':
          'Показать комментарии здесь, показать комментарии здесь, показать комментарии...',
      'zh_Hans': '在此处显示评论在此处显示评论，显示评论...',
    },
    'hxbf1pi2': {
      'en': '2024.10.01 19:24',
      'ru': '2024.10.01 19:24',
      'zh_Hans': '2024.10.01 19:24',
    },
    '9fx64d9z': {
      'en': '+232 \$',
      'ru': '+232 \$',
      'zh_Hans': '+232 美元',
    },
    'vf0u840g': {
      'en': 'Income',
      'ru': 'Доход',
      'zh_Hans': '收入',
    },
  },
  // OrderPages
  {
    '8pzxtb11': {
      'en': 'Orders',
      'ru': 'Заказы',
      'zh_Hans': '订单',
    },
    'lypgk783': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    '6bleuizv': {
      'en': 'On packaging',
      'ru': 'На упаковке',
      'zh_Hans': '打包中',
    },
    'n97gtpu2': {
      'en': 'On warehouse',
      'ru': 'На складе',
      'zh_Hans': '仓库中',
    },
    'pft0f24f': {
      'en': 'All',
      'ru': 'Все',
      'zh_Hans': '全部',
    },
    'gzfe06s9': {
      'en': 'Shipped',
      'ru': 'На упаковке',
      'zh_Hans': '已发货',
    },
    'qzeo0wuw': {
      'en': 'Customs cleared',
      'ru': 'На складе',
      'zh_Hans': '清关完成',
    },
    'ywza3vvq': {
      'en': 'Have arrived',
      'ru': 'На складе',
      'zh_Hans': '已到达',
    },
  },
  // EditOrderBottomSheet
  {
    'eik87dq9': {
      'en': 'Shipping status',
      'ru': 'Статус доставки',
      'zh_Hans': '发货状态',
    },
    '74na6qez': {
      'en': 'Edit order',
      'ru': 'Изменить заказ',
      'zh_Hans': '编辑订单',
    },
  },
  // ShippingStatusBottomSheet
  {
    'cc9gpgot': {
      'en': 'Shipping status',
      'ru': 'Статус доставки',
      'zh_Hans': '运输状态',
    },
    'tljkucwx': {
      'en': 'On warehouse',
      'ru': 'На складе',
      'zh_Hans': '仓库中',
    },
    'tawt3za5': {
      'en': 'On packaging',
      'ru': 'На упаковке',
      'zh_Hans': '打包中',
    },
    'uccm4haz': {
      'en': 'On delivery',
      'ru': 'При доставке',
      'zh_Hans': '运输中',
    },
    'mv6clyrt': {
      'en': 'Delivered',
      'ru': 'Доставленный',
      'zh_Hans': '已交付',
    },
    'expc88hp': {
      'en': 'Canceled',
      'ru': 'Отменено',
      'zh_Hans': '已取消',
    },
  },
  // ProfilePages
  {
    'p2uxdcv5': {
      'en': 'Create user',
      'ru': 'Создать пользователя',
      'zh_Hans': '创建用户',
    },
    'ywh238gd': {
      'en': 'All user',
      'ru': 'Все пользователи',
      'zh_Hans': '所有用户',
    },
    'ma9w9r7l': {
      'en': 'General',
      'ru': 'Общий',
      'zh_Hans': '一般的',
    },
    'jrygut0o': {
      'en': 'Wallet',
      'ru': 'Кошелек',
      'zh_Hans': '钱包',
    },
    'g08h8doq': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'oy206w3z': {
      'en': 'Gallery',
      'ru': 'Галерея',
      'zh_Hans': '图库',
    },
    'hac8juy6': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'sulk05ix': {
      'en': 'Settings',
      'ru': 'Настройки',
      'zh_Hans': '设置',
    },
    '1ugpjmmw': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'jaxzjg0z': {
      'en': 'Languages',
      'ru': 'Языки',
      'zh_Hans': '语言',
    },
    'brja8thi': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '1eyq1fws': {
      'en': 'Order management',
      'ru': 'Управление заказами',
      'zh_Hans': '订单管理',
    },
    '2jhgnvia': {
      'en': 'All orders',
      'ru': 'Все заказы',
      'zh_Hans': '所有订单',
    },
    '0o2doujg': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'qopf31xu': {
      'en': 'Coustom',
      'ru': 'Coustom',
      'zh_Hans': '清关',
    },
    'rq42sug8': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'dz80pkhm': {
      'en': 'Notification & Support',
      'ru': 'Уведомление и поддержка',
      'zh_Hans': '通知与支持',
    },
    '4nds063f': {
      'en': 'Notification',
      'ru': 'Уведомление',
      'zh_Hans': '通知',
    },
    'f6vx0w88': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'cn8ya2q1': {
      'en': 'Support',
      'ru': 'Поддерживать',
      'zh_Hans': '支持',
    },
    'fwvqs8l3': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '3t109hct': {
      'en': 'Logout',
      'ru': 'Выйти',
      'zh_Hans': '登出',
    },
    'z2glhc5s': {
      'en': 'Delete account',
      'ru': 'Удалить аккаунт',
      'zh_Hans': '删除帐户',
    },
  },
  // LogoutBS
  {
    'omsids3x': {
      'en':
          'After logging out, you will not receive any notifications. Would you still like to log out?',
      'ru':
          'После выхода из системы вы не будете получать никаких уведомлений. Вы все равно хотите выйти из системы?',
      'zh_Hans': '退出后您将不会收到任何通知。您仍要退出吗？',
    },
    '1mafgyyy': {
      'en': 'Log Out',
      'ru': 'Выйти',
      'zh_Hans': '登出',
    },
    'hqmi4zdd': {
      'en': 'Cancel',
      'ru': 'Отмена',
      'zh_Hans': '取消',
    },
  },
  // DeleteAccountBS
  {
    '3xyug193': {
      'en': 'Are you sure you would like to delete account?',
      'ru': 'Вы уверены, что хотите удалить аккаунт?',
      'zh_Hans': '您确定要删除帐户吗？',
    },
    'axqghvg1': {
      'en': 'No',
      'ru': 'Нет',
      'zh_Hans': '不',
    },
    '2zgykgs3': {
      'en': 'Yes',
      'ru': 'Да',
      'zh_Hans': '是的',
    },
  },
  // Miscellaneous
  {
    '8cdu0us5': {
      'en': '',
      'ru':
          'Чтобы сделать снимок или снять видео, этому приложению требуется разрешение на доступ к камере.',
      'zh_Hans': '为了拍摄照片或视频，此应用程序需要获得访问相机的权限。',
    },
    '4grjqohx': {
      'en': '',
      'ru':
          'Для загрузки данных этому приложению требуется разрешение на доступ к библиотеке фотографий.',
      'zh_Hans': '为了上传数据，此应用程序需要访问照片库的权限。',
    },
    'sht7t5nd': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'kvri8izc': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'k2aqr11b': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'ygj46cxf': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '569d6c2e': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'xn0fnlrd': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '60l0m1ak': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '8xh1o65t': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'uu6zort7': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'yvysjd7v': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'n6xwqvw6': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'd4kojt24': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'r9ur72ok': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    '3gatre2j': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'nnla74ij': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'tt4s3ryb': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'cffq19sp': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'l9rooncl': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'aa4guy40': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'gk5kazfu': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'a2ylj6ea': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'ecl0qeoz': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'ypzx05hm': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'fmjvfmjp': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
    'uwpuf5x4': {
      'en': '',
      'ru': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));
