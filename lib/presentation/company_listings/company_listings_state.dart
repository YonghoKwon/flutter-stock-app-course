import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/domain/model/company_listing.dart';

part 'company_listings_state.freezed.dart';

part 'company_listings_state.g.dart';

@freezed
class CompanyListingsState with _$CompanyListingsState {
  const factory CompanyListingsState({
    @Default([]) List<CompanyListing> compaines,
    @Default(false) bool isLoading,
    @Default(false) bool isRefresing,
    @Default('') String searchQuery,
  }) = _CompanyListingsState;

  factory CompanyListingsState.fromJson(Map<String, Object?> json) => _$CompanyListingsStateFromJson(json);
}