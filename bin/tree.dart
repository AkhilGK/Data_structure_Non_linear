class TreeNode<T> {
  TreeNode(this.value);
  T value;
  List<TreeNode<T>> children = [];
  void addChild(TreeNode<T> child) {
    children.add(child);
  }
}

void printTree(TreeNode node, [String prefix = '']) {
  print(prefix + node.value);
  if (node.children.isEmpty) {
    for (var child in node.children) {
      printTree(child, '--');
    }
  }
}
