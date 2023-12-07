local lush = require('lush')
local colors = require('orbit.colors')
local base = require('orbit.base')


---@diagnostic disable: undefined-global
return lush(function(added)
    local sym = added.sym

    return {
        sym"@text.literal"      { base.Identifier },
        sym"@text.reference"    { base.Identifier },
        sym"@text.title"        { base.Title },
        sym"@text.uri"          { fg = colors.earth[2], gui = "underline" },
        sym"@text.underline"    { base.Underlined },
        sym"@text.todo"         { base.Todo },
        sym"@comment"           { base.Comment },
        sym"@punctuation"       { base.Delimiter },
        sym"@constant"          { base.Constant, gui = "bold", fg = colors.venus[1] },
        sym"@constant.builtin"  { base.Constant, gui = "bold", fg = colors.venus[2] },
        sym"@constant.macro"    { base.Macro, gui = "bold" },
        sym"@define"            { base.Constant, gui = "bold" },
        sym"@macro"             { base.Macro },
        sym"@string"            { base.String, fg = colors.venus[4] },
        sym"@string.escape"     { base.SpecialChar },
        sym"@string.special"    { base.SpecialChar },
        sym"@character"         { base.Character },
        sym"@character.special" { base.SpecialChar },
        sym"@number"            { base.Number },
        sym"@boolean"           { base.Boolean },
        sym"@float"             { base.Float },

        sym"@function"          { base.Function },
        sym"@function.call"     { base.Function },
        sym"@function.builtin"  { base.Function, fg = colors.mercury[1] },
        sym"@function.macro"    { base.Macro, gui = "italic" },
        sym"@parameter"         { gui = "italic" },
        sym"@method"            { base.Function },
        sym"@field"             { fg = colors.mercury[1] },
        sym"@property"          { sym"@function.call" },
        sym"@constructor"       { base.Type },
        sym"@conditional"       { base.Conditional },
        sym"@repeat"            { base.Repeat },
        sym"@label"             { base.Label },
        sym"@operator"          { base.Operator },
        sym"@keyword"           { base.Keyword },
        sym"@exception"         { base.Exception },
        sym"@variable"          { base.Identifier },
        sym"@type"              { base.Type },
        sym"@type.definition"   { base.Typedef },
        sym"@storageclass"      { base.StorageClass },
        sym"@structure"         { base.Structure },
        sym"@namespace"         { fg = colors.venus[3] },
        sym"@include"           { base.Macro },
        sym"@preproc"           { base.Macro },
        sym"@debug"             { base.Debug },
        sym"@tag"               { base.Tag },

    }
end)
