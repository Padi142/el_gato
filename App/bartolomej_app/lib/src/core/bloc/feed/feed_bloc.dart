import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_app/src/core/bloc/feed/feed_state.dart';
import 'package:template_app/src/core/provider/bartolomej_provider.dart';

part 'feed_event.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(const FeedState.initial()) {
    on<Feed>(_onFeed);
  }
  BartolomejProvider bartolomejProvider = BartolomejProvider();

  _onFeed(Feed event, Emitter<FeedState> emit) async {
    String ip = await bartolomejProvider.getBartolomejIP();
    if (ip == "error") {
      return;
    }
    await bartolomejProvider.feed(ip, 1);
  }
}
