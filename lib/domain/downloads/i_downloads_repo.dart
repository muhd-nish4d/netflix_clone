import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

abstract class IDownloadsRespo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
