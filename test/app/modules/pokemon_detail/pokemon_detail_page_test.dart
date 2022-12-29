import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('PokemonDetailPage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(PokemonDetailPage(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}