#pragma checksum "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\Home\Intermedio.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "822850bb0920b139332e1c14f43b8399b5cec212"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Intermedio), @"mvc.1.0.view", @"/Views/Home/Intermedio.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\_ViewImports.cshtml"
using TP10;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\_ViewImports.cshtml"
using TP10.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"822850bb0920b139332e1c14f43b8399b5cec212", @"/Views/Home/Intermedio.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c590f075ba0b7015315f2dbbc95b60d511b7206e", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Intermedio : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<h2>A que pagina desea ir?</h2>\r\n\r\n<a");
            BeginWriteAttribute("href", " href=\'", 37, "\'", 90, 1);
#nullable restore
#line 3 "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\Home\Intermedio.cshtml"
WriteAttributeValue("", 44, Url.Action("Intermedio", "Home", new{id = 0}), 44, 46, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Index.cshtml</a><br><br><br>\r\n<a");
            BeginWriteAttribute("href", " href=\'", 124, "\'", 177, 1);
#nullable restore
#line 4 "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\Home\Intermedio.cshtml"
WriteAttributeValue("", 131, Url.Action("Intermedio", "Home", new{id = 1}), 131, 46, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Reset.cshtml</a><br><br><br>\r\n<a");
            BeginWriteAttribute("href", " href=\'", 211, "\'", 264, 1);
#nullable restore
#line 5 "C:\Users\USER\Desktop\Para ort\Noviembre\TP10 final\Views\Home\Intermedio.cshtml"
WriteAttributeValue("", 218, Url.Action("Intermedio", "Home", new{id = 2}), 218, 46, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Estadisticas.cshtml</a><br><br><br>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
