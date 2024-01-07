lexer grammar OrgmodeLexer;

TODO_PREFIX: HEADER_PREFIX 'TODO' ' ' -> more;
TODO: TODO_PREFIX TEXT NEWLINE?;
HEADER_PREFIX: ('*'+ | '+'+) ' ' -> more;
HEADER: HEADER_PREFIX TEXT NEWLINE?;
NEWLINE: '\r'? '\n';
TEXT: ~[\r\n]+;