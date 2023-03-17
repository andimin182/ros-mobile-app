// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:ros_app/cameraVisualization/application/bloc/camera_node_bloc.dart'
    as _i6;
import 'package:ros_app/cameraVisualization/domain/repositories/camera_subscriber_repo.dart'
    as _i3;
import 'package:ros_app/cameraVisualization/domain/usecases/camera_visualization.dart'
    as _i4;
import 'package:ros_app/motorCommand/application/bloc/motor_control_bloc.dart'
    as _i8;
import 'package:ros_app/motorCommand/domain/repositories/motor_node_pub_repo.dart'
    as _i5;
import 'package:ros_app/motorCommand/domain/usecases/motor_node_pub.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i3.CameraNodeSub>(() => _i3.CameraNodeSub());
    gh.factory<_i4.CameraVisualization>(
        () => _i4.CameraVisualization(gh<_i3.CameraNodeSub>()));
    gh.factory<_i5.MotorNodePub>(() => _i5.MotorNodePub());
    gh.factory<_i6.CameraNodeBloc>(() =>
        _i6.CameraNodeBloc(cameraVisualization: gh<_i4.CameraVisualization>()));
    gh.factory<_i7.MotorCommand>(
        () => _i7.MotorCommand(motorNodePub: gh<_i5.MotorNodePub>()));
    gh.factory<_i8.MotorControlBloc>(
        () => _i8.MotorControlBloc(motorCommand: gh<_i7.MotorCommand>()));
    return this;
  }
}
