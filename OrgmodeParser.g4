parser grammar OrgmodeParser;

options {
	tokenVocab = OrgmodeLexer;
}

file: line* EOF;
line: todo | header;
header: HEADER;
todo: TODO;