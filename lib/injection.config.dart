// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:ros_app/motorCommand/application/bloc/motor_control_bloc.dart'
    as _i5;
import 'package:ros_app/motorCommand/domain/repositories/control_repo.dart'
    as _i3;
import 'package:ros_app/motorCommand/domain/usecases/motor_control.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.MotorCommandRepo>(() => _i3.MotorCommandRepo());
    gh.factory<_i4.MotorCommand>(
        () => _i4.MotorCommand(motorCommandRepo: gh<_i3.MotorCommandRepo>()));
    gh.factory<_i5.MotorControlBloc>(
        () => _i5.MotorControlBloc(motorCommand: gh<_i4.MotorCommand>()));
    return this;
  }
}
