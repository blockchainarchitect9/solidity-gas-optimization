// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract StructTest {
    struct books {
        string title;
        string author;
        bool status;
    }

    books book;

    function newBook1() public {
        book = books("ananthan", "one way", false);
    }

    function newBook2() public {
        book.title = "one way";
        book.author = "ananthan";
    }

    function newBook3() public {
        book.title = "one way";
        book.author = "ananthan";
        book.status = false;
    }
}