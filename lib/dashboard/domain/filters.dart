enum Filters { all, mine }

extension FiltersExtension on Filters {
  String get getName {
    switch (this) {
      case Filters.all:
        return 'All';
      case Filters.mine:
        return 'Mine';
      default:
        return '';
    }
  }
}
