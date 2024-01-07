parser grammar OrgmodeParser;

options {
	tokenVocab = OrgmodeLexer;
}

file: EOF | line* EOF;
line: todo | header;
header: HEADER;
todo: TODO;