; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [577 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1148 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 340
	i64 41321585999485087, ; 1: cs\Humanizer.resources => 0x92cdc3770e189f => 401
	i64 87581036036292584, ; 2: bg\Humanizer.resources => 0x137267cfe00ffe8 => 399
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 252
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 124515240864559666, ; 5: da/Humanizer.resources.dll => 0x1ba5df3acdab232 => 402
	i64 131669012237370309, ; 6: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 267
	i64 160518225272466977, ; 7: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 245
	i64 182106475126841455, ; 8: Humanizer.dll => 0x286f8dfd13be06f => 180
	i64 196720943101637631, ; 9: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 10: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 327
	i64 218243443877096319, ; 11: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3075b4182da2b7f => 485
	i64 229794953483747371, ; 12: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 13: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 368
	i64 276471738906638264, ; 14: NuGet.LibraryModel.dll => 0x3d63994ebf6f7b8 => 286
	i64 295915112840604065, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 371
	i64 316157742385208084, ; 16: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 334
	i64 327879173351541149, ; 17: zh-Hans/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x48cdc5ef8de099d => 520
	i64 350667413455104241, ; 18: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 374214195677100225, ; 19: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 220
	i64 406486731283901647, ; 20: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x5a4218748162ccf => 472
	i64 422779754995088667, ; 21: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 22: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 370
	i64 455940612404211789, ; 23: es\Microsoft.CodeAnalysis.Workspaces.resources => 0x653d3924106f04d => 524
	i64 535107122908063503, ; 24: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 250
	i64 535597045548414309, ; 25: NuGet.ProjectModel => 0x76ed2acdaa97565 => 288
	i64 545109961164950392, ; 26: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 542
	i64 560278790331054453, ; 27: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 600385053610559562, ; 28: RCLComum.dll => 0x854ff0678e9484a => 571
	i64 628098050054629041, ; 29: is\Humanizer.resources => 0x8b773d9459f26b1 => 415
	i64 634256334200181332, ; 30: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 215
	i64 634308326490598313, ; 31: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 353
	i64 648449422406355874, ; 32: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 235
	i64 649145001856603771, ; 33: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 34: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 234
	i64 670564002081277297, ; 35: Microsoft.Identity.Client.dll => 0x94e526837380571 => 254
	i64 683390398661839228, ; 36: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 242
	i64 698487678761130678, ; 37: pt-BR/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x9b186d7d48b5ab6 => 530
	i64 702024105029695270, ; 38: System.Drawing.Common => 0x9be17343c0e7726 => 300
	i64 716654442676844823, ; 39: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x9f2116b2a757917 => 482
	i64 726593401349421218, ; 40: vi\Humanizer.resources => 0xa1560d94f9338a2 => 440
	i64 737318085524959015, ; 41: NuGet.Frameworks => 0xa3b7ae46e2faf27 => 285
	i64 742388989842837819, ; 42: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0xa4d7eda58be513b => 278
	i64 750875890346172408, ; 43: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 766770282063650139, ; 44: sr\Humanizer.resources => 0xaa41d824ebadd5b => 432
	i64 785044228661649374, ; 45: pl/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xae509910e591fde => 529
	i64 798450721097591769, ; 46: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 328
	i64 799765834175365804, ; 47: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 48: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 545
	i64 872800313462103108, ; 49: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 339
	i64 895210737996778430, ; 50: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 354
	i64 895583451341852636, ; 51: Microsoft.Build.Framework.dll => 0xc6dc0676bf30fdc => 212
	i64 917904283621948910, ; 52: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0xcbd0d152b187dee => 507
	i64 937459790420187032, ; 53: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 271
	i64 940822596282819491, ; 54: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 55: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 989127641070905171, ; 56: cs\Microsoft.CodeAnalysis.CSharp.resources => 0xdba1659538d2753 => 457
	i64 1001381392624924420, ; 57: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 186
	i64 1010599046655515943, ; 58: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1027655141085176894, ; 59: NuGet.DependencyResolver.Core.dll => 0xe42f6e7f3fc643e => 284
	i64 1060858978308751610, ; 60: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1103868566616655258, ; 61: lv/Humanizer.resources.dll => 0xf51ba9cdfe7c59a => 420
	i64 1120440138749646132, ; 62: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 384
	i64 1121665720830085036, ; 63: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 553
	i64 1152743041985833843, ; 64: RCLProdutos.dll => 0xfff5db06ede6b73 => 572
	i64 1190479578843326660, ; 65: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter => 0x10856ede995028c4 => 192
	i64 1264098730510327121, ; 66: it\Microsoft.CodeAnalysis.Workspaces.resources => 0x118afb1911171d51 => 526
	i64 1268860745194512059, ; 67: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 68: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 229
	i64 1301626418029409250, ; 69: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 70: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 323
	i64 1326794923564391531, ; 71: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 183
	i64 1361298542975918955, ; 72: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0x12e44dcff756236b => 276
	i64 1369545283391376210, ; 73: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 361
	i64 1404195534211153682, ; 74: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 75: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 76: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 77: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 264
	i64 1492407416628141526, ; 78: it\Microsoft.CodeAnalysis.CSharp.resources => 0x14b618a368475dd6 => 461
	i64 1492954217099365037, ; 79: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 80: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1515118852840071656, ; 81: Microsoft.AspNet.Identity.EntityFramework.dll => 0x1506c891b807a1e8 => 182
	i64 1537168428375924959, ; 82: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 83: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 551
	i64 1576750169145655260, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 382
	i64 1578461236315596192, ; 85: zh-Hant\Microsoft.CodeAnalysis.resources => 0x15e7d221a250a5a0 => 456
	i64 1580831035586038082, ; 86: NuGet.Versioning.dll => 0x15f03d738604c942 => 290
	i64 1588552694983773193, ; 87: nb-NO/Humanizer.resources.dll => 0x160bac42737f4c09 => 424
	i64 1604828716977660633, ; 88: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x16457f3720cca2d9 => 474
	i64 1624659445732251991, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 322
	i64 1628611045998245443, ; 90: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 357
	i64 1636321030536304333, ; 91: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 347
	i64 1639340239664632727, ; 92: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 196
	i64 1651782184287836205, ; 93: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659106469264733432, ; 94: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x1706548b2113b4f8 => 491
	i64 1659332977923810219, ; 95: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1660491284991112007, ; 96: zh-Hant/Microsoft.CodeAnalysis.Features.resources.dll => 0x170b4006aa86f347 => 508
	i64 1682513316613008342, ; 97: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1718000862390545637, ; 98: ru/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x17d790ae969a6ce5 => 466
	i64 1731380447121279447, ; 99: Newtonsoft.Json => 0x18071957e9b889d7 => 281
	i64 1735388228521408345, ; 100: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1741042453479892310, ; 101: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x18296ce3128b2556 => 480
	i64 1743969030606105336, ; 102: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 103: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 104: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 262
	i64 1795316252682057001, ; 105: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 321
	i64 1825687700144851180, ; 106: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 107: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 541
	i64 1836611346387731153, ; 108: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 368
	i64 1847446322536158010, ; 109: DocumentFormat.OpenXml.Framework.dll => 0x19a372a4645e933a => 176
	i64 1854145951182283680, ; 110: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 111: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 210
	i64 1875417405349196092, ; 112: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 113: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 318
	i64 1881198190668717030, ; 114: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 563
	i64 1882386767189012826, ; 115: tr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x1a1f94ca9c32715a => 480
	i64 1897575647115118287, ; 116: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 370
	i64 1920760634179481754, ; 117: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 265
	i64 1956582621840560024, ; 118: de\Microsoft.CodeAnalysis.CSharp.resources => 0x1b272d8734824f98 => 458
	i64 1959996714666907089, ; 119: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 563
	i64 1966367835830129316, ; 120: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x1b49f120e06892a4 => 525
	i64 1972384582241139858, ; 121: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 215
	i64 1972385128188460614, ; 122: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 123: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 355
	i64 1983698669889758782, ; 124: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 537
	i64 1988229266119899563, ; 125: tr/Humanizer.resources.dll => 0x1b979bfbc31cb9ab => 436
	i64 2019660174692588140, ; 126: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 555
	i64 2040001226662520565, ; 127: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 128: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 129: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 392
	i64 2075546959977054240, ; 130: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0x1ccdd2f6a0130020 => 275
	i64 2077488400323790517, ; 131: Microsoft.CodeAnalysis.Features.dll => 0x1cd4b8b16e4b46b5 => 219
	i64 2080945842184875448, ; 132: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 133: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 134: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 135: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 281
	i64 2165310824878145998, ; 136: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 315
	i64 2165725771938924357, ; 137: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 325
	i64 2192948757939169934, ; 138: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 227
	i64 2200176636225660136, ; 139: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 249
	i64 2207662933261301575, ; 140: DocumentFormat.OpenXml => 0x1ea331bdb8d63747 => 175
	i64 2219986950236918443, ; 141: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x1ecefa5e86dfd2ab => 467
	i64 2262844636196693701, ; 142: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 339
	i64 2275252695863103437, ; 143: System.Reflection.MetadataLoadContext.dll => 0x1f935245a72b8fcd => 305
	i64 2287834202362508563, ; 144: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 145: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 146: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 195
	i64 2302323944321350744, ; 147: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 559
	i64 2304837677853103545, ; 148: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 367
	i64 2315304989185124968, ; 149: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 150: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 260
	i64 2323958648452149394, ; 151: cs\Microsoft.CodeAnalysis.resources => 0x20405c13f1aff092 => 444
	i64 2329709569556905518, ; 152: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 350
	i64 2335503487726329082, ; 153: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 154: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2352472270739883180, ; 155: Microsoft.DotNet.Scaffolding.Shared => 0x20a5a910f96844ac => 225
	i64 2391088182243165216, ; 156: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x212eda08813d0420 => 277
	i64 2409565208108780844, ; 157: is/Humanizer.resources.dll => 0x21707eca5476cd2c => 415
	i64 2455121377850707897, ; 158: NuGet.Frameworks.dll => 0x221257e2a7424fb9 => 285
	i64 2470498323731680442, ; 159: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 332
	i64 2479423007379663237, ; 160: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 377
	i64 2497223385847772520, ; 161: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 162: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 316
	i64 2554797818648757682, ; 163: System.Runtime.Caching.dll => 0x23747714858085b2 => 306
	i64 2565166297354812447, ; 164: zh-Hant\Humanizer.resources => 0x23994d2817a33c1f => 443
	i64 2592350477072141967, ; 165: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 166: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 562
	i64 2612152650457191105, ; 167: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 261
	i64 2624866290265602282, ; 168: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 169: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2654950952670509785, ; 170: pl/Humanizer.resources.dll => 0x24d847d32e02bad9 => 426
	i64 2656907746661064104, ; 171: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 237
	i64 2662981627730767622, ; 172: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 537
	i64 2704260652175460545, ; 173: System.Composition.Convention => 0x258776bc40fc08c1 => 294
	i64 2706075432581334785, ; 174: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2741613924229396860, ; 175: EntityFramework.SqlServer.dll => 0x260c2b56a0f5397c => 177
	i64 2746068332251068081, ; 176: da\Humanizer.resources => 0x261bfe9950c636b1 => 402
	i64 2781169761569919449, ; 177: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 262
	i64 2783046991838674048, ; 178: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2783524070304581857, ; 179: pl/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x26a11064ea4108e1 => 490
	i64 2787234703088983483, ; 180: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 372
	i64 2789714023057451704, ; 181: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 257
	i64 2815524396660695947, ; 182: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2844780895111324988, ; 183: System.Composition.TypedParts => 0x277ab126dceda53c => 297
	i64 2846400827948145528, ; 184: ru/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x27807278de3a1b78 => 518
	i64 2851879596360956261, ; 185: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 298
	i64 2853227249135621881, ; 186: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x2798b310e83196f9 => 520
	i64 2895129759130297543, ; 187: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 542
	i64 2915341129155406726, ; 188: fr/Microsoft.CodeAnalysis.resources.dll => 0x28755f4f9264eb86 => 447
	i64 2923871038697555247, ; 189: Jsr305Binding => 0x2893ad37e69ec52f => 385
	i64 2929104377493279868, ; 190: de\Humanizer.resources => 0x28a644e98a87547c => 403
	i64 2947509796159691470, ; 191: Microsoft.Build.dll => 0x28e7a88b04151ace => 211
	i64 2965696071044998957, ; 192: Microsoft.Build => 0x292844dd1a68a72d => 211
	i64 3017136373564924869, ; 193: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 194: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 384
	i64 3063847325783385934, ; 195: System.ClientModel.dll => 0x2a84f8e8eb59674e => 291
	i64 3080904423057169497, ; 196: RCLAPI => 0x2ac1923fdb409c59 => 569
	i64 3106852385031680087, ; 197: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 198: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3124199912618776333, ; 199: pl/Microsoft.CodeAnalysis.Features.resources.dll => 0x2b5b63448ef2d70d => 503
	i64 3135773902340015556, ; 200: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3164891818821290784, ; 201: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0x2bebf45745620b20 => 273
	i64 3168817962471953758, ; 202: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 245
	i64 3177281325366702732, ; 203: lv\Humanizer.resources => 0x2c17f8880df6f28c => 420
	i64 3202985053082255807, ; 204: ko-KR/Humanizer.resources.dll => 0x2c7349ef85da81bf => 418
	i64 3219426262500628937, ; 205: zh-Hans\Humanizer.resources => 0x2cadb320e4e9d9c9 => 442
	i64 3238539556702659506, ; 206: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 279
	i64 3245892109222566308, ; 207: Humanizer => 0x2d0bb9ad057459a4 => 180
	i64 3266690593535380875, ; 208: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 187
	i64 3276991435551191081, ; 209: tr\Microsoft.CodeAnalysis.resources => 0x2d7a36593006b029 => 454
	i64 3281594302220646930, ; 210: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 211: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 348
	i64 3296267368358378859, ; 212: fr\Humanizer.resources => 0x2dbeb1b507b67d6b => 408
	i64 3300711494004215107, ; 213: az\Humanizer.resources => 0x2dce7b9daa2b8d43 => 398
	i64 3303437397778967116, ; 214: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 319
	i64 3311221304742556517, ; 215: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 216: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 217: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 218: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 395
	i64 3347716888374667791, ; 219: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x2e757ac5e425ea0f => 275
	i64 3389383627130097293, ; 220: zh-Hant/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x2f0982737e9d4e8d => 534
	i64 3396143930648122816, ; 221: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 240
	i64 3402534845034375023, ; 222: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 301
	i64 3429672777697402584, ; 223: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 267
	i64 3437845325506641314, ; 224: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3485247931931847483, ; 225: NuGet.DependencyResolver.Core => 0x305e168748f66b3b => 284
	i64 3493805808809882663, ; 226: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 374
	i64 3494946837667399002, ; 227: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 232
	i64 3508450208084372758, ; 228: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3518107571760441102, ; 229: mt/Humanizer.resources.dll => 0x30d2d4326064a70e => 422
	i64 3518196480742834290, ; 230: hr\Humanizer.resources => 0x30d3250f1cb4c072 => 411
	i64 3522470458906976663, ; 231: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 373
	i64 3523004241079211829, ; 232: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 231
	i64 3531994851595924923, ; 233: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 234: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 235: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 557
	i64 3571415421602489686, ; 236: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3571549974538685733, ; 237: es\Humanizer.resources => 0x3190b1c769ef0d25 => 405
	i64 3638003163729360188, ; 238: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 233
	i64 3647754201059316852, ; 239: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 240: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 232
	i64 3659371656528649588, ; 241: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 313
	i64 3716579019761409177, ; 242: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 243: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 366
	i64 3753897248517198740, ; 244: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 194
	i64 3772598417116884899, ; 245: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 340
	i64 3794322307918838949, ; 246: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 207
	i64 3869221888984012293, ; 247: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 247
	i64 3869649043256705283, ; 248: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 249: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 243
	i64 3890352374528606784, ; 250: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 265
	i64 3919223565570527920, ; 251: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 252: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 253: System.Memory => 0x370b03412596249e => 62
	i64 3979027889843957915, ; 254: zh-Hant/Microsoft.CodeAnalysis.resources.dll => 0x373858c8b585709b => 456
	i64 3986466921713458903, ; 255: System.Composition.Hosting => 0x3752c68b49935ed7 => 295
	i64 3992675920548082773, ; 256: ru/Microsoft.CodeAnalysis.resources.dll => 0x3768d5987b863455 => 453
	i64 4005135229510678782, ; 257: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 199
	i64 4006972109285359177, ; 258: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 259: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4029369304447093565, ; 260: zh-Hant/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x37eb3208ac6e8b3d => 495
	i64 4050160939984404678, ; 261: hy\Humanizer.resources => 0x38350fea8eeec0c6 => 413
	i64 4054446190056038390, ; 262: Microsoft.CodeAnalysis.Scripting => 0x384449541739dff6 => 221
	i64 4073500526318903918, ; 263: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 264: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 263
	i64 4103536282112930583, ; 265: pl\Humanizer.resources => 0x38f2b081d244b317 => 426
	i64 4120493066591692148, ; 266: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 568
	i64 4148881117810174540, ; 267: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 268: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4159398497900796080, ; 269: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x39b926e57aab98b0 => 517
	i64 4167269041631776580, ; 270: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 271: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 272: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 273: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 334
	i64 4204317816698292809, ; 274: zh-Hans/Humanizer.resources.dll => 0x3a58bcc76325ca49 => 442
	i64 4204757096761433397, ; 275: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x3a5a4c4d3f449d35 => 481
	i64 4205801962323029395, ; 276: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4206372723267232883, ; 277: RCLAPI.dll => 0x3a6009b49b3c6473 => 569
	i64 4225924121207573736, ; 278: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 184
	i64 4229098256836753377, ; 279: zh-Hans/Microsoft.CodeAnalysis.Features.resources.dll => 0x3ab0c67536fa77e1 => 507
	i64 4235503420553921860, ; 280: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4243591448627561453, ; 281: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 204
	i64 4250192876909962317, ; 282: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 200
	i64 4282138915307457788, ; 283: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4303454211501947484, ; 284: ru/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x3bb8f0cdffbb7a5c => 531
	i64 4321865999928413850, ; 285: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 299
	i64 4329480046338915646, ; 286: Microsoft.DotNet.Scaffolding.Shared.dll => 0x3c156729e02c3d3e => 225
	i64 4356591372459378815, ; 287: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 565
	i64 4358123152197776357, ; 288: el/Humanizer.resources.dll => 0x3c7b29eaa62773e5 => 404
	i64 4371205382599439717, ; 289: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3ca9a422c61d7565 => 483
	i64 4373617458794931033, ; 290: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4376666294362535240, ; 291: RCLComum => 0x3cbd0ace5fe77548 => 571
	i64 4384840217421645357, ; 292: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 190
	i64 4397634830160618470, ; 293: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 294: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 295: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4501269696413264595, ; 296: fr-BE\Humanizer.resources => 0x3e77b8f0acf16ad3 => 409
	i64 4513320955448359355, ; 297: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 228
	i64 4533124835995628778, ; 298: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4540617990348381687, ; 299: de/Microsoft.CodeAnalysis.Features.resources.dll => 0x3f03840147769df7 => 497
	i64 4575529722446359306, ; 300: zh-Hans/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x3f7f8c0a55a82b0a => 533
	i64 4612482779465751747, ; 301: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 227
	i64 4633188143799146779, ; 302: fr\Microsoft.CodeAnalysis.resources => 0x404c6411b0b3191b => 447
	i64 4636684751163556186, ; 303: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 378
	i64 4656760805671048172, ; 304: System.Reflection.MetadataLoadContext => 0x40a02347b9fc13ec => 305
	i64 4672453897036726049, ; 305: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 306: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 535
	i64 4716677666592453464, ; 307: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 308: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4754839618449649793, ; 309: az/Humanizer.resources.dll => 0x41fc9570d5a53081 => 398
	i64 4759461199762736555, ; 310: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 352
	i64 4766253714849837372, ; 311: pt-BR/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x422522803f02b13c => 491
	i64 4794310189461587505, ; 312: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 316
	i64 4795410492532947900, ; 313: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 373
	i64 4809057822547766521, ; 314: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 315: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4823480931696991453, ; 316: sr-Latn\Humanizer.resources => 0x42f07259faab5cdd => 433
	i64 4848309767277065693, ; 317: ro\Humanizer.resources => 0x4348a80bbf9b35dd => 428
	i64 4849062125611947093, ; 318: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x434b544fd2e69455 => 272
	i64 4853321196694829351, ; 319: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4855769773892993059, ; 320: cs/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x436328e1e3f88023 => 483
	i64 4945597469301700026, ; 321: ja/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x44a24ab207cc75ba => 488
	i64 4958553661909609300, ; 322: ro/Humanizer.resources.dll => 0x44d05248b1d5ab54 => 428
	i64 5055365687667823624, ; 323: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 317
	i64 5080318486421939212, ; 324: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x4680eabf2907a40c => 478
	i64 5081566143765835342, ; 325: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5083120864858317402, ; 326: zh-Hans\Microsoft.CodeAnalysis.resources => 0x468adf7ebc41a25a => 455
	i64 5099468265966638712, ; 327: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5101282090298625898, ; 328: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x46cb65088b4fcf6a => 527
	i64 5103417709280584325, ; 329: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5106322746114322454, ; 330: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 183
	i64 5107702058248948463, ; 331: ru\Microsoft.CodeAnalysis.CSharp.resources => 0x46e233f5d075caef => 466
	i64 5112836352847824253, ; 332: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 209
	i64 5119492727527269518, ; 333: Microsoft.AspNet.Identity.Core.dll => 0x470c1782ee75648e => 181
	i64 5142942877070550468, ; 334: es/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x475f674c57ea65c4 => 511
	i64 5177565741364132164, ; 335: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 202
	i64 5182934613077526976, ; 336: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 337: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 193
	i64 5203618020066742981, ; 338: Xamarin.Essentials => 0x4836f704f0e652c5 => 383
	i64 5205316157927637098, ; 339: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 359
	i64 5207799923214932408, ; 340: fr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x4845d270248859b8 => 512
	i64 5244375036463807528, ; 341: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 342: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 343: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 344: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 351
	i64 5290786973231294105, ; 345: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5341528465380060113, ; 346: ko\Microsoft.CodeAnalysis.Features.resources => 0x4a20ebd6b09dabd1 => 502
	i64 5376510917114486089, ; 347: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 377
	i64 5408338804355907810, ; 348: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 375
	i64 5423376490970181369, ; 349: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 350: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5440726247657876941, ; 351: th-TH\Humanizer.resources => 0x4b8157b22fcaadcd => 435
	i64 5446034149219586269, ; 352: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 353: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 330
	i64 5457765010617926378, ; 354: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 355: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 561
	i64 5478493157351955748, ; 356: NuGet.Protocol.dll => 0x4c078480145f1d24 => 289
	i64 5488847537322884930, ; 357: System.Windows.Extensions => 0x4c2c4dc108687f42 => 311
	i64 5507995362134886206, ; 358: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 359: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 564
	i64 5527431512186326818, ; 360: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 361: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 362: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 363: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 320
	i64 5586474322064658720, ; 364: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x4d8724cc29815120 => 460
	i64 5591791169662171124, ; 365: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5610815111739789596, ; 366: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 186
	i64 5650097808083101034, ; 367: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 368: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 380
	i64 5697338526674305454, ; 369: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x4f1103344791c1ae => 464
	i64 5717718751406333486, ; 370: NuGet.Configuration => 0x4f596ae91f2a1e2e => 283
	i64 5724799082821825042, ; 371: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 343
	i64 5735909776092946032, ; 372: bg/Humanizer.resources.dll => 0x4f9a0b8d1bb5de70 => 399
	i64 5757522595884336624, ; 373: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 329
	i64 5783556987928984683, ; 374: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5802406400352127139, ; 375: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x508649e0ef7108a3 => 278
	i64 5843654980037707126, ; 376: it/Humanizer.resources.dll => 0x5118d53e4b170576 => 416
	i64 5896680224035167651, ; 377: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 349
	i64 5959344983920014087, ; 378: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 369
	i64 5979151488806146654, ; 379: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5981100626307227755, ; 380: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x5301235494e8a06b => 465
	i64 5984759512290286505, ; 381: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 5985025747959996647, ; 382: Microsoft.DiaSymReader.dll => 0x530f15352eb8e0e7 => 224
	i64 6027980928648036188, ; 383: ko\Microsoft.CodeAnalysis.Scripting.resources => 0x53a7b0b78ce53f5c => 515
	i64 6037456759088912127, ; 384: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x53c95aef404696ff => 476
	i64 6052006988162547083, ; 385: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x53fd0c4a739c3d8b => 488
	i64 6052904953572895746, ; 386: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x54003cfc50ea2c02 => 493
	i64 6068057819846744445, ; 387: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 558
	i64 6102788177522843259, ; 388: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 369
	i64 6123415518128259274, ; 389: sr/Humanizer.resources.dll => 0x54fabdf8722640ca => 432
	i64 6158894866017230448, ; 390: uz-Latn-UZ/Humanizer.resources.dll => 0x5578ca3fd9ef1e70 => 439
	i64 6165777499998190031, ; 391: ProdutosMAUI => 0x55913df7f37cf9cf => 0
	i64 6167632067760390963, ; 392: ja/Microsoft.CodeAnalysis.resources.dll => 0x5597d4b0282a8333 => 449
	i64 6182525717148725503, ; 393: Microsoft.AspNetCore.Components.Authorization => 0x55ccbe62215df0ff => 189
	i64 6200764641006662125, ; 394: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 558
	i64 6222399776351216807, ; 395: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 396: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6270168066149956752, ; 397: RCLProdutos => 0x57041ca2a8ddbc90 => 572
	i64 6278736998281604212, ; 398: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 399: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6296727896078076854, ; 400: ja/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x576278a8f506cbb6 => 462
	i64 6319713645133255417, ; 401: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 353
	i64 6357457916754632952, ; 402: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 573
	i64 6362365112271840035, ; 403: NuGet.Protocol => 0x584ba95c404d2323 => 289
	i64 6363738694785491292, ; 404: es/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x58508aa05a18e15c => 485
	i64 6397768165450447711, ; 405: es\Microsoft.CodeAnalysis.CSharp.resources => 0x58c9703fe8f9fb5f => 459
	i64 6401687960814735282, ; 406: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 350
	i64 6405571018036478432, ; 407: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x58e528e7199a01e0 => 489
	i64 6411784535338627997, ; 408: zh-Hant/Humanizer.resources.dll => 0x58fb3c105533b39d => 443
	i64 6413345575751201406, ; 409: pt-BR/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x5900c7d26079327e => 478
	i64 6478287442656530074, ; 410: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 546
	i64 6501546733837973877, ; 411: id\Humanizer.resources => 0x5a3a224ec9037975 => 414
	i64 6504860066809920875, ; 412: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 325
	i64 6548213210057960872, ; 413: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 336
	i64 6557084851308642443, ; 414: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 381
	i64 6560151584539558821, ; 415: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 251
	i64 6584419190991186517, ; 416: NuGet.Versioning => 0x5b608e5e534b6a55 => 290
	i64 6589202984700901502, ; 417: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 387
	i64 6591971792923354531, ; 418: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 351
	i64 6617685658146568858, ; 419: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6642279005832796386, ; 420: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x5c2e1d9041b2d8e2 => 532
	i64 6660943916934422530, ; 421: ru/Microsoft.CodeAnalysis.Features.resources.dll => 0x5c706d3385ace002 => 505
	i64 6662095722613742648, ; 422: ar\Humanizer.resources => 0x5c7484c32e0a9c38 => 397
	i64 6713440830605852118, ; 423: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 424: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 425: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 554
	i64 6772837112740759457, ; 426: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 427: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 557
	i64 6785756066475633138, ; 428: ja\Microsoft.CodeAnalysis.Features.resources => 0x5e2bd930a2bb69f2 => 501
	i64 6786606130239981554, ; 429: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 430: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6799665367296212282, ; 431: uk\Humanizer.resources => 0x5e5d43a019377d3a => 437
	i64 6800157191326250309, ; 432: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x5e5f02efcdd1b545 => 217
	i64 6814185388980153342, ; 433: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876673961564320397, ; 434: hr/Humanizer.resources.dll => 0x5f6eda88ab38328d => 411
	i64 6876862101832370452, ; 435: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6881674271711615136, ; 436: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x5f809e4a1950d8a0 => 529
	i64 6894844156784520562, ; 437: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911517594278112275, ; 438: tr\Microsoft.CodeAnalysis.Features.resources => 0x5feaa4a219cf2c13 => 506
	i64 6911788284027924527, ; 439: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 201
	i64 6916425539059316312, ; 440: de\Microsoft.CodeAnalysis.resources => 0x5ffc14620b11f658 => 445
	i64 6920570528939222495, ; 441: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 194
	i64 6964286494529358928, ; 442: ku\Humanizer.resources => 0x60a61dab1c790c50 => 419
	i64 6985819478807084611, ; 443: uz-Cyrl-UZ\Humanizer.resources => 0x60f29dcdb34cfe43 => 438
	i64 7011053663211085209, ; 444: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 345
	i64 7056733531117042875, ; 445: ku/Humanizer.resources.dll => 0x61ee8dc224d1bcbb => 419
	i64 7060448593242414269, ; 446: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 309
	i64 7060896174307865760, ; 447: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7082786142175585936, ; 448: uz-Cyrl-UZ/Humanizer.resources.dll => 0x624b1c78586f6690 => 438
	i64 7083547580668757502, ; 449: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 450: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 451: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 346
	i64 7105430439328552570, ; 452: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 307
	i64 7112547816752919026, ; 453: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7148515934569711863, ; 454: NuGet.Packaging.dll => 0x6334a15e373f48f7 => 287
	i64 7188876148444261747, ; 455: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 293
	i64 7192745174564810625, ; 456: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 315
	i64 7196173167114878359, ; 457: tr/Microsoft.CodeAnalysis.Features.resources.dll => 0x63ddf15e58147d97 => 506
	i64 7219616639871433054, ; 458: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x64313b153209395e => 462
	i64 7220009545223068405, ; 459: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 561
	i64 7270811800166795866, ; 460: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 461: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7304135784225337694, ; 462: fi-FI\Humanizer.resources => 0x655d80cbf9f8715e => 407
	i64 7316205155833392065, ; 463: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 464: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 202
	i64 7338192458477945005, ; 465: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 466: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 304
	i64 7349431895026339542, ; 467: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 314
	i64 7377312882064240630, ; 468: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7398281968956400768, ; 469: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x66abfa40c3d2e480 => 477
	i64 7412872140774854801, ; 470: pt-BR/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x66dfcfefdc465091 => 465
	i64 7460218090897346478, ; 471: sr-Latn/Humanizer.resources.dll => 0x678804d3e6e10fae => 433
	i64 7488575175965059935, ; 472: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 473: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 474: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 301
	i64 7579876713893044336, ; 475: de\Microsoft.CodeAnalysis.Features.resources => 0x693121b61cd9a070 => 497
	i64 7592577537120840276, ; 476: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 477: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7637365915383206639, ; 478: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 383
	i64 7654504624184590948, ; 479: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7659175115073460922, ; 480: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x6a4adb2fe6771aba => 471
	i64 7694700312542370399, ; 481: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 482: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 552
	i64 7714652370974252055, ; 483: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 484: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 354
	i64 7735176074855944702, ; 485: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 486: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 390
	i64 7791074099216502080, ; 487: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7800262899020527687, ; 488: pt\Humanizer.resources => 0x6c4019c772c6f847 => 427
	i64 7820441508502274321, ; 489: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 490: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 322
	i64 7872210730649581996, ; 491: de/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x6d3fb5f36562f9ac => 458
	i64 7874680181924468550, ; 492: Microsoft.CodeAnalysis.Elfie => 0x6d487be7536a9746 => 218
	i64 7877653024023762272, ; 493: Microsoft.CodeAnalysis.CSharp.Features => 0x6d530bb010b7d560 => 216
	i64 7880754438529995359, ; 494: ko/Microsoft.CodeAnalysis.resources.dll => 0x6d5e106866a9d25f => 450
	i64 7882403529043535425, ; 495: fa\Humanizer.resources => 0x6d63ec3f34ece641 => 406
	i64 7929771293765145963, ; 496: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x6e0c34fa5af6156b => 490
	i64 7940487153141724357, ; 497: es\Microsoft.CodeAnalysis.Features.resources => 0x6e3246feca90b4c5 => 498
	i64 7972383140441761405, ; 498: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 230
	i64 8004205632400797805, ; 499: de/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x6f14a69d546e306d => 484
	i64 8004654074791351515, ; 500: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x6f163e7875d254db => 528
	i64 8014722069583580780, ; 501: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 190
	i64 8025517457475554965, ; 502: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 503: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8032882159747084140, ; 504: pl\Microsoft.CodeAnalysis.Features.resources => 0x6f7a87c3a64c2f6c => 503
	i64 8064050204834738623, ; 505: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8069053972940814620, ; 506: ko/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x6ffb09d63297791c => 528
	i64 8083354569033831015, ; 507: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 348
	i64 8085230611270010360, ; 508: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 509: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 510: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 511: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8129655575090457984, ; 512: de\Microsoft.CodeAnalysis.Workspaces.resources => 0x70d256ac3b8a6d80 => 523
	i64 8132023827843563080, ; 513: es/Humanizer.resources.dll => 0x70dac0960ba0be48 => 405
	i64 8167236081217502503, ; 514: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 515: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 516: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 394
	i64 8198475655723014119, ; 517: Microsoft.CodeAnalysis.CSharp.Features.dll => 0x71c6d62be70ed7e7 => 216
	i64 8234598844743906698, ; 518: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 255
	i64 8246048515196606205, ; 519: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 268
	i64 8246804492189889837, ; 520: Microsoft.VisualStudio.Web.CodeGeneration => 0x727288fe0112f52d => 272
	i64 8264926008854159966, ; 521: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 522: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 523: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 524: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8373406175696939096, ; 525: ko/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x7434508d767a6858 => 515
	i64 8398329775253868912, ; 526: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 331
	i64 8399132193771933415, ; 527: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 253
	i64 8400357532724379117, ; 528: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 363
	i64 8410671156615598628, ; 529: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 530: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 352
	i64 8442828414178614895, ; 531: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 197
	i64 8452111768915975231, ; 532: ko/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x754beedf64229c3f => 463
	i64 8476857680833348370, ; 533: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 310
	i64 8490820071440741817, ; 534: NuGet.Packaging => 0x75d573de61fb75b9 => 287
	i64 8513291706828295435, ; 535: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 271
	i64 8518412311883997971, ; 536: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8538413690921358003, ; 537: tr/Microsoft.CodeAnalysis.resources.dll => 0x767e8a0370b312b3 => 454
	i64 8563666267364444763, ; 538: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8564067269325865571, ; 539: tr\Humanizer.resources => 0x76d9adce9cb7c263 => 436
	i64 8595707132524137149, ; 540: cs/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x774a161853648abd => 457
	i64 8598790081731763592, ; 541: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 342
	i64 8601935802264776013, ; 542: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 375
	i64 8611142787134128904, ; 543: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 201
	i64 8614108721271900878, ; 544: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 556
	i64 8623059219396073920, ; 545: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 546: Java.Interop => 0x77b654e585b55834 => 168
	i64 8626555624070097734, ; 547: tr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x77b7aea277d8ab46 => 519
	i64 8638972117149407195, ; 548: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 549: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 362
	i64 8648495978913578441, ; 550: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 551: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 556
	i64 8684531736582871431, ; 552: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8710841382710615958, ; 553: vi/Humanizer.resources.dll => 0x78e32015e73d1f96 => 440
	i64 8716309967192660084, ; 554: fr/Humanizer.resources.dll => 0x78f68dbbf2b71874 => 408
	i64 8725526185868997716, ; 555: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8747977504141423047, ; 556: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0x79670f30f57531c7 => 468
	i64 8784689560710160013, ; 557: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources => 0x79e97c9cb8361e8d => 534
	i64 8853378295825400934, ; 558: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 391
	i64 8918797492400444619, ; 559: dotnet-aspnet-codegenerator-design.dll => 0x7bc5ef10c62c54cb => 274
	i64 8932705878791833663, ; 560: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x7bf758ab546e483f => 530
	i64 8941376889969657626, ; 561: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 562: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 365
	i64 8954753533646919997, ; 563: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 564: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 254
	i64 8988527500359839366, ; 565: Mono.TextTemplating => 0x7cbdaa2368c72e86 => 280
	i64 8996688386153361080, ; 566: ar/Humanizer.resources.dll => 0x7cdaa86bb38daeb8 => 397
	i64 9045785047181495996, ; 567: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 566
	i64 9052662452269567435, ; 568: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 259
	i64 9111603110219107042, ; 569: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 231
	i64 9138683372487561558, ; 570: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9146833000203878303, ; 571: pl/Microsoft.CodeAnalysis.resources.dll => 0x7ef01426d4f8ff9f => 451
	i64 9165872221346508209, ; 572: es/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x7f33b838f1faadb1 => 459
	i64 9250544137016314866, ; 573: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 226
	i64 9258038534689720297, ; 574: Microsoft.CodeAnalysis.Workspaces => 0x807b28ff010f07e9 => 222
	i64 9259143645429201038, ; 575: zh-CN\Humanizer.resources => 0x807f1616a61f788e => 441
	i64 9312692141327339315, ; 576: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 380
	i64 9320828767200221179, ; 577: ko-KR\Humanizer.resources => 0x815a3c61413617fb => 418
	i64 9324707631942237306, ; 578: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 321
	i64 9413000421947348542, ; 579: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 200
	i64 9427266486299436557, ; 580: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 258
	i64 9441911982924282715, ; 581: ms-MY\Humanizer.resources => 0x830868ec4eb4bb5b => 421
	i64 9468215723722196442, ; 582: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 583: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 229
	i64 9508211702228543126, ; 584: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 197
	i64 9554839972845591462, ; 585: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 586: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 386
	i64 9584643793929893533, ; 587: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9640812368965969847, ; 588: it/Microsoft.CodeAnalysis.resources.dll => 0x85cb0bc53668a7b7 => 448
	i64 9643464320970503839, ; 589: Microsoft.AspNet.Identity.EntityFramework => 0x85d477b4e799b69f => 182
	i64 9650158550865574924, ; 590: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 236
	i64 9659729154652888475, ; 591: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 592: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 593: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 594: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 332
	i64 9682672435579207921, ; 595: sv\Humanizer.resources => 0x865fc347772a40f1 => 434
	i64 9702891218465930390, ; 596: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9776157902332307015, ; 597: de/Microsoft.CodeAnalysis.resources.dll => 0x87abe3d0dca52647 => 445
	i64 9776521250654317172, ; 598: tr\Microsoft.CodeAnalysis.Scripting.resources => 0x87ad2e477c4eea74 => 519
	i64 9780093022148426479, ; 599: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 382
	i64 9794480685959084101, ; 600: zh-CN/Humanizer.resources.dll => 0x87ecfc4a5e03f845 => 441
	i64 9808709177481450983, ; 601: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9814504515138190298, ; 602: Microsoft.AspNetCore.Authentication.Cookies => 0x88341fdb67477bda => 185
	i64 9815966120248698980, ; 603: it\Microsoft.CodeAnalysis.resources => 0x8839512ddcb16864 => 448
	i64 9819168441846169364, ; 604: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 259
	i64 9825649861376906464, ; 605: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 329
	i64 9834056768316610435, ; 606: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 607: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 608: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 196
	i64 9865124420436172353, ; 609: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x88e7f66489211e41 => 509
	i64 9907349773706910547, ; 610: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 342
	i64 9924019376719386149, ; 611: EntityFramework => 0x89b9330b1d73d625 => 178
	i64 9933555792566666578, ; 612: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9934643601996120594, ; 613: it/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x89def1b853160212 => 526
	i64 9934914332219610418, ; 614: cs/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x89dfe7f29de31532 => 509
	i64 9956195530459977388, ; 615: Microsoft.Maui => 0x8a2b8315b36616ac => 266
	i64 9956796922710453736, ; 616: fr\Microsoft.CodeAnalysis.Features.resources => 0x8a2da60c3edbede8 => 499
	i64 9959489431142554298, ; 617: System.CodeDom => 0x8a3736deb7825aba => 292
	i64 9969399256958809458, ; 618: de/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x8a5a6bcdd712b572 => 523
	i64 9974604633896246661, ; 619: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 620: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 541
	i64 10017511394021241210, ; 621: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 249
	i64 10038780035334861115, ; 622: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10046769252087645098, ; 623: hy/Humanizer.resources.dll => 0x8b6d4b679b0043aa => 413
	i64 10049750028500509718, ; 624: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b77e267b23ea416 => 522
	i64 10051358222726253779, ; 625: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10069115991682777292, ; 626: cs/Microsoft.CodeAnalysis.Features.resources.dll => 0x8bbcafa55e7500cc => 496
	i64 10073394476920586566, ; 627: cs/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x8bcbe2e7d73bc146 => 470
	i64 10078727084704864206, ; 628: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 629: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 630: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 264
	i64 10105485790837105934, ; 631: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10137402534451296909, ; 632: nb\Humanizer.resources => 0x8caf49e5131d3a8d => 423
	i64 10143853363526200146, ; 633: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 538
	i64 10156177305155881551, ; 634: zh-Hans/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x8cf1fd7305b34a4f => 481
	i64 10205853378024263619, ; 635: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 234
	i64 10211083914091251869, ; 636: af/Humanizer.resources.dll => 0x8db50eb81f1d489d => 396
	i64 10226222362177979215, ; 637: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 392
	i64 10229024438826829339, ; 638: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 336
	i64 10236703004850800690, ; 639: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10243523786148452761, ; 640: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 203
	i64 10245369515835430794, ; 641: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 642: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 389
	i64 10347389959537838075, ; 643: ru\Microsoft.CodeAnalysis.resources => 0x8f9950586ab247fb => 453
	i64 10356409254419335618, ; 644: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x8fb95b58a63b89c2 => 492
	i64 10360651442923773544, ; 645: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 646: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 647: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 374
	i64 10389735884413426201, ; 648: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x902fc1bd5c975a19 => 486
	i64 10406448008575299332, ; 649: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 395
	i64 10426284384445314437, ; 650: es\Microsoft.CodeAnalysis.resources => 0x90b19a682610b585 => 446
	i64 10430153318873392755, ; 651: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 333
	i64 10447083246144586668, ; 652: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 210
	i64 10448061532586656644, ; 653: System.Composition.Convention.dll => 0x90fef89b91404384 => 294
	i64 10482770130019698767, ; 654: Microsoft.CodeAnalysis.Elfie.dll => 0x917a47e4a5e6484f => 218
	i64 10485858537740568411, ; 655: Microsoft.AspNetCore.Identity => 0x918540c89b06075b => 206
	i64 10503238815856555353, ; 656: ko\Microsoft.CodeAnalysis.resources => 0x91c3000df2397559 => 450
	i64 10505200486220552556, ; 657: ja/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x91c9f82eeb6fd96c => 514
	i64 10506226065143327199, ; 658: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 536
	i64 10546663366131771576, ; 659: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 660: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10568800835145017495, ; 661: tr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x92abec5d18aba897 => 532
	i64 10595762989148858956, ; 662: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10611392064737558276, ; 663: ko/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x93433cdc7f14bf04 => 489
	i64 10650478070646097812, ; 664: System.IO.Packaging => 0x93ce196068f2c794 => 302
	i64 10670374202010151210, ; 665: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10693597305048523572, ; 666: NuGet.ProjectModel.dll => 0x94674a17827de334 => 288
	i64 10714184849103829812, ; 667: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10722976995944589488, ; 668: EntityFramework.dll => 0x94cfaac3d9f668b0 => 178
	i64 10734191584620811116, ; 669: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 242
	i64 10764062273958828890, ; 670: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x9561a19b937fdb5a => 487
	i64 10785150219063592792, ; 671: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 672: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 228
	i64 10821903387889976827, ; 673: fr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x962f1fcb5cc745fb => 486
	i64 10822644899632537592, ; 674: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10824154905462150702, ; 675: ko/Microsoft.CodeAnalysis.Features.resources.dll => 0x96371f89a5df962e => 502
	i64 10830817578243619689, ; 676: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10839431236348706757, ; 677: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x966d654799d67fc5 => 273
	i64 10847732767863316357, ; 678: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 323
	i64 10881928253345575956, ; 679: de\Microsoft.CodeAnalysis.Scripting.resources => 0x970460176bf33414 => 510
	i64 10889380495983713167, ; 680: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 223
	i64 10899834349646441345, ; 681: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 682: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 683: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10972388274974066310, ; 684: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 208
	i64 11002576679268595294, ; 685: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 248
	i64 11009005086950030778, ; 686: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 266
	i64 11011906640654766267, ; 687: pl/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x98d226befffe10bb => 464
	i64 11019817191295005410, ; 688: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 320
	i64 11023048688141570732, ; 689: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 690: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11043800135245186131, ; 691: ru/Humanizer.resources.dll => 0x994375b5dfb34453 => 429
	i64 11047101296015504039, ; 692: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 279
	i64 11050168729868392624, ; 693: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 205
	i64 11051904132540108364, ; 694: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 241
	i64 11067960147806077617, ; 695: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0x99994b1d262942b1 => 521
	i64 11071824625609515081, ; 696: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 387
	i64 11103970607964515343, ; 697: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 547
	i64 11104005271702840755, ; 698: nb/Humanizer.resources.dll => 0x9a1959f68be9a5b3 => 423
	i64 11136029745144976707, ; 699: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 385
	i64 11162124722117608902, ; 700: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 379
	i64 11188319605227840848, ; 701: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11205990333120096000, ; 702: nl/Humanizer.resources.dll => 0x9b83acd60a15a700 => 425
	i64 11218356222449480316, ; 703: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 188
	i64 11220793807500858938, ; 704: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 550
	i64 11226290749488709958, ; 705: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 251
	i64 11235648312900863002, ; 706: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11293348803414341309, ; 707: Microsoft.AspNetCore.Identity.dll => 0x9cba08e6e81836bd => 206
	i64 11322957309738927550, ; 708: mt\Humanizer.resources => 0x9d2339ae7de6c5be => 422
	i64 11329751333533450475, ; 709: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 710: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 335
	i64 11341245327015630248, ; 711: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 298
	i64 11347436699239206956, ; 712: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 713: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 364
	i64 11430352499646021155, ; 714: ms-MY/Humanizer.resources.dll => 0x9ea0c509aee63e23 => 421
	i64 11432101114902388181, ; 715: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 716: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 717: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 718: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 719: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 345
	i64 11509430195292955891, ; 720: it/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x9fb9b5c8759764f3 => 513
	i64 11513602507638267977, ; 721: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 303
	i64 11517440453979132662, ; 722: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 256
	i64 11518296021396496455, ; 723: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 548
	i64 11527137748606195310, ; 724: Mono.TextTemplating.dll => 0x9ff89eb57eab166e => 280
	i64 11529969570048099689, ; 725: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 379
	i64 11530571088791430846, ; 726: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 247
	i64 11564861549255168062, ; 727: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 214
	i64 11580057168383206117, ; 728: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 318
	i64 11591352189662810718, ; 729: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 372
	i64 11597308262950669618, ; 730: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 246
	i64 11597940890313164233, ; 731: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 732: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 346
	i64 11674412572205198830, ; 733: it\Microsoft.CodeAnalysis.Scripting.resources => 0xa203d86177a52dee => 513
	i64 11690125841757694131, ; 734: es/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa23bab842194e8b3 => 524
	i64 11691353810037938030, ; 735: pl\Microsoft.CodeAnalysis.resources => 0xa2400858c6b8976e => 451
	i64 11692977985522001935, ; 736: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 737: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 544
	i64 11707554492040141440, ; 738: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 739: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11851835839753101194, ; 740: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xa47a2de70cba1f8a => 217
	i64 11991047634523762324, ; 741: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 742: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 308
	i64 12040886584167504988, ; 743: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 744: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 243
	i64 12058074296353848905, ; 745: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 244
	i64 12063623837170009990, ; 746: System.Security => 0xa76a99f6ce740786 => 130
	i64 12070042708472425620, ; 747: de/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa78167e4be4aec94 => 510
	i64 12096697103934194533, ; 748: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 749: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 750: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12131140937409964993, ; 751: ru\Microsoft.CodeAnalysis.Features.resources => 0xa85a7868b6852bc1 => 505
	i64 12134943806000996138, ; 752: RCLCompras.dll => 0xa867fb190e041f2a => 570
	i64 12137774235383566651, ; 753: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 376
	i64 12145679461940342714, ; 754: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12161672928034538843, ; 755: ru/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xa8c6f117bdfbc55b => 479
	i64 12191646537372739477, ; 756: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 312
	i64 12196120864093419943, ; 757: fi-FI/Humanizer.resources.dll => 0xa941534ede04b9a7 => 407
	i64 12198439281774268251, ; 758: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 260
	i64 12201331334810686224, ; 759: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12227121440294254863, ; 760: es/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xa9af762afa4d390f => 472
	i64 12265848337955195311, ; 761: bn-BD/Humanizer.resources.dll => 0xaa390c137ca289af => 400
	i64 12269460666702402136, ; 762: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 763: System.IO.Pipelines => 0xaae1de2e1c17f00a => 303
	i64 12332222936682028543, ; 764: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 765: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12405905830338390985, ; 766: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xac2aa19f96446bc9 => 475
	i64 12406138078758441868, ; 767: fr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xac2b74da22d8138c => 473
	i64 12439275739440478309, ; 768: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 257
	i64 12441092376399691269, ; 769: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 184
	i64 12451044538927396471, ; 770: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 344
	i64 12459959602091767212, ; 771: Microsoft.AspNetCore.Components.Authorization.dll => 0xaceaab3e0e65b5ac => 189
	i64 12466513435562512481, ; 772: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 358
	i64 12475113361194491050, ; 773: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 573
	i64 12487638416075308985, ; 774: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 338
	i64 12493213219680520345, ; 775: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 223
	i64 12517810545449516888, ; 776: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 777: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 326
	i64 12550732019250633519, ; 778: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12597257347146224972, ; 779: zh-Hans/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xaed272d068d4954c => 494
	i64 12619191878741427339, ; 780: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xaf20602784e0848b => 484
	i64 12681088699309157496, ; 781: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 549
	i64 12690486463116955105, ; 782: NuGet.Configuration.dll => 0xb01daa337cfd4de1 => 283
	i64 12699999919562409296, ; 783: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 784: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 327
	i64 12708238894395270091, ; 785: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 786: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 787: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 788: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 270
	i64 12730013836638267461, ; 789: uk/Humanizer.resources.dll => 0xb0aa18234ea1a845 => 437
	i64 12742166704152928552, ; 790: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 220
	i64 12753841065332862057, ; 791: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 381
	i64 12814476867131438679, ; 792: th-TH/Humanizer.resources.dll => 0xb1d62ad10fd47657 => 435
	i64 12822330414412999099, ; 793: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0xb1f2119387c629bb => 469
	i64 12823819093633476069, ; 794: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 562
	i64 12828192437253469131, ; 795: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 393
	i64 12831179148886114003, ; 796: it/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb211817412c17ed3 => 461
	i64 12835242264250840079, ; 797: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12835543923467107475, ; 798: pt-BR\Microsoft.CodeAnalysis.resources => 0xb2210331592e3c93 => 452
	i64 12843321153144804894, ; 799: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 252
	i64 12843770487262409629, ; 800: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 801: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12860889322320594667, ; 802: dotnet-aspnet-codegenerator-design => 0xb27b0eb2e08886eb => 274
	i64 12963446364377008305, ; 803: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 300
	i64 12982280885948128408, ; 804: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 337
	i64 12991459499837607210, ; 805: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 214
	i64 13003699287675270979, ; 806: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 195
	i64 13023245541921129346, ; 807: pt-BR/Microsoft.CodeAnalysis.Features.resources.dll => 0xb4bbdcd1fce60382 => 504
	i64 13039467033719597668, ; 808: tr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb4f57e2e5d45ea64 => 467
	i64 13056307388510335261, ; 809: zh-Hant/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb53152650277711d => 521
	i64 13068258254871114833, ; 810: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13086625805112021739, ; 811: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 199
	i64 13126023683090012938, ; 812: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 297
	i64 13129914918964716986, ; 813: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 341
	i64 13161648197185303412, ; 814: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xb6a7914d4be3f374 => 531
	i64 13162471042547327635, ; 815: System.Security.Permissions => 0xb6aa7dace9662293 => 310
	i64 13166897321255124987, ; 816: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xb6ba375a3b743ffb => 463
	i64 13173818576982874404, ; 817: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 818: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 536
	i64 13222659110913276082, ; 819: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 550
	i64 13233222243778831259, ; 820: es\Microsoft.CodeAnalysis.Scripting.resources => 0xb7a5d984a23c239b => 511
	i64 13252883958002779332, ; 821: NuGet.Common.dll => 0xb7ebb3be363a84c4 => 282
	i64 13257048157060802935, ; 822: Microsoft.Build.Framework => 0xb7fa7f0f5bdb2977 => 212
	i64 13262938754463820554, ; 823: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0xb80f6c86f193eb0a => 533
	i64 13270034446771288861, ; 824: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb828a2058cfffb1d => 469
	i64 13343850469010654401, ; 825: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 826: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 827: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 544
	i64 13401370062847626945, ; 828: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 376
	i64 13404347523447273790, ; 829: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 331
	i64 13404984788036896679, ; 830: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 203
	i64 13431476299110033919, ; 831: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 832: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 388
	i64 13463706743370286408, ; 833: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 834: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 390
	i64 13467053111158216594, ; 835: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 564
	i64 13491513212026656886, ; 836: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 324
	i64 13502641473732064860, ; 837: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 293
	i64 13540124433173649601, ; 838: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 565
	i64 13545416393490209236, ; 839: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 548
	i64 13550417756503177631, ; 840: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 240
	i64 13553170703867477024, ; 841: Microsoft.CodeAnalysis.Scripting.dll => 0xbc1688f288407c20 => 221
	i64 13572454107664307259, ; 842: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 366
	i64 13577726035533356841, ; 843: sl\Humanizer.resources => 0xbc6dc5e43589df29 => 431
	i64 13578472628727169633, ; 844: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 845: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13586022965990628411, ; 846: pt/Humanizer.resources.dll => 0xbc8b3fe7de2b9c3b => 427
	i64 13603276993486202060, ; 847: fr-BE/Humanizer.resources.dll => 0xbcc88c5a31fd24cc => 409
	i64 13621154251410165619, ; 848: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 337
	i64 13647894001087880694, ; 849: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 850: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 317
	i64 13702626353344114072, ; 851: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 852: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 853: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 854: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13730336804810551062, ; 855: el\Humanizer.resources => 0xbe8bf493d9346f16 => 404
	i64 13742054908850494594, ; 856: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13755568601956062840, ; 857: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 543
	i64 13768883594457632599, ; 858: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13803157159895053221, ; 859: ru/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbf8eaa4dfe6f33a5 => 492
	i64 13814445057219246765, ; 860: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 546
	i64 13827721973044326179, ; 861: cs\Microsoft.CodeAnalysis.Features.resources => 0xbfe5efdf402baf23 => 496
	i64 13828521679616088467, ; 862: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 391
	i64 13864745339496195545, ; 863: Microsoft.CodeAnalysis.Workspaces.dll => 0xc069786d7dec65d9 => 222
	i64 13881769479078963060, ; 864: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 865: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 311
	i64 13911222732217019342, ; 866: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13921917134693230900, ; 867: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 209
	i64 13928444506500929300, ; 868: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13939962644205322370, ; 869: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 208
	i64 13955418299340266673, ; 870: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 239
	i64 13957763705375634936, ; 871: ru\Microsoft.CodeAnalysis.Scripting.resources => 0xc1b3f0237dc135f8 => 518
	i64 13959074834287824816, ; 872: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 344
	i64 14004818818307233107, ; 873: pl/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xc25b1c83b8e89553 => 516
	i64 14032333893230075068, ; 874: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0xc2bcdd5453a71cbc => 508
	i64 14058881978408651935, ; 875: hu/Humanizer.resources.dll => 0xc31b2eac16304c9f => 412
	i64 14075334701871371868, ; 876: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 877: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 207
	i64 14084551984877988794, ; 878: nb-NO\Humanizer.resources => 0xc3766168372cebba => 424
	i64 14100563506285742564, ; 879: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 538
	i64 14102632621176723282, ; 880: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0xc3b69da667131752 => 276
	i64 14124974489674258913, ; 881: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 326
	i64 14125464355221830302, ; 882: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 883: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 226
	i64 14145279715929945620, ; 884: pt-BR/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xc44e20f4ec8af614 => 517
	i64 14147751692859242126, ; 885: ru\Humanizer.resources => 0xc456e934e74e768e => 429
	i64 14148919944076435199, ; 886: DocumentFormat.OpenXml.dll => 0xc45b0fb9961d9eff => 175
	i64 14177026328031998476, ; 887: sk\Humanizer.resources => 0xc4beea550db5320c => 430
	i64 14178052285788134900, ; 888: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 313
	i64 14212104595480609394, ; 889: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 890: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 891: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 892: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14236779789349124699, ; 893: cs/Microsoft.CodeAnalysis.resources.dll => 0xc59333c9e99d7a5b => 444
	i64 14254574811015963973, ; 894: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14258050503687732042, ; 895: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc5dec56405e2fb4a => 495
	i64 14261073672896646636, ; 896: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 364
	i64 14298246716367104064, ; 897: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14324076475587251766, ; 898: cs/Humanizer.resources.dll => 0xc6c957a98ee84e36 => 401
	i64 14327695147300244862, ; 899: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 900: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 901: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 314
	i64 14346402571976470310, ; 902: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14388992282640290509, ; 903: de/Humanizer.resources.dll => 0xc7aff83eb29c92cd => 403
	i64 14461014870687870182, ; 904: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14461643095315121028, ; 905: it\Humanizer.resources => 0xc8b213c62cbd0384 => 416
	i64 14464374589798375073, ; 906: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 559
	i64 14486659737292545672, ; 907: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 349
	i64 14495724990987328804, ; 908: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 367
	i64 14522721392235705434, ; 909: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 540
	i64 14551742072151931844, ; 910: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 911: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 912: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 913: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 914: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 359
	i64 14648804764802849406, ; 915: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 916: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 237
	i64 14690985099581930927, ; 917: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 918: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 551
	i64 14715764521194861350, ; 919: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc38e5dd541db326 => 473
	i64 14725197389211463911, ; 920: he/Humanizer.resources.dll => 0xcc5a69020f7570e7 => 410
	i64 14734270797510799600, ; 921: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc7aa5398e0af0f0 => 479
	i64 14740394418088769292, ; 922: sv/Humanizer.resources.dll => 0xcc9066a01354f70c => 434
	i64 14744092281598614090, ; 923: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 567
	i64 14792063746108907174, ; 924: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 388
	i64 14832630590065248058, ; 925: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 926: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 335
	i64 14889905118082851278, ; 927: GoogleGson.dll => 0xcea391d0969961ce => 179
	i64 14892012299694389861, ; 928: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 568
	i64 14895643372947136109, ; 929: ProdutosMAUI.dll => 0xceb7f4ba296a5e6d => 0
	i64 14904040806490515477, ; 930: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 535
	i64 14912225920358050525, ; 931: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 932: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 933: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 238
	i64 14971923049666773358, ; 934: it\Microsoft.CodeAnalysis.Features.resources => 0xcfc6f4b063df016e => 500
	i64 14973015887391301737, ; 935: fr\Microsoft.CodeAnalysis.Scripting.resources => 0xcfcad69e803d2069 => 512
	i64 14977045219216980453, ; 936: zh-Hant/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xcfd927466c63f9e5 => 482
	i64 14984936317414011727, ; 937: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 938: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 939: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 338
	i64 15015154896917945444, ; 940: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 941: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 942: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 943: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 944: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 552
	i64 15115185479366240210, ; 945: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 946: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 947: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 256
	i64 15150743910298169673, ; 948: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 365
	i64 15195733091524337868, ; 949: ja\Microsoft.CodeAnalysis.resources => 0xd2e216bc7df4e0cc => 449
	i64 15227001540531775957, ; 950: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 233
	i64 15231101708049933010, ; 951: sk/Humanizer.resources.dll => 0xd35fbe4e3e2962d2 => 430
	i64 15234786388537674379, ; 952: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15240486395757881428, ; 953: ja\Humanizer.resources => 0xd38115a11f526854 => 417
	i64 15250465174479574862, ; 954: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 955: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 328
	i64 15279429628684179188, ; 956: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 394
	i64 15299439993936780255, ; 957: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15300862763834473199, ; 958: System.Composition.Hosting.dll => 0xd457959dc35afaef => 295
	i64 15333617250504634330, ; 959: RCLCompras => 0xd4cbf3a5fa216fda => 570
	i64 15338463749992804988, ; 960: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15344154949114261798, ; 961: fr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xd4f163a12081f126 => 460
	i64 15352427450275134006, ; 962: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 296
	i64 15355483035186022585, ; 963: Microsoft.AspNet.Identity.Core => 0xd519a276b2ccc8b9 => 181
	i64 15370334346939861994, ; 964: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 333
	i64 15376059877735500810, ; 965: es/Microsoft.CodeAnalysis.resources.dll => 0xd562bcfe318f8c0a => 446
	i64 15383240894167415497, ; 966: System.Memory.Data => 0xd57c4016df1c7ac9 => 304
	i64 15389372189903242610, ; 967: zh-Hans/Microsoft.CodeAnalysis.resources.dll => 0xd592087867754572 => 455
	i64 15391712275433856905, ; 968: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 238
	i64 15427448221306938193, ; 969: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 193
	i64 15450811188137282119, ; 970: ja/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xd66c4ee9e88dca47 => 527
	i64 15471025662701294488, ; 971: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0xd6b41fdf08435398 => 277
	i64 15475196252089753159, ; 972: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 299
	i64 15481710163200268842, ; 973: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 241
	i64 15516854225700193313, ; 974: ja/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xd756f0b4da610421 => 475
	i64 15526743539506359484, ; 975: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 976: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 977: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 978: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 539
	i64 15541854775306130054, ; 979: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 980: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15565247197164990907, ; 981: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 204
	i64 15571644201354746643, ; 982: it/Microsoft.CodeAnalysis.Features.resources.dll => 0xd81997e626855b13 => 500
	i64 15582737692548360875, ; 983: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 357
	i64 15592226634512578529, ; 984: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 187
	i64 15609085926864131306, ; 985: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 986: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 239
	i64 15661133872274321916, ; 987: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 988: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 539
	i64 15710114879900314733, ; 989: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 990: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 547
	i64 15755368083429170162, ; 991: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 992: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 371
	i64 15783653065526199428, ; 993: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 540
	i64 15817206913877585035, ; 994: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15827202283623377193, ; 995: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 236
	i64 15844627507827633226, ; 996: ja/Microsoft.CodeAnalysis.Features.resources.dll => 0xdbe36cc51a72ec4a => 501
	i64 15847085070278954535, ; 997: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15852824340364052161, ; 998: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 205
	i64 15878195890548581965, ; 999: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xdc5aaf094237264d => 494
	i64 15885744048853936810, ; 1000: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15917157041579513718, ; 1001: Microsoft.AspNetCore.Authentication.Cookies.dll => 0xdce519ff21745776 => 185
	i64 15925428744869102958, ; 1002: it/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xdd027d1121b7c56e => 474
	i64 15928521404965645318, ; 1003: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 263
	i64 15934062614519587357, ; 1004: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 1005: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 1006: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15964926172722689846, ; 1007: hu\Humanizer.resources => 0xdd8ecfc4ae78f736 => 412
	i64 15971679995444160383, ; 1008: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 1009: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16027684189145026053, ; 1010: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 198
	i64 16046481083542319511, ; 1011: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 250
	i64 16053592439138609341, ; 1012: pt-BR/Microsoft.CodeAnalysis.resources.dll => 0xdec9d1448fc0e8bd => 452
	i64 16054465462676478687, ; 1013: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16153500642854367575, ; 1014: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 253
	i64 16154507427712707110, ; 1015: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 1016: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 1017: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 553
	i64 16313030114241086891, ; 1018: ja\Microsoft.CodeAnalysis.Scripting.resources => 0xe2638675719705ab => 514
	i64 16315482530584035869, ; 1019: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 1020: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 248
	i64 16337011941688632206, ; 1021: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 1022: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 343
	i64 16423015068819898779, ; 1023: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 393
	i64 16454459195343277943, ; 1024: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16465149080085667619, ; 1025: fr/Microsoft.CodeAnalysis.Features.resources.dll => 0xe47ff5da2c5b1f23 => 499
	i64 16496768397145114574, ; 1026: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16523284800709429098, ; 1027: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 198
	i64 16533548349183570019, ; 1028: NuGet.Common => 0xe572f6a005d53063 => 282
	i64 16558294117798643464, ; 1029: uz-Latn-UZ\Humanizer.resources => 0xe5cae0c541d40708 => 439
	i64 16582434033142728747, ; 1030: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 270
	i64 16589693266713801121, ; 1031: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 356
	i64 16620703816911760071, ; 1032: de/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xe6a89a0fac012ac7 => 471
	i64 16621146507174665210, ; 1033: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 330
	i64 16626488797933785693, ; 1034: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xe6bd277886dad25d => 504
	i64 16643194905613199096, ; 1035: System.Composition.Runtime => 0xe6f8819654aa66f8 => 296
	i64 16649148416072044166, ; 1036: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 268
	i64 16677317093839702854, ; 1037: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 363
	i64 16702652415771857902, ; 1038: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 1039: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 1040: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 1041: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 1042: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 1043: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16775676378328223866, ; 1044: id/Humanizer.resources.dll => 0xe8cf2cc8e52a507a => 414
	i64 16783012334401147854, ; 1045: af\Humanizer.resources => 0xe8e93ccc44fad3ce => 396
	i64 16822611501064131242, ; 1046: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 1047: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 1048: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16884536815023549305, ; 1049: bn-BD\Humanizer.resources => 0xea51ecc6707beb79 => 400
	i64 16890310621557459193, ; 1050: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16899091755757876651, ; 1051: he\Humanizer.resources => 0xea85a26aa8ae35ab => 410
	i64 16933958494752847024, ; 1052: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 1053: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 560
	i64 16945858842201062480, ; 1054: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16977952268158210142, ; 1055: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 1056: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 356
	i64 16998075588627545693, ; 1057: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 361
	i64 17006954551347072385, ; 1058: System.ClientModel => 0xec04d70ec8414d81 => 291
	i64 17008137082415910100, ; 1059: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17013509730718020992, ; 1060: ja/Humanizer.resources.dll => 0xec1c20f56a197580 => 417
	i64 17024911836938395553, ; 1061: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 319
	i64 17031295164305207763, ; 1062: Microsoft.CodeAnalysis.Features => 0xec5b50b75d3d71d3 => 219
	i64 17031351772568316411, ; 1063: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 360
	i64 17037200463775726619, ; 1064: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 347
	i64 17039544999576254074, ; 1065: Microsoft.CodeAnalysis.AnalyzerUtilities => 0xec789fe5d206b67a => 213
	i64 17047433665992082296, ; 1066: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 235
	i64 17062143951396181894, ; 1067: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 1068: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 188
	i64 17080685096938066842, ; 1069: Microsoft.AspNetCore.Components.QuickGrid => 0xed0ac8992b4d539a => 191
	i64 17089008752050867324, ; 1070: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 567
	i64 17093861341398734987, ; 1071: it/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xed399852a5da988b => 487
	i64 17093953079634937686, ; 1072: tr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xed39ebc21ed5c756 => 493
	i64 17118171214553292978, ; 1073: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17126545051278881272, ; 1074: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 269
	i64 17137864900836977098, ; 1075: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 261
	i64 17187273293601214786, ; 1076: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17190541691334386432, ; 1077: fa/Humanizer.resources.dll => 0xee911296c0876300 => 406
	i64 17197986060146327831, ; 1078: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 255
	i64 17201328579425343169, ; 1079: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 1080: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17205988430934219272, ; 1081: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 244
	i64 17230721278011714856, ; 1082: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 1083: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 1084: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 1085: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17334349739241381640, ; 1086: fr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xf08ffb3f1bde1f08 => 525
	i64 17338386382517543202, ; 1087: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 1088: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 545
	i64 17345461795491180158, ; 1089: pl/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf0b7759a515c6e7e => 477
	i64 17360349973592121190, ; 1090: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 386
	i64 17371436720558481852, ; 1091: System.Runtime.Caching => 0xf113bda8d710a1bc => 306
	i64 17373701575325078811, ; 1092: nl\Humanizer.resources => 0xf11bc9886ee5551b => 425
	i64 17429751618615668015, ; 1093: ko/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf1e2eac016e06d2f => 476
	i64 17438153253682247751, ; 1094: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 560
	i64 17470386307322966175, ; 1095: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 1096: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 1097: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 543
	i64 17522591619082469157, ; 1098: GoogleGson => 0xf32cc03d27a5bf25 => 179
	i64 17523946658117960076, ; 1099: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 308
	i64 17565043795550961167, ; 1100: pl\Microsoft.CodeAnalysis.Scripting.resources => 0xf3c39244b9fe7e0f => 516
	i64 17590473451926037903, ; 1101: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 312
	i64 17613516908642624696, ; 1102: cs/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xf46fc84ed8fae4b8 => 522
	i64 17623389608345532001, ; 1103: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 555
	i64 17627500474728259406, ; 1104: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17668140706752364209, ; 1105: Microsoft.DiaSymReader => 0xf531d85ceb97feb1 => 224
	i64 17685921127322830888, ; 1106: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 1107: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 566
	i64 17704177640604968747, ; 1108: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 358
	i64 17710060891934109755, ; 1109: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 355
	i64 17712670374920797664, ; 1110: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 1111: System.CodeDom.dll => 0xf63d3f302bff4572 => 292
	i64 17762830361361043487, ; 1112: es/Microsoft.CodeAnalysis.Features.resources.dll => 0xf682401a2672d01f => 498
	i64 17777860260071588075, ; 1113: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 1114: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 258
	i64 17838668724098252521, ; 1115: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17864403808740949822, ; 1116: Microsoft.AspNetCore.Components.QuickGrid.dll => 0xf7eb1c9d4823bf3e => 191
	i64 17877291088293713194, ; 1117: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf818e586e000d52a => 468
	i64 17891337867145587222, ; 1118: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 389
	i64 17910264068556501837, ; 1119: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 246
	i64 17911643751311784505, ; 1120: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 269
	i64 17928294245072900555, ; 1121: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17981332794496557478, ; 1122: EntityFramework.SqlServer => 0xf98a86e84c0ca1a6 => 177
	i64 17992315986609351877, ; 1123: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 1124: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 230
	i64 18025913125965088385, ; 1125: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 1126: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 554
	i64 18116111925905154859, ; 1127: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 324
	i64 18121036031235206392, ; 1128: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 360
	i64 18146411883821974900, ; 1129: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 1130: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18166565831502027407, ; 1131: sl/Humanizer.resources.dll => 0xfc1c9b5f876d5a8f => 431
	i64 18190621259184097416, ; 1132: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xfc7211a83d564888 => 470
	i64 18203743254473369877, ; 1133: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 307
	i64 18225059387460068507, ; 1134: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 1135: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18246353452277720183, ; 1136: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter.dll => 0xfd3811caa13c6477 => 192
	i64 18260797123374478311, ; 1137: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 341
	i64 18284618658670613420, ; 1138: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 302
	i64 18289698835141844372, ; 1139: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0xfdd2103005815d94 => 213
	i64 18305135509493619199, ; 1140: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 362
	i64 18318849532986632368, ; 1141: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 1142: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 549
	i64 18338427488326303160, ; 1143: NuGet.LibraryModel => 0xfe7f2ea3b4f2bdb8 => 286
	i64 18341799084585866416, ; 1144: DocumentFormat.OpenXml.Framework => 0xfe8b2916a25354b0 => 176
	i64 18380184030268848184, ; 1145: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 378
	i64 18428404840311395189, ; 1146: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 309
	i64 18439108438687598470 ; 1147: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1148 x i32] [
	i32 340, ; 0
	i32 401, ; 1
	i32 399, ; 2
	i32 252, ; 3
	i32 171, ; 4
	i32 402, ; 5
	i32 267, ; 6
	i32 245, ; 7
	i32 180, ; 8
	i32 58, ; 9
	i32 327, ; 10
	i32 485, ; 11
	i32 151, ; 12
	i32 368, ; 13
	i32 286, ; 14
	i32 371, ; 15
	i32 334, ; 16
	i32 520, ; 17
	i32 132, ; 18
	i32 220, ; 19
	i32 472, ; 20
	i32 56, ; 21
	i32 370, ; 22
	i32 524, ; 23
	i32 250, ; 24
	i32 288, ; 25
	i32 542, ; 26
	i32 95, ; 27
	i32 571, ; 28
	i32 415, ; 29
	i32 215, ; 30
	i32 353, ; 31
	i32 235, ; 32
	i32 129, ; 33
	i32 234, ; 34
	i32 254, ; 35
	i32 242, ; 36
	i32 530, ; 37
	i32 300, ; 38
	i32 482, ; 39
	i32 440, ; 40
	i32 285, ; 41
	i32 278, ; 42
	i32 145, ; 43
	i32 432, ; 44
	i32 529, ; 45
	i32 328, ; 46
	i32 18, ; 47
	i32 545, ; 48
	i32 339, ; 49
	i32 354, ; 50
	i32 212, ; 51
	i32 507, ; 52
	i32 271, ; 53
	i32 150, ; 54
	i32 104, ; 55
	i32 457, ; 56
	i32 186, ; 57
	i32 95, ; 58
	i32 284, ; 59
	i32 173, ; 60
	i32 420, ; 61
	i32 384, ; 62
	i32 553, ; 63
	i32 572, ; 64
	i32 192, ; 65
	i32 526, ; 66
	i32 36, ; 67
	i32 229, ; 68
	i32 28, ; 69
	i32 323, ; 70
	i32 183, ; 71
	i32 276, ; 72
	i32 361, ; 73
	i32 50, ; 74
	i32 115, ; 75
	i32 70, ; 76
	i32 264, ; 77
	i32 461, ; 78
	i32 65, ; 79
	i32 170, ; 80
	i32 182, ; 81
	i32 145, ; 82
	i32 551, ; 83
	i32 382, ; 84
	i32 456, ; 85
	i32 290, ; 86
	i32 424, ; 87
	i32 474, ; 88
	i32 322, ; 89
	i32 357, ; 90
	i32 347, ; 91
	i32 196, ; 92
	i32 40, ; 93
	i32 491, ; 94
	i32 89, ; 95
	i32 508, ; 96
	i32 81, ; 97
	i32 466, ; 98
	i32 281, ; 99
	i32 66, ; 100
	i32 480, ; 101
	i32 62, ; 102
	i32 86, ; 103
	i32 262, ; 104
	i32 321, ; 105
	i32 106, ; 106
	i32 541, ; 107
	i32 368, ; 108
	i32 176, ; 109
	i32 102, ; 110
	i32 210, ; 111
	i32 35, ; 112
	i32 318, ; 113
	i32 563, ; 114
	i32 480, ; 115
	i32 370, ; 116
	i32 265, ; 117
	i32 458, ; 118
	i32 563, ; 119
	i32 525, ; 120
	i32 215, ; 121
	i32 119, ; 122
	i32 355, ; 123
	i32 537, ; 124
	i32 436, ; 125
	i32 555, ; 126
	i32 142, ; 127
	i32 141, ; 128
	i32 392, ; 129
	i32 275, ; 130
	i32 219, ; 131
	i32 53, ; 132
	i32 35, ; 133
	i32 141, ; 134
	i32 281, ; 135
	i32 315, ; 136
	i32 325, ; 137
	i32 227, ; 138
	i32 249, ; 139
	i32 175, ; 140
	i32 467, ; 141
	i32 339, ; 142
	i32 305, ; 143
	i32 8, ; 144
	i32 14, ; 145
	i32 195, ; 146
	i32 559, ; 147
	i32 367, ; 148
	i32 51, ; 149
	i32 260, ; 150
	i32 444, ; 151
	i32 350, ; 152
	i32 136, ; 153
	i32 101, ; 154
	i32 225, ; 155
	i32 277, ; 156
	i32 415, ; 157
	i32 285, ; 158
	i32 332, ; 159
	i32 377, ; 160
	i32 116, ; 161
	i32 316, ; 162
	i32 306, ; 163
	i32 443, ; 164
	i32 163, ; 165
	i32 562, ; 166
	i32 261, ; 167
	i32 166, ; 168
	i32 67, ; 169
	i32 426, ; 170
	i32 237, ; 171
	i32 537, ; 172
	i32 294, ; 173
	i32 80, ; 174
	i32 177, ; 175
	i32 402, ; 176
	i32 262, ; 177
	i32 101, ; 178
	i32 490, ; 179
	i32 372, ; 180
	i32 257, ; 181
	i32 117, ; 182
	i32 297, ; 183
	i32 518, ; 184
	i32 298, ; 185
	i32 520, ; 186
	i32 542, ; 187
	i32 447, ; 188
	i32 385, ; 189
	i32 403, ; 190
	i32 211, ; 191
	i32 211, ; 192
	i32 78, ; 193
	i32 384, ; 194
	i32 291, ; 195
	i32 569, ; 196
	i32 114, ; 197
	i32 121, ; 198
	i32 503, ; 199
	i32 48, ; 200
	i32 273, ; 201
	i32 245, ; 202
	i32 420, ; 203
	i32 418, ; 204
	i32 442, ; 205
	i32 279, ; 206
	i32 180, ; 207
	i32 187, ; 208
	i32 454, ; 209
	i32 128, ; 210
	i32 348, ; 211
	i32 408, ; 212
	i32 398, ; 213
	i32 319, ; 214
	i32 82, ; 215
	i32 110, ; 216
	i32 75, ; 217
	i32 395, ; 218
	i32 275, ; 219
	i32 534, ; 220
	i32 240, ; 221
	i32 301, ; 222
	i32 267, ; 223
	i32 53, ; 224
	i32 284, ; 225
	i32 374, ; 226
	i32 232, ; 227
	i32 69, ; 228
	i32 422, ; 229
	i32 411, ; 230
	i32 373, ; 231
	i32 231, ; 232
	i32 83, ; 233
	i32 172, ; 234
	i32 557, ; 235
	i32 116, ; 236
	i32 405, ; 237
	i32 233, ; 238
	i32 156, ; 239
	i32 232, ; 240
	i32 313, ; 241
	i32 167, ; 242
	i32 366, ; 243
	i32 194, ; 244
	i32 340, ; 245
	i32 207, ; 246
	i32 247, ; 247
	i32 32, ; 248
	i32 243, ; 249
	i32 265, ; 250
	i32 122, ; 251
	i32 72, ; 252
	i32 62, ; 253
	i32 456, ; 254
	i32 295, ; 255
	i32 453, ; 256
	i32 199, ; 257
	i32 161, ; 258
	i32 113, ; 259
	i32 495, ; 260
	i32 413, ; 261
	i32 221, ; 262
	i32 88, ; 263
	i32 263, ; 264
	i32 426, ; 265
	i32 568, ; 266
	i32 105, ; 267
	i32 18, ; 268
	i32 517, ; 269
	i32 146, ; 270
	i32 118, ; 271
	i32 58, ; 272
	i32 334, ; 273
	i32 442, ; 274
	i32 481, ; 275
	i32 17, ; 276
	i32 569, ; 277
	i32 184, ; 278
	i32 507, ; 279
	i32 52, ; 280
	i32 204, ; 281
	i32 200, ; 282
	i32 92, ; 283
	i32 531, ; 284
	i32 299, ; 285
	i32 225, ; 286
	i32 565, ; 287
	i32 404, ; 288
	i32 483, ; 289
	i32 55, ; 290
	i32 571, ; 291
	i32 190, ; 292
	i32 129, ; 293
	i32 152, ; 294
	i32 41, ; 295
	i32 409, ; 296
	i32 228, ; 297
	i32 92, ; 298
	i32 497, ; 299
	i32 533, ; 300
	i32 227, ; 301
	i32 447, ; 302
	i32 378, ; 303
	i32 305, ; 304
	i32 50, ; 305
	i32 535, ; 306
	i32 162, ; 307
	i32 13, ; 308
	i32 398, ; 309
	i32 352, ; 310
	i32 491, ; 311
	i32 316, ; 312
	i32 373, ; 313
	i32 36, ; 314
	i32 67, ; 315
	i32 433, ; 316
	i32 428, ; 317
	i32 272, ; 318
	i32 109, ; 319
	i32 483, ; 320
	i32 488, ; 321
	i32 428, ; 322
	i32 317, ; 323
	i32 478, ; 324
	i32 99, ; 325
	i32 455, ; 326
	i32 99, ; 327
	i32 527, ; 328
	i32 11, ; 329
	i32 183, ; 330
	i32 466, ; 331
	i32 209, ; 332
	i32 181, ; 333
	i32 511, ; 334
	i32 202, ; 335
	i32 11, ; 336
	i32 193, ; 337
	i32 383, ; 338
	i32 359, ; 339
	i32 512, ; 340
	i32 25, ; 341
	i32 128, ; 342
	i32 76, ; 343
	i32 351, ; 344
	i32 109, ; 345
	i32 502, ; 346
	i32 377, ; 347
	i32 375, ; 348
	i32 106, ; 349
	i32 2, ; 350
	i32 435, ; 351
	i32 26, ; 352
	i32 330, ; 353
	i32 157, ; 354
	i32 561, ; 355
	i32 289, ; 356
	i32 311, ; 357
	i32 21, ; 358
	i32 564, ; 359
	i32 49, ; 360
	i32 43, ; 361
	i32 126, ; 362
	i32 320, ; 363
	i32 460, ; 364
	i32 59, ; 365
	i32 186, ; 366
	i32 119, ; 367
	i32 380, ; 368
	i32 464, ; 369
	i32 283, ; 370
	i32 343, ; 371
	i32 399, ; 372
	i32 329, ; 373
	i32 3, ; 374
	i32 278, ; 375
	i32 416, ; 376
	i32 349, ; 377
	i32 369, ; 378
	i32 38, ; 379
	i32 465, ; 380
	i32 124, ; 381
	i32 224, ; 382
	i32 515, ; 383
	i32 476, ; 384
	i32 488, ; 385
	i32 493, ; 386
	i32 558, ; 387
	i32 369, ; 388
	i32 432, ; 389
	i32 439, ; 390
	i32 0, ; 391
	i32 449, ; 392
	i32 189, ; 393
	i32 558, ; 394
	i32 137, ; 395
	i32 149, ; 396
	i32 572, ; 397
	i32 85, ; 398
	i32 90, ; 399
	i32 462, ; 400
	i32 353, ; 401
	i32 573, ; 402
	i32 289, ; 403
	i32 485, ; 404
	i32 459, ; 405
	i32 350, ; 406
	i32 489, ; 407
	i32 443, ; 408
	i32 478, ; 409
	i32 546, ; 410
	i32 414, ; 411
	i32 325, ; 412
	i32 336, ; 413
	i32 381, ; 414
	i32 251, ; 415
	i32 290, ; 416
	i32 387, ; 417
	i32 351, ; 418
	i32 133, ; 419
	i32 532, ; 420
	i32 505, ; 421
	i32 397, ; 422
	i32 96, ; 423
	i32 3, ; 424
	i32 554, ; 425
	i32 105, ; 426
	i32 557, ; 427
	i32 501, ; 428
	i32 33, ; 429
	i32 154, ; 430
	i32 437, ; 431
	i32 217, ; 432
	i32 158, ; 433
	i32 411, ; 434
	i32 155, ; 435
	i32 529, ; 436
	i32 82, ; 437
	i32 506, ; 438
	i32 201, ; 439
	i32 445, ; 440
	i32 194, ; 441
	i32 419, ; 442
	i32 438, ; 443
	i32 345, ; 444
	i32 419, ; 445
	i32 309, ; 446
	i32 143, ; 447
	i32 438, ; 448
	i32 87, ; 449
	i32 19, ; 450
	i32 346, ; 451
	i32 307, ; 452
	i32 51, ; 453
	i32 287, ; 454
	i32 293, ; 455
	i32 315, ; 456
	i32 506, ; 457
	i32 462, ; 458
	i32 561, ; 459
	i32 61, ; 460
	i32 54, ; 461
	i32 407, ; 462
	i32 4, ; 463
	i32 202, ; 464
	i32 97, ; 465
	i32 304, ; 466
	i32 314, ; 467
	i32 17, ; 468
	i32 477, ; 469
	i32 465, ; 470
	i32 433, ; 471
	i32 155, ; 472
	i32 84, ; 473
	i32 301, ; 474
	i32 497, ; 475
	i32 29, ; 476
	i32 45, ; 477
	i32 383, ; 478
	i32 64, ; 479
	i32 471, ; 480
	i32 66, ; 481
	i32 552, ; 482
	i32 172, ; 483
	i32 354, ; 484
	i32 1, ; 485
	i32 390, ; 486
	i32 47, ; 487
	i32 427, ; 488
	i32 24, ; 489
	i32 322, ; 490
	i32 458, ; 491
	i32 218, ; 492
	i32 216, ; 493
	i32 450, ; 494
	i32 406, ; 495
	i32 490, ; 496
	i32 498, ; 497
	i32 230, ; 498
	i32 484, ; 499
	i32 528, ; 500
	i32 190, ; 501
	i32 165, ; 502
	i32 108, ; 503
	i32 503, ; 504
	i32 12, ; 505
	i32 528, ; 506
	i32 348, ; 507
	i32 63, ; 508
	i32 27, ; 509
	i32 23, ; 510
	i32 93, ; 511
	i32 523, ; 512
	i32 405, ; 513
	i32 168, ; 514
	i32 12, ; 515
	i32 394, ; 516
	i32 216, ; 517
	i32 255, ; 518
	i32 268, ; 519
	i32 272, ; 520
	i32 29, ; 521
	i32 103, ; 522
	i32 14, ; 523
	i32 126, ; 524
	i32 515, ; 525
	i32 331, ; 526
	i32 253, ; 527
	i32 363, ; 528
	i32 91, ; 529
	i32 352, ; 530
	i32 197, ; 531
	i32 463, ; 532
	i32 310, ; 533
	i32 287, ; 534
	i32 271, ; 535
	i32 9, ; 536
	i32 454, ; 537
	i32 86, ; 538
	i32 436, ; 539
	i32 457, ; 540
	i32 342, ; 541
	i32 375, ; 542
	i32 201, ; 543
	i32 556, ; 544
	i32 71, ; 545
	i32 168, ; 546
	i32 519, ; 547
	i32 1, ; 548
	i32 362, ; 549
	i32 5, ; 550
	i32 556, ; 551
	i32 44, ; 552
	i32 440, ; 553
	i32 408, ; 554
	i32 27, ; 555
	i32 468, ; 556
	i32 534, ; 557
	i32 391, ; 558
	i32 274, ; 559
	i32 530, ; 560
	i32 158, ; 561
	i32 365, ; 562
	i32 112, ; 563
	i32 254, ; 564
	i32 280, ; 565
	i32 397, ; 566
	i32 566, ; 567
	i32 259, ; 568
	i32 231, ; 569
	i32 121, ; 570
	i32 451, ; 571
	i32 459, ; 572
	i32 226, ; 573
	i32 222, ; 574
	i32 441, ; 575
	i32 380, ; 576
	i32 418, ; 577
	i32 321, ; 578
	i32 200, ; 579
	i32 258, ; 580
	i32 421, ; 581
	i32 159, ; 582
	i32 229, ; 583
	i32 197, ; 584
	i32 131, ; 585
	i32 386, ; 586
	i32 57, ; 587
	i32 448, ; 588
	i32 182, ; 589
	i32 236, ; 590
	i32 138, ; 591
	i32 83, ; 592
	i32 30, ; 593
	i32 332, ; 594
	i32 434, ; 595
	i32 10, ; 596
	i32 445, ; 597
	i32 519, ; 598
	i32 382, ; 599
	i32 441, ; 600
	i32 171, ; 601
	i32 185, ; 602
	i32 448, ; 603
	i32 259, ; 604
	i32 329, ; 605
	i32 150, ; 606
	i32 94, ; 607
	i32 196, ; 608
	i32 509, ; 609
	i32 342, ; 610
	i32 178, ; 611
	i32 60, ; 612
	i32 526, ; 613
	i32 509, ; 614
	i32 266, ; 615
	i32 499, ; 616
	i32 292, ; 617
	i32 523, ; 618
	i32 157, ; 619
	i32 541, ; 620
	i32 249, ; 621
	i32 64, ; 622
	i32 413, ; 623
	i32 522, ; 624
	i32 88, ; 625
	i32 496, ; 626
	i32 470, ; 627
	i32 79, ; 628
	i32 47, ; 629
	i32 264, ; 630
	i32 143, ; 631
	i32 423, ; 632
	i32 538, ; 633
	i32 481, ; 634
	i32 234, ; 635
	i32 396, ; 636
	i32 392, ; 637
	i32 336, ; 638
	i32 74, ; 639
	i32 203, ; 640
	i32 91, ; 641
	i32 389, ; 642
	i32 453, ; 643
	i32 492, ; 644
	i32 135, ; 645
	i32 90, ; 646
	i32 374, ; 647
	i32 486, ; 648
	i32 395, ; 649
	i32 446, ; 650
	i32 333, ; 651
	i32 210, ; 652
	i32 294, ; 653
	i32 218, ; 654
	i32 206, ; 655
	i32 450, ; 656
	i32 514, ; 657
	i32 536, ; 658
	i32 112, ; 659
	i32 42, ; 660
	i32 532, ; 661
	i32 159, ; 662
	i32 489, ; 663
	i32 302, ; 664
	i32 4, ; 665
	i32 288, ; 666
	i32 103, ; 667
	i32 178, ; 668
	i32 242, ; 669
	i32 487, ; 670
	i32 70, ; 671
	i32 228, ; 672
	i32 486, ; 673
	i32 60, ; 674
	i32 502, ; 675
	i32 39, ; 676
	i32 273, ; 677
	i32 323, ; 678
	i32 510, ; 679
	i32 223, ; 680
	i32 153, ; 681
	i32 56, ; 682
	i32 34, ; 683
	i32 208, ; 684
	i32 248, ; 685
	i32 266, ; 686
	i32 464, ; 687
	i32 320, ; 688
	i32 21, ; 689
	i32 163, ; 690
	i32 429, ; 691
	i32 279, ; 692
	i32 205, ; 693
	i32 241, ; 694
	i32 521, ; 695
	i32 387, ; 696
	i32 547, ; 697
	i32 423, ; 698
	i32 385, ; 699
	i32 379, ; 700
	i32 140, ; 701
	i32 425, ; 702
	i32 188, ; 703
	i32 550, ; 704
	i32 251, ; 705
	i32 89, ; 706
	i32 206, ; 707
	i32 422, ; 708
	i32 147, ; 709
	i32 335, ; 710
	i32 298, ; 711
	i32 162, ; 712
	i32 364, ; 713
	i32 421, ; 714
	i32 6, ; 715
	i32 169, ; 716
	i32 31, ; 717
	i32 107, ; 718
	i32 345, ; 719
	i32 513, ; 720
	i32 303, ; 721
	i32 256, ; 722
	i32 548, ; 723
	i32 280, ; 724
	i32 379, ; 725
	i32 247, ; 726
	i32 214, ; 727
	i32 318, ; 728
	i32 372, ; 729
	i32 246, ; 730
	i32 167, ; 731
	i32 346, ; 732
	i32 513, ; 733
	i32 524, ; 734
	i32 451, ; 735
	i32 140, ; 736
	i32 544, ; 737
	i32 59, ; 738
	i32 144, ; 739
	i32 217, ; 740
	i32 81, ; 741
	i32 308, ; 742
	i32 74, ; 743
	i32 243, ; 744
	i32 244, ; 745
	i32 130, ; 746
	i32 510, ; 747
	i32 25, ; 748
	i32 7, ; 749
	i32 93, ; 750
	i32 505, ; 751
	i32 570, ; 752
	i32 376, ; 753
	i32 137, ; 754
	i32 479, ; 755
	i32 312, ; 756
	i32 407, ; 757
	i32 260, ; 758
	i32 113, ; 759
	i32 472, ; 760
	i32 400, ; 761
	i32 9, ; 762
	i32 303, ; 763
	i32 104, ; 764
	i32 19, ; 765
	i32 475, ; 766
	i32 473, ; 767
	i32 257, ; 768
	i32 184, ; 769
	i32 344, ; 770
	i32 189, ; 771
	i32 358, ; 772
	i32 573, ; 773
	i32 338, ; 774
	i32 223, ; 775
	i32 33, ; 776
	i32 326, ; 777
	i32 46, ; 778
	i32 494, ; 779
	i32 484, ; 780
	i32 549, ; 781
	i32 283, ; 782
	i32 30, ; 783
	i32 327, ; 784
	i32 57, ; 785
	i32 134, ; 786
	i32 114, ; 787
	i32 270, ; 788
	i32 437, ; 789
	i32 220, ; 790
	i32 381, ; 791
	i32 435, ; 792
	i32 469, ; 793
	i32 562, ; 794
	i32 393, ; 795
	i32 461, ; 796
	i32 55, ; 797
	i32 452, ; 798
	i32 252, ; 799
	i32 6, ; 800
	i32 77, ; 801
	i32 274, ; 802
	i32 300, ; 803
	i32 337, ; 804
	i32 214, ; 805
	i32 195, ; 806
	i32 504, ; 807
	i32 467, ; 808
	i32 521, ; 809
	i32 111, ; 810
	i32 199, ; 811
	i32 297, ; 812
	i32 341, ; 813
	i32 531, ; 814
	i32 310, ; 815
	i32 463, ; 816
	i32 102, ; 817
	i32 536, ; 818
	i32 550, ; 819
	i32 511, ; 820
	i32 282, ; 821
	i32 212, ; 822
	i32 533, ; 823
	i32 469, ; 824
	i32 170, ; 825
	i32 115, ; 826
	i32 544, ; 827
	i32 376, ; 828
	i32 331, ; 829
	i32 203, ; 830
	i32 76, ; 831
	i32 388, ; 832
	i32 85, ; 833
	i32 390, ; 834
	i32 564, ; 835
	i32 324, ; 836
	i32 293, ; 837
	i32 565, ; 838
	i32 548, ; 839
	i32 240, ; 840
	i32 221, ; 841
	i32 366, ; 842
	i32 431, ; 843
	i32 160, ; 844
	i32 2, ; 845
	i32 427, ; 846
	i32 409, ; 847
	i32 337, ; 848
	i32 24, ; 849
	i32 317, ; 850
	i32 32, ; 851
	i32 117, ; 852
	i32 37, ; 853
	i32 16, ; 854
	i32 404, ; 855
	i32 174, ; 856
	i32 543, ; 857
	i32 52, ; 858
	i32 492, ; 859
	i32 546, ; 860
	i32 496, ; 861
	i32 391, ; 862
	i32 222, ; 863
	i32 20, ; 864
	i32 311, ; 865
	i32 123, ; 866
	i32 209, ; 867
	i32 154, ; 868
	i32 208, ; 869
	i32 239, ; 870
	i32 518, ; 871
	i32 344, ; 872
	i32 516, ; 873
	i32 508, ; 874
	i32 412, ; 875
	i32 131, ; 876
	i32 207, ; 877
	i32 424, ; 878
	i32 538, ; 879
	i32 276, ; 880
	i32 326, ; 881
	i32 148, ; 882
	i32 226, ; 883
	i32 517, ; 884
	i32 429, ; 885
	i32 175, ; 886
	i32 430, ; 887
	i32 313, ; 888
	i32 120, ; 889
	i32 28, ; 890
	i32 132, ; 891
	i32 100, ; 892
	i32 444, ; 893
	i32 134, ; 894
	i32 495, ; 895
	i32 364, ; 896
	i32 153, ; 897
	i32 401, ; 898
	i32 97, ; 899
	i32 125, ; 900
	i32 314, ; 901
	i32 69, ; 902
	i32 403, ; 903
	i32 72, ; 904
	i32 416, ; 905
	i32 559, ; 906
	i32 349, ; 907
	i32 367, ; 908
	i32 540, ; 909
	i32 136, ; 910
	i32 124, ; 911
	i32 71, ; 912
	i32 111, ; 913
	i32 359, ; 914
	i32 174, ; 915
	i32 237, ; 916
	i32 152, ; 917
	i32 551, ; 918
	i32 473, ; 919
	i32 410, ; 920
	i32 479, ; 921
	i32 434, ; 922
	i32 567, ; 923
	i32 388, ; 924
	i32 118, ; 925
	i32 335, ; 926
	i32 179, ; 927
	i32 568, ; 928
	i32 0, ; 929
	i32 535, ; 930
	i32 127, ; 931
	i32 133, ; 932
	i32 238, ; 933
	i32 500, ; 934
	i32 512, ; 935
	i32 482, ; 936
	i32 77, ; 937
	i32 46, ; 938
	i32 338, ; 939
	i32 73, ; 940
	i32 63, ; 941
	i32 98, ; 942
	i32 84, ; 943
	i32 552, ; 944
	i32 43, ; 945
	i32 61, ; 946
	i32 256, ; 947
	i32 365, ; 948
	i32 449, ; 949
	i32 233, ; 950
	i32 430, ; 951
	i32 37, ; 952
	i32 417, ; 953
	i32 40, ; 954
	i32 328, ; 955
	i32 394, ; 956
	i32 160, ; 957
	i32 295, ; 958
	i32 570, ; 959
	i32 98, ; 960
	i32 460, ; 961
	i32 296, ; 962
	i32 181, ; 963
	i32 333, ; 964
	i32 446, ; 965
	i32 304, ; 966
	i32 455, ; 967
	i32 238, ; 968
	i32 193, ; 969
	i32 527, ; 970
	i32 277, ; 971
	i32 299, ; 972
	i32 241, ; 973
	i32 475, ; 974
	i32 135, ; 975
	i32 20, ; 976
	i32 65, ; 977
	i32 539, ; 978
	i32 125, ; 979
	i32 75, ; 980
	i32 204, ; 981
	i32 500, ; 982
	i32 357, ; 983
	i32 187, ; 984
	i32 164, ; 985
	i32 239, ; 986
	i32 156, ; 987
	i32 539, ; 988
	i32 5, ; 989
	i32 547, ; 990
	i32 49, ; 991
	i32 371, ; 992
	i32 540, ; 993
	i32 144, ; 994
	i32 236, ; 995
	i32 501, ; 996
	i32 139, ; 997
	i32 205, ; 998
	i32 494, ; 999
	i32 100, ; 1000
	i32 185, ; 1001
	i32 474, ; 1002
	i32 263, ; 1003
	i32 123, ; 1004
	i32 120, ; 1005
	i32 142, ; 1006
	i32 412, ; 1007
	i32 39, ; 1008
	i32 68, ; 1009
	i32 198, ; 1010
	i32 250, ; 1011
	i32 452, ; 1012
	i32 41, ; 1013
	i32 253, ; 1014
	i32 164, ; 1015
	i32 73, ; 1016
	i32 553, ; 1017
	i32 514, ; 1018
	i32 165, ; 1019
	i32 248, ; 1020
	i32 127, ; 1021
	i32 343, ; 1022
	i32 393, ; 1023
	i32 68, ; 1024
	i32 499, ; 1025
	i32 169, ; 1026
	i32 198, ; 1027
	i32 282, ; 1028
	i32 439, ; 1029
	i32 270, ; 1030
	i32 356, ; 1031
	i32 471, ; 1032
	i32 330, ; 1033
	i32 504, ; 1034
	i32 296, ; 1035
	i32 268, ; 1036
	i32 363, ; 1037
	i32 151, ; 1038
	i32 45, ; 1039
	i32 108, ; 1040
	i32 48, ; 1041
	i32 96, ; 1042
	i32 31, ; 1043
	i32 414, ; 1044
	i32 396, ; 1045
	i32 23, ; 1046
	i32 166, ; 1047
	i32 22, ; 1048
	i32 400, ; 1049
	i32 138, ; 1050
	i32 410, ; 1051
	i32 78, ; 1052
	i32 560, ; 1053
	i32 173, ; 1054
	i32 54, ; 1055
	i32 356, ; 1056
	i32 361, ; 1057
	i32 291, ; 1058
	i32 10, ; 1059
	i32 417, ; 1060
	i32 319, ; 1061
	i32 219, ; 1062
	i32 360, ; 1063
	i32 347, ; 1064
	i32 213, ; 1065
	i32 235, ; 1066
	i32 16, ; 1067
	i32 188, ; 1068
	i32 191, ; 1069
	i32 567, ; 1070
	i32 487, ; 1071
	i32 493, ; 1072
	i32 139, ; 1073
	i32 269, ; 1074
	i32 261, ; 1075
	i32 13, ; 1076
	i32 406, ; 1077
	i32 255, ; 1078
	i32 15, ; 1079
	i32 122, ; 1080
	i32 244, ; 1081
	i32 87, ; 1082
	i32 149, ; 1083
	i32 22, ; 1084
	i32 34, ; 1085
	i32 525, ; 1086
	i32 79, ; 1087
	i32 545, ; 1088
	i32 477, ; 1089
	i32 386, ; 1090
	i32 306, ; 1091
	i32 425, ; 1092
	i32 476, ; 1093
	i32 560, ; 1094
	i32 147, ; 1095
	i32 80, ; 1096
	i32 543, ; 1097
	i32 179, ; 1098
	i32 308, ; 1099
	i32 516, ; 1100
	i32 312, ; 1101
	i32 522, ; 1102
	i32 555, ; 1103
	i32 42, ; 1104
	i32 224, ; 1105
	i32 26, ; 1106
	i32 566, ; 1107
	i32 358, ; 1108
	i32 355, ; 1109
	i32 107, ; 1110
	i32 292, ; 1111
	i32 498, ; 1112
	i32 110, ; 1113
	i32 258, ; 1114
	i32 7, ; 1115
	i32 191, ; 1116
	i32 468, ; 1117
	i32 389, ; 1118
	i32 246, ; 1119
	i32 269, ; 1120
	i32 44, ; 1121
	i32 177, ; 1122
	i32 161, ; 1123
	i32 230, ; 1124
	i32 148, ; 1125
	i32 554, ; 1126
	i32 324, ; 1127
	i32 360, ; 1128
	i32 38, ; 1129
	i32 15, ; 1130
	i32 431, ; 1131
	i32 470, ; 1132
	i32 307, ; 1133
	i32 146, ; 1134
	i32 8, ; 1135
	i32 192, ; 1136
	i32 341, ; 1137
	i32 302, ; 1138
	i32 213, ; 1139
	i32 362, ; 1140
	i32 130, ; 1141
	i32 549, ; 1142
	i32 286, ; 1143
	i32 176, ; 1144
	i32 378, ; 1145
	i32 309, ; 1146
	i32 94 ; 1147
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
