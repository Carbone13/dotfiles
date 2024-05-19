local M = {}

M.mason = {
  "ocamlformat",
  "clang-format",
  "stylua"
}

M.lsp_servers = {
  clangd = {
    clangd = {
      InlayHints = {
        Designators = true,
        Enabled = true,
        ParameterNames = true,
        DeducedTypes = true,
      },
      fallbackFlags = { "-std=c++20" },
    },
  },
  ocamllsp = {},
  lua_ls = {},
}

M.linter = {}

M.treesitter = {
  "c",
  "cpp",
  "ocaml",
  "make",
  "cmake",
  "bash",
  "vim",
  "vimdoc",
  "lua",
  "html",
  "markdown"
}

M.lsp_kind = {
  Namespace = "󰌗",
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰆧",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈚",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰊄",
  Table = "",
  Object = "󰅩",
  Tag = "",
  Array = "[]",
  Boolean = "",
  Number = "",
  Null = "󰟢",
  String = "󰉿",
  Calendar = "",
  Watch = "󰥔",
  Package = "",
  Copilot = "",
  Codeium = "",
  TabNine = "",
}

M.hydra = {
  "                                   ",
  "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
  "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
  "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
  "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
  "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
  "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
  "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
  " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
  " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
  "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
  "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

M.nvim = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

M.fortune_list = {
  {
    "Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.",
    "",
    "- Brian Kernighan",
  },
  { "If you don't finish then you're just busy, not productive." },
  {
    "Adapting old programs to fit new machines usually means adapting new machines to behave like old ones.",
    "",
    "- Alan Perlis",
  },
  { "Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.", "", "- Alan Perlis" },
  { "It is easier to change the specification to fit the program than vice versa.",           "", "- Alan Perlis" },
  { "Simplicity does not precede complexity, but follows it.",                                "", "- Alan Perlis" },
  { "Optimization hinders evolution.",                                                        "", "- Alan Perlis" },
  { "Recursion is the root of computation since it trades description for time.",             "", "- Alan Perlis" },
  {
    "It is better to have 100 functions operate on one data structure than 10 functions on 10 data structures.",
    "",
    "- Alan Perlis",
  },
  {
    "There is nothing quite so useless as doing with great efficiency something that should not be done at all.",
    "",
    "- Peter Drucker",
  },
  { "If you don't fail at least 90% of the time, you're not aiming high enough.",                             "", "- Alan Kay" },
  {
    "I think a lot of new programmers like to use advanced data structures and advanced language features as a way of demonstrating their ability. I call it the lion-tamer syndrome. Such demonstrations are impressive, but unless they actually translate into real wins for the project, avoid them.",
    "",
    "- Glyn Williams",
  },
  { "I would rather die of passion than of boredom.",                                                         "", "- Vincent Van Gogh" },
  { "If a system is to serve the creative spirit, it must be entirely comprehensible to a single individual." },
  {
    "The computing scientist's main challenge is not to get confused by the complexities of his own making.",
    "",
    "- Edsger W. Dijkstra",
  },
  {
    "Progress in a fixed context is almost always a form of optimization. Creative acts generally don't stay in the context that they are in.",
    "",
    "- Alan Kay",
  },
  {
    "The essence of XML is this: the problem it solves is not hard, and it does not solve the problem well.",
    "",
    "- Phil Wadler",
  },
  {
    "A good programmer is someone who always looks both ways before crossing a one-way street.",
    "",
    "- Doug Linder",
  },
  { 'Patterns mean "I have run out of language."',                               "", "- Rich Hickey" },
  {
    "Always code as if the person who ends up maintaining your code is a violent psychopath who knows where you live.",
    "",
    "- John Woods",
  },
  {
    "There are two ways of constructing a software design: One way is to make it so simple that there are obviously no deficiencies, and the other way is to make it so complicated that there are no obvious deficiencies.",
    "",
    "- C.A.R. Hoare",
  },
  { "If you don't make mistakes, you're not working on hard enough problems.",   "", "- Frank Wilczek" },
  { "If you don't start with a spec, every piece of code you write is a patch.", "", "- Leslie Lamport" },
  { "Caches are bugs waiting to happen.",                                        "", "- Rob Pike" },
  {
    "Abstraction is not about vagueness, it is about being precise at a new semantic level.",
    "",
    "- Edsger W. Dijkstra",
  },
  {
    "dd is horrible on purpose. It's a joke about OS/360 JCL. But today it's an internationally standardized joke. I guess that says it all.",
    "",
    "- Rob Pike",
  },
  { "All idioms must be learned. Good idioms only need to be learned once.", "", "- Alan Cooper" },
  {
    "For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled.",
    "",
    "- Richard Feynman",
  },
  {
    "If programmers were electricians, parallel programmers would be bomb disposal experts. Both cut wires.",
    "",
    "- Bartosz Milewski",
  },
  {
    "Computers are harder to maintain at high altitude. Thinner air means less cushion between disk heads and platters. Also more radiation.",
  },
  { "Almost every programming language is overrated by its practitioners.",  "", "- Larry Wall" },
  { "Fancy algorithms are slow when n is small, and n is usually small.",    "", "- Rob Pike" },
  { "Methods are just functions with a special first argument.",             "", "- Andrew Gerrand" },
  {
    "Don't assume it - prove it.",
    "",
    "Prove your assumptions in the actual environment - with real data and boundary conditions.",
  },
  { "To iterate is human, to recurse divine.",                "", "- L. Peter Deutsch" },
  { "Computers are useless. They can only give you answers.", "", "- Pablo Picasso" },
  {
    "The question of whether computers can think is like the question of whether submarines can swim.",
    "",
    "- Edsger W. Dijkstra",
  },
  {
    "It's ridiculous to live 100 years and only be able to remember 30 million bytes. You know, less than a compact disc. The human condition is really becoming more obsolete every minute.",
    "",
    "- Marvin Minsky",
  },
  { "The city's central computer told you? R2D2, you know better than to trust a strange computer!", "", "- C3PO" },
  {
    "Most software today is very much like an Egyptian pyramid with millions of bricks piled on top of each other, with no structural integrity, but just done by brute force and thousands of slaves.",
    "",
    "- Alan Kay",
  },
  {
    'I\'ve finally learned what "upward compatible" means. It means we get to keep all our old mistakes.',
    "",
    "- Dennie van Tassel",
  },
  {
    "There are two major products that come out of Berkeley: LSD and UNIX. We don't believe this to be a coincidence.",
    "",
    "- Jeremy S. Anderson",
  },
  {
    "The bulk of all patents are crap. Spending time reading them is stupid. It's up to the patent owner to do so, and to enforce them.",
    "",
    "- Linus Torvalds",
  },
  { "Controlling complexity is the essence of computer programming.",                                "", "- Brian Kernighan" },
  {
    "Complexity kills. It sucks the life out of developers, it makes products difficult to plan, build and test, it introduces security challenges, and it causes end-user and administrator frustration.",
    "",
    "- Ray Ozzie",
  },
  { "The function of good software is to make the complex appear to be simple.", "", "- Grady Booch" },
  {
    "There's an old story about the person who wished his computer were as easy to use as his telephone. That wish has come true, since I no longer know how to use my telephone.",
    "",
    "- Bjarne Stroustrup",
  },
  { 'There are only two industries that refer to their customers as "users".',   "", "- Edward Tufte" },
  {
    "Most of you are familiar with the virtues of a programmer. There are three, of course: laziness, impatience, and hubris.",
    "",
    "- Larry Wall",
  },
  {
    "Computer science education cannot make anybody an expert programmer any more than studying brushes and pigment can make somebody an expert painter.",
    "",
    "- Eric S. Raymond",
  },
  { "Optimism is an occupational hazard of programming; feedback is the treatment.", "", "- Kent Beck" },
  { "First, solve the problem. Then, write the code.",                               "", "- John Johnson" },
  {
    "Don't worry if it doesn't work right. If everything did, you'd be out of a job.",
    "",
    "- Mosher's Law of Software Engineering",
  },
  { "A LISP programmer knows the value of everything, but the cost of nothing.",         "", "- Alan J. Perlis" },
  { "All problems in computer science can be solved with another level of indirection.", "", "- David Wheeler" },
  {
    "Functions delay binding; data structures induce binding. Moral: Structure data late in the programming process.",
    "",
    "- Alan J. Perlis",
  },
  { "Easy things should be easy and hard things should be possible.", "", "- Larry Wall" },
  {
    "If you can't explain something to a six-year-old, you really don't understand it yourself.",
    "",
    "- Albert Einstein",
  },
  { "All programming is an exercise in caching.",                     "", "- Terje Mathisen" },
  { "Software is hard.",                                              "", "- Donald Knuth" },
  { "They did not know it was impossible, so they did it!",           "", "- Mark Twain" },
  {
    "The object-oriented model makes it easy to build up programs by accretion. What this often means, in practice, is that it provides a structured way to write spaghetti code.",
    "",
    "- Paul Graham",
  },
  {
    "The first 90% of the code accounts for the first 90% of the development time. The remaining 10% of the code accounts for the other 90% of the development time.",
    "",
    "- Tom Cargill",
  },
  {
    "In software, we rarely have meaningful requirements. Even if we do, the only measure of success that matters is whether our solution solves the customer's shifting idea of what their problem is.",
    "",
    "- Jeff Atwood",
  },
  {
    "If debugging is the process of removing bugs, then programming must be the process of putting them in.",
    "",
    "- Edsger W. Dijkstra",
  },
  { "To understand recursion, one must first understand recursion.",                  "", "- Stephen Hawking" },
  {
    "Developing tolerance for imperfection is the key factor in turning chronic starters into consistent finishers.",
    "",
    "- Jon Acuff",
  },
  {
    "Every great developer you know got there by solving problems they were unqualified to solve until they actually did it.",
    "",
    "- Patrick McKenzie",
  },
  {
    "The average user doesn't give a damn what happens, as long as (1) it works and (2) it's fast.",
    "",
    "- Daniel J. Bernstein",
  },
  {
    "Walking on water and developing software from a specification are easy if both are frozen.",
    "",
    "- Edward V. Berard",
  },
  {
    "Be curious. Read widely. Try new things. I think a lot of what people call intelligence boils down to curiosity.",
    "",
    "- Aaron Swartz",
  },
  { "What one programmer can do in one month, two programmers can do in two months.", "", "- Frederick P. Brooks" },
}

return M
