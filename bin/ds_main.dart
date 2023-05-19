import 'package:ds_main/ds_main.dart' as ds_main;

import 'bst.dart';
import 'tree.dart';

void main() {
  BinarySearchTree obj = BinarySearchTree();
  obj.insert(30);
  obj.insert(20);
  obj.insert(50);
  obj.insert(3);
  obj.inorderTraversal(obj.root);

  // var root = TreeNode<int>(1);
  // var child1 = TreeNode<int>(2);
  // var child2 = TreeNode<int>(3);
  // root.addChild(child1);
  // root.addChild(child2);
  // void printTree(TreeNode node, [String prefix = '']) {
  //   print(prefix + node.value);
  //   if (node.children.isEmpty) {
  //     for (var child in node.children) {
  //       printTree(child, '--');
  //     }
  //   }
  // }
}
