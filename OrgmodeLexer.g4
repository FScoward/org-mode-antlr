lexer grammar OrgmodeLexer;

TODO_PREFIX: ('*' | '+')+ ' ' 'TODO';
HEADER_PREFIX: ('*' | '+')+;

TODO: TODO_PREFIX ' ' TEXT NEWLINE?; // TODOアイテム
HEADER: HEADER_PREFIX ' ' TEXT NEWLINE?; // 見出し

TEXT: ~[\r\n]+;
NEWLINE: '\r'? '\n' -> skip; // 改行を無視