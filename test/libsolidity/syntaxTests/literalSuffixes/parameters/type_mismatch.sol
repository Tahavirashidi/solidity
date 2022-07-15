function uintSuffix(uint) pure returns (uint) { return 1; }
function int8Suffix(int8) pure returns (uint) { return 1; }
function addressSuffix(address) pure returns (uint) { return 1; }
function decimalSuffix(uint, uint) pure returns (uint) { return 1; }
function stringSuffix(string memory) pure returns (uint) { return 1; }
function bytesSuffix(bytes memory) pure returns (uint) { return 1; }

contract C {
    function f() public pure {
        1 uintSuffix;       // allowed
        1 int8Suffix;       // allowed
        1 addressSuffix;
        1 decimalSuffix;    // allowed
        1 stringSuffix;
        1 bytesSuffix;

        1024 uintSuffix;    // allowed
        1024 int8Suffix;
        1024 addressSuffix;
        1024 decimalSuffix; // allowed
        1024 stringSuffix;
        1024 bytesSuffix;

        0x1234567890123456789012345678901234567890 uintSuffix;
        0x1234567890123456789012345678901234567890 int8Suffix;
        0x1234567890123456789012345678901234567890 addressSuffix; // allowed
        0x1234567890123456789012345678901234567890 decimalSuffix;
        0x1234567890123456789012345678901234567890 stringSuffix;
        0x1234567890123456789012345678901234567890 bytesSuffix;

        1.1 uintSuffix;
        1.1 int8Suffix;
        1.1 addressSuffix;
        1.1 decimalSuffix; // allowed
        1.1 stringSuffix;
        1.1 bytesSuffix;

        "a" uintSuffix;
        "a" int8Suffix;
        "a" addressSuffix;
        "a" decimalSuffix;
        "a" stringSuffix;  // allowed
        "a" bytesSuffix;   // allowed

        hex"abcd" uintSuffix;
        hex"abcd" int8Suffix;
        hex"abcd" addressSuffix;
        hex"abcd" decimalSuffix;
        hex"abcd" stringSuffix;
        hex"abcd" bytesSuffix;   // allowed
    }
}
// ----
// TypeError 8838: (526-541): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (590-604): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (614-627): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (677-692): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (702-720): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (769-786): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (796-812): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (823-876): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (886-939): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1026-1082): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1092-1147): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1157-1211): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1222-1236): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1246-1260): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1270-1287): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1335-1351): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1361-1376): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1387-1401): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1411-1425): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1435-1452): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1462-1479): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1566-1586): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1596-1616): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1626-1649): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1659-1682): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1692-1714): The type of the literal cannot be converted to the parameter of the suffix function.
