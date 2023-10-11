class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;
  void insert(int dataIn) {
    Node? current = root;
    if (root?.data == null) {
      root = Node(dataIn);
      return;
    } else {
      while (true) {
        if (dataIn < current!.data) {
          if (current.left == null) {
            current.left = Node(dataIn);
            return;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = Node(dataIn);
            return;
          }
          current = current.right;
        }
      }
    }
  }

//is bst
  bool isBst(Node? node) {
    if (node == null) {
      return true;
    }
    return (node.left == null || node.left!.data < node.data) &&
        (node.right == null || node.right!.data > node.data) &&
        isBst(node.left) &&
        isBst(node.right);
  }

  // bool isbst(Node? node) {
  //   if (node == null) {
  //     return true;
  //   }
  //   return (node.left == null || node.left!.data < node.data) &&
  //       (node.right == null || node.right!.data > node.data) &&
  //       isbst(node.left) &&
  //       isbst(node.right);
  // }

  // void delete(int data) {
  //   _delete(root, data);
  // }
  void deleteBst(int data) {
    delete(root, data);
  }

  Node? delete(Node? node, int dataIn) {
    if (node == null) {
      return null;
    } else if (dataIn < node.data) {
      node.left = delete(node.left, dataIn);
    } else if (dataIn > node.data) {
      node.right = delete(node.right, dataIn);
    } else {
      if (node.left == null && node.right == null) {
        return null;
      } else if (node.left == null) {
        return node.right;
      } else if (node.right == null) {
        return node.left;
      } else {
        Node? temp = findMin(node.right);
        node.data = temp!.data;
      }
    }
    return null;
  }

  Node? findMin(Node? node) {
    while (node != null && node.left != null) {
      node = node.left;
    }
    return node;
  }

  void inOrder() {
    inorderTraversal(root);
  }

  void inorderTraversal(Node? binaryElement) {
    if (binaryElement == null) {
      return;
    }
    inorderTraversal(binaryElement.left);
    print(binaryElement.data);
    inorderTraversal(binaryElement.right);
  }

  bool contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }
}
