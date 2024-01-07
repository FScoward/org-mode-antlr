parser grammar OrgmodeParser;

options {
	tokenVocab = OrgmodeLexer;
}

file: EOF | line* EOF;
line: HEADER | TEXT NEWLINE?;