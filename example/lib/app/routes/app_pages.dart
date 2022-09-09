import 'package:get/get.dart';

import '../modules/add_case/bindings/add_case_binding.dart';
import '../modules/add_case/views/add_case_view.dart';
import '../modules/add_user/bindings/add_user_binding.dart';
import '../modules/add_user/views/add_user_view.dart';
import '../modules/case_list/bindings/case_list_binding.dart';
import '../modules/case_list/views/case_list_view.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/edit_user/bindings/edit_user_binding.dart';
import '../modules/edit_user/views/edit_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/import_case/bindings/import_case_binding.dart';
import '../modules/import_case/views/import_case_view.dart';
import '../modules/personal_info/bindings/personal_info_binding.dart';
import '../modules/personal_info/views/personal_info_view.dart';
import '../modules/report_template_detail/bindings/report_template_detail_binding.dart';
import '../modules/report_template_detail/views/report_template_detail_view.dart';
import '../modules/report_template_list/bindings/report_template_list_binding.dart';
import '../modules/report_template_list/views/report_template_list_view.dart';
import '../modules/select_case/bindings/select_case_binding.dart';
import '../modules/select_case/views/select_case_view.dart';
import '../modules/user_list/bindings/user_list_binding.dart';
import '../modules/user_list/views/user_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CASE_LIST,
      page: () => const CaseListView(),
      binding: CaseListBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CASE,
      page: () => const AddCaseView(),
      binding: AddCaseBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_INFO,
      page: () => const PersonalInfoView(),
      binding: PersonalInfoBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.IMPORT_CASE,
      page: () => const ImportCaseView(),
      binding: ImportCaseBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_CASE,
      page: () => const SelectCaseView(),
      binding: SelectCaseBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_USER,
      page: () => const EditUserView(),
      binding: EditUserBinding(),
    ),
    GetPage(
      name: _Paths.ADD_USER,
      page: () => const AddUserView(),
      binding: AddUserBinding(),
    ),
    GetPage(
      name: _Paths.USER_LIST,
      page: () => const UserListView(),
      binding: UserListBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_TEMPLATE_LIST,
      page: () => const ReportTemplateListView(),
      binding: ReportTemplateListBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_TEMPLATE_DETAIL,
      page: () => const ReportTemplateDetailView(),
      binding: ReportTemplateDetailBinding(),
    ),
  ];
}
