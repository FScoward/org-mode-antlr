parser grammar OrgmodeParser;

options {
	tokenVocab = OrgmodeLexer;
}

file: (line* EOF);
line: (HEADER | TODO);