local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('go', { -- "go" here ensures these snippets only load for Go files
  s('main', {
    t { 'package main', '', 'func main() {' },
    t { '  ' },
    i(1),
    t { '', '}' },
  }),

  s('pr', {
    t 'fmt.Println("',
    i(1),
    t '")',
  }),

  s('fori', {
    t 'for i := 0; i < ',
    i(1, '10'),
    t '; i++ {',
    t { '', '  ' },
    i(2),
    t { '', '}' },
  }),

  s('ifer', {
    t { 'if err != nil {', '\t' },
    i(1),
    t { '', '}' },
  }),

  s('iferp', {
    t { 'if err != nil {', '\tfmt.Println("' },
    i(1, 'Error message'),
    t { ':", err)', '\treturn', '' },
    t { '}', '' },
    i(2),
  }),

  s('iferfa', {
    t { 'if err != nil {', '\tlog.Fatal("' },
    i(1, 'Error message'),
    t { ':", err)', '' },
    t { '}', '' },
    i(2),
  }),

  s('iferfaf', {
    t { 'if err != nil {', '\tlog.Fatalf("' },
    i(1, 'Error message'),
    t { ': %v", err)', '' },
    t { '}', '' },
    i(2),
  }),
})
