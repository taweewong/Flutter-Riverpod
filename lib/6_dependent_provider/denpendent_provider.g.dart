// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'denpendent_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalItemCountHash() => r'e907e5ff1a015808a13325f8c5b6e7254a943fa5';

/// See also [totalItemCount].
@ProviderFor(totalItemCount)
final totalItemCountProvider = AutoDisposeProvider<int>.internal(
  totalItemCount,
  name: r'totalItemCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$totalItemCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TotalItemCountRef = AutoDisposeProviderRef<int>;
String _$dependentNotifierHash() => r'214af2505d0c78a45cfb59c4780769a52dfa8012';

/// See also [DependentNotifier].
@ProviderFor(DependentNotifier)
final dependentNotifierProvider =
    AutoDisposeNotifierProvider<DependentNotifier, List<String>>.internal(
      DependentNotifier.new,
      name: r'dependentNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$dependentNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DependentNotifier = AutoDisposeNotifier<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
