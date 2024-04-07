// Package imports:
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';

// Project imports:
import '../../constants/material_design/k_colors.dart';
import '../../constants/material_design/k_fonts.dart';
import '../../constants/material_design/k_icons.dart';
import '../../constants/material_design/k_images.dart';
import '../../constants/material_design/k_keys.dart';
import '../../constants/material_design/k_text.dart';
import '../../constants/server/caching_services.dart';
import '../../utils/routes/router.dart';
import '../database/database_configuration.dart';
import '../database/database_queries.dart';

CachingServices box = GetIt.instance.get<CachingServices>();
KColors color = GetIt.instance.get<KColors>();
AppRouter router = GetIt.instance.get<AppRouter>();
KFonts fonts = GetIt.instance.get<KFonts>();
KIcons icons = GetIt.instance.get<KIcons>();
KKeys keys = GetIt.instance.get<KKeys>();
KImages images = GetIt.instance.get<KImages>();
KText texts = GetIt.instance.get<KText>();
ConfigurationDatabase database = GetIt.instance.get<ConfigurationDatabase>();
DatabaseQueries query = GetIt.instance.get<DatabaseQueries>();



/// Screen size methods
double height(double newHeight) {
  double finalHeight = (newHeight * 100) / 932;
  return finalHeight.h;
}

double width(double newWidth) {
  double finalWidth = (newWidth * 100) / 430;
  return finalWidth.w;
}



