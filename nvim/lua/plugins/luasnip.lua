return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local fmt = require("luasnip.extras.fmt").fmt
      local extras = require("luasnip.extras")
      local rep = extras.rep

      -- Forces live updates for rep to work properly
      ls.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
      })

      ls.add_snippets("tex", {
        s("vs", {
          t("\\vs"),
        }),
      })

      ls.add_snippets("tex", {
        s("ls", {
          t("\\vspace{.5cm}"),
        }),
      })

      ls.add_snippets("tex", {
        s("mul", {
          t("\\cdot"),
        }),
      })

      ls.add_snippets("tex", {
        s("ni", {
          t("\\noindent "),
        }),
      })

      ls.add_snippets("tex", {
        s("in", {
          t("$"),
          i(1),
          t("$"),
          i(2),
        }),
      })

      ls.add_snippets("tex", {
        s("out", {
          t("$$"),
          i(1),
          t("$$"),
          i(2),
        }),
      })

      ls.add_snippets("tex", {
        s("it", {
          t("\\item{"),
          i(1),
          t("}"),
          i(2),
        }),
      })

      ls.add_snippets("tex", {
        s("defn", {
          t("\\dfn{"),
          i(1),
          t("}{"),
          i(2),
          t("}"),
        }),
      })

      ls.add_snippets("tex", {
        s(
          "venn",
          fmt(
            [[
              \begin{center}
                \begin{tikzpicture}[thick, set/.style={circle, draw, minimum size=3cm, inner sep=0pt}]
                  \node[set, label={135:$<1>$}, fill=blue, fill opacity=.5] (a1) at (90:1cm) {};
                  \node[set, label={-45:$<2>$}, fill=red, fill opacity=.5] (a2) at (330:1cm) {};
                  \node[set, label={225:$<3>$}, fill=green, fill opacity=.5] (a3) at (210:1cm) {};
                \end{tikzpicture}
              \end{center}
            ]],
            {
              i(1, "a_1"),
              i(2, "a_2"),
              i(3, "a_3"),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "beg",
          fmt(
            [[
          \begin{<>}
            <>
          \end{<>}
        ]],
            {
              i(1),
              i(0),
              rep(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "sec",
          fmt(
            [[
          \vs
          \section{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "sub",
          fmt(
            [[
          \subsection{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "nt",
          fmt(
            [[
          \nt{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "itemi",
          fmt(
            [[
          \begin{itemize}
            \item{<>}
          \end{itemize}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "bol",
          fmt(
            [[
          \textbf{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "exp",
          fmt(
            [[
            \expl{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "ex",
          fmt(
            [[
            \ex{}{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("tex", {
        s(
          "up",
          fmt(
            [[
            ^{<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      -- React Snippets
      ls.add_snippets("javascriptreact", {
        s(
          "cs",
          fmt(
            [[
            className={styles.<>}
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("javascriptreact", {
        s(
          "ds",
          fmt(
            [[
            <<div className={styles.<>}>>
            <</div>>
        ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("javascriptreact", {
        s(
          "rf",
          fmt(
            [[
            import styles from './<>.module.css'

            const <> = () =>> {
              return (
                <<>>

                <</>>
              )
            }

            export default <>
          ]],
            {
              i(1),
              i(2),
              i(3),
            },
            { delimiters = "<>" }
          )
        ),
      })
    end,
  },
}
