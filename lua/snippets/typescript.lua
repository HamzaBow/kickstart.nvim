local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('typescript', {
  s('dur', {
    t { 'import dayjs from "npm:dayjs";', '' },
    t { 'import prettyMilliseconds from "npm:pretty-ms";', '', '' },
    t { 'const dur = dayjs("' },
    i(2, 'endDate'),
    t { '").valueOf() -', '' },
    t { 'dayjs("' },
    i(1, 'startDate'),
    t { '").valueOf();', '', '' },
    t { 'console.log("duration ms        >> ", dur);', '' },
    t { 'console.log("pretty duration    >> ", prettyMilliseconds(dur));', '' },
  }),
})

-- import dayjs from "npm:dayjs";
-- import prettyMilliseconds from "npm:pretty-ms";
-- const dur = dayjs("endDate").valueOf() -
-- dayjs("startDate").valueOf();
-- console.log("duration ms        >> ", dur);
-- console.log("pretty duration    >> ", prettyMilliseconds(dur));
