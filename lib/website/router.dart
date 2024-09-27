import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lovish_enterprises/website/modules/Screens/About.dart';
import 'package:lovish_enterprises/website/modules/Screens/Contact.dart';
import 'package:lovish_enterprises/website/modules/Screens/Enquiry.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/AllCategories.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/bio_models.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/biology.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/daily_equipments.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/engg_lab_instruments.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/hospital_equipments.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/lab_equipment.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/lab_glass.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/lab_plastic.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/microscope.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/physics.dart';
import 'package:lovish_enterprises/website/modules/Screens/categories/categories_types/surgical_instruments.dart';
import 'package:lovish_enterprises/website/modules/Screens/search.dart';
import 'package:lovish_enterprises/website/modules/Screens/wishlist.dart';
import 'package:lovish_enterprises/website/modules/auth/login.dart';
import 'package:lovish_enterprises/website/modules/auth/signup.dart';
import 'modules/Screens/Homeview.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: RouteKey.home, routes: [
    GoRoute(
      path: RouteKey.home,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: RouteKey.about,
      builder: (context, state) => const About(),
    ),
    GoRoute(
      path: RouteKey.enquiry,
      builder: (context, state) => const Enquiry(),
    ),
    GoRoute(
      path: RouteKey.contact,
      builder: (context, state) => const Contact(),
    ),
    GoRoute(
      path: RouteKey.search,
      builder: (context, state) => const Search(),
    ),
    GoRoute(
      path: RouteKey.login,
      builder: (context, state) => showAlertDialogLogin(context),
    ),
    GoRoute(
      path: RouteKey.sign,
      builder: (context, state) => showAlertDialogSign(context),
    ),
    GoRoute(
      path: RouteKey.wish,
      builder: (context, state) => const Wishlist(),
    ),
    GoRoute(
      path: RouteKey.product,
      builder: (context, state) => const AllProducts(),
    ),
    GoRoute(
      path: RouteKey.dailyequipment,
      builder: (context, state) => const DailyEquipmentView(),
    ),
    GoRoute(
      path: RouteKey.physics,
      builder: (context, state) => const PhysicsView(),
    ),
    GoRoute(
        path: RouteKey.biology,
        builder: (context, state) => const BiologyView()),
    GoRoute(
      path: RouteKey.plasticware,
      builder: (context, state) => const LabPlasticWareView(),
    ),
    GoRoute(
      path: RouteKey.glassware,
      builder: (context, state) => const LabGlassWareView(),
    ),
    GoRoute(
      path: RouteKey.labequipment,
      builder: (context, state) => const LabEquipmentView(),
    ),
    GoRoute(
      path: RouteKey.microscope,
      builder: (context, state) => const MicroscopeView(),
    ),
    GoRoute(
      path: RouteKey.biomodels,
      builder: (context, state) => const BioModelsView(),
    ),
    GoRoute(
      path: RouteKey.engglab,
      builder: (context, state) => const EnggLabEquipmentsView(),
    ),
    GoRoute(
      path: RouteKey.hospitalinstruments,
      builder: (context, state) => const HospitalFurnitureView(),
    ),
    GoRoute(
      path: RouteKey.surgicalinstruments,
      builder: (context, state) => const SurgicalInstrumentsView(),
    ),
  ]);
});

class RouteKey {
  static const String home = '/';
  static const String about = '/about';
  static const String product = '/product';
  static const String enquiry = '/enquiry';
  static const String contact = '/contact';
  static const String search = '/search';
  static const String login = '/login';
  static const String sign = '/sign';
  static const String wish = '/wishlist';

  // Product Items
  static const String dailyequipment = '/dailyequipment';
  static const String physics = '/physics';
  static const String biology = '/biology';
  static const String plasticware = '/plasticware';
  static const String glassware = '/glassware';
  static const String labequipment = '/labequipment';
  static const String microscope = '/microscope';
  static const String biomodels = '/biomodels';
  static const String engglab = '/engglab';
  static const String hospitalinstruments = '/hospitalinstruments';
  static const String surgicalinstruments = '/surgicalinstruments';
}
