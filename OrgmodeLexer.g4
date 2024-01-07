lexer grammar OrgmodeLexer;

HEADER: HEADER_PREFIX .*? NEWLINE?; // 見出し
HEADER_PREFIX: ('*'+ | '+'+) ' ';
NEWLINE: '\r'? '\n';
TEXT: ~[\r\n]+;