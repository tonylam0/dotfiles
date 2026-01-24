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
          t("\\vspace{.5cm}"),
        }),
      })

      ls.add_snippets("tex", {
        s("sh", {
          t("\\"),
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
          "fr",
          fmt(
            [[
          \frac{<>}{<>}
        ]],
            {
              i(1),
              i(2),
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
          "dr",
          fmt(
            [[
            \draw{<>}
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
          "denv",
          fmt(
            [[
            \begin{tikzpicture}
              <>
            \end{tikzpicture}
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

      ls.add_snippets("tex", {
        s(
          "sl",
          fmt(
            [[
            \<>
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
          "ms",
          fmt(
            [[
            className={`${<>} ${<>}`}
            ]],
            {
              i(1),
              i(2),
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
          "note",
          fmt(
            [[
            import Post from "../components/Post/Post.jsx"
            import ReactMarkdown from 'react-markdown'
            import rehypeExternalLinks from 'rehype-external-links'
            import content from '../markdown/<>.md?raw'

            const <> = () =>> {
              return (
                <<>>
                  <<Post date={"<>"}>>
                    <<ReactMarkdown rehypePlugins={[[rehypeExternalLinks, { target: '_blank', rel: ['noopener', 'noreferrer'] }%]%]}>>{content}<</ReactMarkdown>>
                  <</Post>>
                <</>>
              )
            }

            export default <>
          ]],
            {
              i(1),
              rep(1),
              i(2),
              rep(1),
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
              rep(1),
              rep(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("javascriptreact", {
        s("br", {
          t("<br />"),
        }),
      })

      -- Markdown Snippets
      ls.add_snippets("markdown", {
        s("br", {
          t("<br />"),
        }),
      })

      ls.add_snippets("markdown", {
        s(
          "i",
          fmt(
            [[
            *<>*
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("markdown", {
        s(
          "b",
          fmt(
            [[
            **<>**
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("markdown", {
        s(
          "link",
          fmt(
            [[
            [<>](<>)
          ]],
            {
              i(1),
              i(2),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "mobile",
          fmt(
            [[
            @media (max-width: 480px) {
              <>
            }
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "tablet",
          fmt(
            [[
            @media (max-width: 768px) {
              <>
            }
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "desktop",
          fmt(
            [[
            @media (max-width: 1024px) {
              <>
            }
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "large",
          fmt(
            [[
            @media (max-width: 1200px) {
              <>
            }
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "media",
          fmt(
            [[
            @media (max-width: 1200px) {
              <>
            }

            @media (max-width: 1024px) {
              <>
            }

            @media (max-width: 768px) {
              <>
            }

            @media (max-width: 480px) {
              <>
            }
          ]],
            {
              i(1),
              i(2),
              i(3),
              i(4),
            },
            { delimiters = "<>" }
          )
        ),
      })

      ls.add_snippets("css", {
        s(
          "c",
          fmt(
            [[
            /* <> */
          ]],
            {
              i(1),
            },
            { delimiters = "<>" }
          )
        ),
      })

      -- Java snippets
      ls.add_snippets("java", {
        s(
          "cp",
          fmt(
            [[
            import java.io.*;
            import java.util.*;

            public class <> {
              public static void main(String[] args) throws IOException {
                BufferedReader r = new BufferedReader(new FileReader("<>.in"));
                PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter("<>.out")));

                r.close();
                pw.close();
              }
            }
            ]],
            {
              i(1),
              rep(1),
              rep(1),
            },
            { delimiters = "<>" }
          )
        ),
      })
    end,
  },
}
