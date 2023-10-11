// class Node {
//   late int data;
//   Node? left;
//   Node? right;
//   Node(this.data);
// }

// class Bst {
//   Node? root;
//   void insert(int dataIn) {
//     Node? current = root;
//     if (current == null) {
//       root = Node(dataIn);
//     }
//     while (true) {
//       if (dataIn <= current!.data) {
//         if (current == null) {
//           current = Node(dataIn)
//         }
//         current = current.left;
//       } else {
//         if (current == null) {
//           current = Node(dataIn);
//         }
//         current = current.right;
//       }
//     }
//   }
// }

// // class BSt {
// //   Node? root;
// //   insertBst(int dataIn) {
// //     Node? current = root;
// //     if (current == null) {
// //       root = Node(dataIn);
// //       return;
// //     } else {
// //       while (true) {
// //         if (dataIn <= current!.data) {
// //           if (current.left == null) {
// //             current.left = Node(dataIn);
// //             return;
// //           } else {
// //             current = current.left;
// //           }
// //         } else {
// //           if (current.right == null) {
// //             current.right = Node(dataIn);
// //             return;
// //           } else {
// //             current = current.right;
// //           }
// //         }
// //       }
// //     }
// //   }

// //   inorderTravers(Node? bstroot) {
// //     if (bstroot == null) {
// //       return;
// //     }
// //     inorderTravers(bstroot.left);
// //     print(bstroot.data);
// //     inorderTravers(bstroot.right);
// //   }
// // }
// // void bstDelete(int data) {
// //   delete(root, data);
// // }

// // delete(Node node, int data) {
// //   if (node == null) {
// //     return null;
// //   }if(data<node.data)
// // }
