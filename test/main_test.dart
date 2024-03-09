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
    });

    test('getItemsメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act
      // itemsに'Test Item1'をアイテムとして追加する

      // Assert
      // getItemsの結果'Test Item1'が含まれていることを確認する
    });

    test('addItemメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Assert (事前の確認)
      // itemsが空であることを確認

      // Act
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する

      // Assert
      // itemsに'Item1','Item2','Item3'の3つがあることを確認
    });

    test('removeItemメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act (事前の実行)
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する

      // Assert (事前の確認)
      // itemsに'Item1','Item2','Item3'の3つがあることを確認

      // Act
      // itemsから'Item2'を削除する

      // Assert
      // itemsに'Item1','Item3'の2つがあることを確認
    });

    test('clearListメソッド', () {
      // Arrange
      // ListManagerインスタンス作成
      final listManager = ListManager();

      // Act (事前の実行)
      // itemsに'Item1','Item2','Item3'をアイテムとして追加する

      // Assert (事前の確認)
      // itemsに'Item1','Item2','Item3'の3つがあることを確認

      // Act
      // itemsのアイテムをクリアする

      // Assert
      // itemsが空であることを確認
    });
  });
}
