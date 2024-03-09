import 'package:flutter_test/flutter_test.dart';
import 'package:list_app/main.dart';

void main() {
  group('ListManager 単体テスト', () {
    test('Initial value(itemsの初期値が0(空))', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Assert
      // itemsの値が0(空)であることを確認する
      expect(listManager.items, isEmpty);
    });

    test('getItemsメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act
      // itemsに'Test Item1'をアイテムとして追加する
      listManager.items.add('Test Item1');

      // Assert
      // getItemsの結果'Test Item1'が含まれていることを確認する
      expect(listManager.getItems(), equals(['Test Item1']));
    });

    test('addItemメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Assert (事前の確認)
      // itemsが空であることを確認
      expect(listManager.items, isEmpty);
      // Act
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する
      listManager.addItem('Item 1');
      listManager.addItem('Item 2');
      listManager.addItem('Item 3');

      // Assert
      // itemsに'Item1','Item2','Item3'の3つがあることを確認
      expect(listManager.items, equals(['Item 1', 'Item 2', 'Item 3']));
    });

    test('removeItemメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act (事前の実行)
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する
      listManager.addItem('Item 1');
      listManager.addItem('Item 2');
      listManager.addItem('Item 3');
      // Assert (事前の確認)
      // itemsに'Item1','Item2','Item3'の3つがあることを確認
      expect(listManager.items, equals(['Item 1', 'Item 2', 'Item 3']));

      // Act
      // itemsから'Item2'を削除する
      listManager.removeItem('Item 2');

      // Assert
      // itemsに'Item1','Item3'の2つがあることを確認
      expect(listManager.items, equals(['Item 1', 'Item 3']));
    });

    test('clearListメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act (事前の実行)
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する
      listManager.addItem('Item 1');
      listManager.addItem('Item 2');
      listManager.addItem('Item 3');
      // Assert (事前の確認)
      // itemsに'Item1','Item2','Item3'の3つがあることを確認
      expect(listManager.items, equals(['Item 1', 'Item 2', 'Item 3']));

      // Act
      // itemsのアイテムをクリアする
      listManager.clearList();

      // Assert
      // itemsが空であることを確認
      expect(listManager.items, isEmpty);
    });
  });
}
