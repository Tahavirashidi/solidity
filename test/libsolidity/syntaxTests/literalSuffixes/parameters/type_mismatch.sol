function uintSuffix(uint) pure returns (uint) { return 1; }
function int8Suffix(int8) pure returns (uint) { return 1; }
function boolSuffix(bool) pure returns (uint) { return 1; }
function addressSuffix(address) pure returns (uint) { return 1; }
function decimalSuffix(uint, uint) pure returns (uint) { return 1; }
function stringSuffix(string memory) pure returns (uint) { return 1; }
function bytesSuffix(bytes memory) pure returns (uint) { return 1; }

contract C {
    function f() public pure {
        1 uintSuffix;       // allowed
        1 int8Suffix;       // allowed
        1 boolSuffix;
        1 addressSuffix;
        1 decimalSuffix;    // allowed
        1 stringSuffix;
        1 bytesSuffix;

        1024 uintSuffix;    // allowed
        1024 int8Suffix;
        1024 boolSuffix;
        1024 addressSuffix;
        1024 decimalSuffix; // allowed
        1024 stringSuffix;
        1024 bytesSuffix;

        true uintSuffix;
        true int8Suffix;
        true boolSuffix;       // allowed
        true addressSuffix;
        true decimalSuffix;
        true stringSuffix;
        true bytesSuffix;

        0x1234567890123456789012345678901234567890 uintSuffix;
        0x1234567890123456789012345678901234567890 int8Suffix;
        0x1234567890123456789012345678901234567890 boolSuffix;
        0x1234567890123456789012345678901234567890 addressSuffix; // allowed
        0x1234567890123456789012345678901234567890 decimalSuffix;
        0x1234567890123456789012345678901234567890 stringSuffix;
        0x1234567890123456789012345678901234567890 bytesSuffix;

        1.1 uintSuffix;
        1.1 int8Suffix;
        1.1 boolSuffix;
        1.1 addressSuffix;
        1.1 decimalSuffix; // allowed
        1.1 stringSuffix;
        1.1 bytesSuffix;

        "a" uintSuffix;
        "a" int8Suffix;
        "a" boolSuffix;
        "a" addressSuffix;
        "a" decimalSuffix;
        "a" stringSuffix;  // allowed
        "a" bytesSuffix;   // allowed

        hex"abcd" uintSuffix;
        hex"abcd" int8Suffix;
        hex"abcd" boolSuffix;
        hex"abcd" addressSuffix;
        hex"abcd" decimalSuffix;
        hex"abcd" stringSuffix;
        hex"abcd" bytesSuffix;   // allowed
    }
}
// ----
// TypeError 8838: (586-598): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (608-623): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (672-686): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (696-709): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (759-774): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (784-799): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (809-827): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (876-893): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (903-919): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (930-945): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (955-970): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1022-1040): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1050-1068): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1078-1095): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1105-1121): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1132-1185): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1195-1248): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1258-1311): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1398-1454): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1464-1519): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1529-1583): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1594-1608): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1618-1632): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1642-1656): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1666-1683): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1731-1747): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1757-1772): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1783-1797): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1807-1821): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1831-1845): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (1855-1872): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (1882-1899): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (1986-2006): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (2016-2036): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (2046-2066): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 8838: (2076-2099): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 4778: (2109-2132): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 8838: (2142-2164): The type of the literal cannot be converted to the parameter of the suffix function.
