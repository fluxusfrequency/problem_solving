## Question 1

A linked list is a data structure. It contains several `nodes`, simple objects that contain some data. In a singly-linked list, each node has a reference to the next node. In a doubly-linked list, each node has references to the nodes before and after itself. These references are called `link`s. It is possible to link the last node to the first node, in which case the list is circular. The list itself may have references to the first element and/or last elements, called the "head" and "tail". The list may have functionality such as `search`, `push`, `pop`, `shift`, `unshift`, and `all`.

## Question 2

If a node has `nil` for the link, that means it is the last link in the list. If the second node in a list of four had a `nil` link, that would mean that nodes three and four would not be accessible.

## Question 3

```
Node A --> Node B --> Node C --> Node A
```

This diagram depicts a circular linked list, which I talked about in Question 1. If you started on Node A and traversed across six links, you would be back on Node A.

## Question 4

*Pseudocode* algorithm for finding an element of data in a linked list:

- Pass in the data you are searching for.
- Start with the first element.

- Inspect the node's data.
- Compare it with the data you are searching for.
- If the node's data is the data you are searching for, return it.
- If it's not the right data, repeat the operation on the node's `next` node.
- If the `next` node is `nil`, print `"Not Found"`.

## Question 5

*Pseudocode* algorithm for inserting an element at the end of a linked list:

- Pass in the data you are searching for.
- Start with the first element.

- Inspect the node's `next`.
- If `next` is not `nil`, go to the next node.
- If `next` is `nil`, set `next` to a new node.
- The new node should have a `next` of `nil`.
- In a doubly-linked list, the new node's `prev` should be set to the old last node.


6. Write a *pseudocode* algorithm for inserting an element at position `X` of a linked list.

7. Write a *pseudocode* algortitm for counting the number of elements in a linked list.

8. Write a *pseudocode* algorithm for counting the number of unique elements in a linked list.
