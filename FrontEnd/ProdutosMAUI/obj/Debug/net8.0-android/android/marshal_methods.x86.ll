; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [573 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1140 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 18009407, ; 3: de\Microsoft.CodeAnalysis.Features.resources => 0x112cd3f => 497
	i32 26230656, ; 4: Microsoft.Extensions.DependencyModel => 0x1903f80 => 239
	i32 27499509, ; 5: de/Microsoft.CodeAnalysis.resources.dll => 0x1a39bf5 => 445
	i32 28942992, ; 6: nl/Humanizer.resources.dll => 0x1b9a290 => 425
	i32 32687329, ; 7: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 353
	i32 34715100, ; 8: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 388
	i32 34839235, ; 9: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 36622473, ; 10: da/Humanizer.resources.dll => 0x22ed089 => 402
	i32 36623609, ; 11: bg/Humanizer.resources.dll => 0x22ed4f9 => 399
	i32 38835991, ; 12: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources => 0x2509717 => 534
	i32 39109920, ; 13: Newtonsoft.Json.dll => 0x254c520 => 281
	i32 39485524, ; 14: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 15: System.Threading.Thread => 0x28aa24d => 145
	i32 46183200, ; 16: sr\Humanizer.resources => 0x2c0b320 => 432
	i32 47251291, ; 17: de/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x2d0ff5b => 510
	i32 48239899, ; 18: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x2e0151b => 484
	i32 65960268, ; 19: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 279
	i32 66541672, ; 20: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 21: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 568
	i32 68219467, ; 22: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 23: Microsoft.Maui.Graphics.dll => 0x44bb714 => 268
	i32 72810961, ; 24: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x45701d1 => 217
	i32 82292897, ; 25: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 26: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 196
	i32 83984350, ; 27: es\Humanizer.resources => 0x5017fde => 405
	i32 84332821, ; 28: zh-Hans/Microsoft.CodeAnalysis.resources.dll => 0x506d115 => 455
	i32 101534019, ; 29: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 371
	i32 112396495, ; 30: de/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6b308cf => 471
	i32 117431740, ; 31: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 32: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 371
	i32 122350210, ; 33: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 34: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 392
	i32 136074280, ; 35: dotnet-aspnet-codegenerator-design.dll => 0x81c5428 => 274
	i32 142721839, ; 36: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 37: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 38: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 39: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 327
	i32 176265551, ; 40: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 41: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 209
	i32 182336117, ; 42: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 373
	i32 184328833, ; 43: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 44: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 565
	i32 199333315, ; 45: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 566
	i32 205061960, ; 46: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 47: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 325
	i32 220171995, ; 48: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 229118224, ; 49: Microsoft.AspNetCore.Identity => 0xda81110 => 206
	i32 230216969, ; 50: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 347
	i32 230752869, ; 51: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 52: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 53: System.Globalization => 0xdd133ce => 42
	i32 233962274, ; 54: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0xdf1fb22 => 468
	i32 239101542, ; 55: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter.dll => 0xe406666 => 192
	i32 240334920, ; 56: nb/Humanizer.resources.dll => 0xe533848 => 423
	i32 244348769, ; 57: Microsoft.AspNetCore.Components.Authorization => 0xe907761 => 189
	i32 246610117, ; 58: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 249310746, ; 59: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xedc2e1a => 483
	i32 254259026, ; 60: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 188
	i32 255032849, ; 61: Microsoft.CodeAnalysis.CSharp.Features.dll => 0xf337e11 => 216
	i32 261689757, ; 62: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 330
	i32 261882112, ; 63: DocumentFormat.OpenXml.Framework.dll => 0xf9c0100 => 176
	i32 275679612, ; 64: Humanizer => 0x106e897c => 180
	i32 276479776, ; 65: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 66: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 349
	i32 280482487, ; 67: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 346
	i32 280992041, ; 68: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 537
	i32 289313981, ; 69: he\Humanizer.resources => 0x113e94bd => 410
	i32 291076382, ; 70: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 292653774, ; 71: fr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x11718ace => 460
	i32 292732756, ; 72: fi-FI/Humanizer.resources.dll => 0x1172bf54 => 407
	i32 298918909, ; 73: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 74: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 184
	i32 310166614, ; 75: ru/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x127cc456 => 479
	i32 317674968, ; 76: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 565
	i32 318968648, ; 77: Xamarin.AndroidX.Activity.dll => 0x13031348 => 316
	i32 321597661, ; 78: System.Numerics => 0x132b30dd => 83
	i32 324829778, ; 79: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x135c8252 => 491
	i32 330147069, ; 80: Microsoft.SqlServer.Server => 0x13ada4fd => 271
	i32 336156722, ; 81: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 550
	i32 342366114, ; 82: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 348
	i32 347676595, ; 83: hy\Humanizer.resources => 0x14b91fb3 => 413
	i32 349513332, ; 84: Microsoft.DiaSymReader => 0x14d52674 => 224
	i32 356389973, ; 85: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 549
	i32 360082299, ; 86: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 87: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 88: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 89: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 90: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385310584, ; 91: cs/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x16f75f78 => 522
	i32 385762202, ; 92: System.Memory.dll => 0x16fe439a => 62
	i32 386288746, ; 93: System.Composition.Convention.dll => 0x17064c6a => 294
	i32 392610295, ; 94: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 95: _Microsoft.Android.Resource.Designer => 0x17969339 => 569
	i32 401973532, ; 96: fr\Microsoft.CodeAnalysis.Scripting.resources => 0x17f5a11c => 512
	i32 403441872, ; 97: WindowsBase => 0x180c08d0 => 165
	i32 403654887, ; 98: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x180f48e7 => 468
	i32 407142433, ; 99: NuGet.DependencyResolver.Core.dll => 0x18448021 => 284
	i32 407564895, ; 100: zh-Hant\Microsoft.CodeAnalysis.resources => 0x184af25f => 456
	i32 424164259, ; 101: es/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x19483ba3 => 472
	i32 429918412, ; 102: tr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x19a008cc => 493
	i32 435591531, ; 103: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 561
	i32 440059476, ; 104: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x1a3ac654 => 473
	i32 441335492, ; 105: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 331
	i32 442521989, ; 106: Xamarin.Essentials => 0x1a605985 => 383
	i32 442565967, ; 107: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 108: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 344
	i32 451504562, ; 109: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 110: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 111: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 112: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 113: System.dll => 0x1bff388e => 164
	i32 476646585, ; 114: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 346
	i32 485463106, ; 115: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 256
	i32 486930444, ; 116: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 359
	i32 489891006, ; 117: ro/Humanizer.resources.dll => 0x1d3324be => 428
	i32 490002678, ; 118: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 201
	i32 498788369, ; 119: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 120: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 548
	i32 503918385, ; 121: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 542
	i32 513247710, ; 122: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 252
	i32 515231018, ; 123: sr-Latn\Humanizer.resources => 0x1eb5cd2a => 433
	i32 523572874, ; 124: zh-Hant/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x1f35168a => 495
	i32 526420162, ; 125: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 126: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 392
	i32 530272170, ; 127: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 536273956, ; 128: uz-Latn-UZ/Humanizer.resources.dll => 0x1ff6e424 => 439
	i32 538383296, ; 129: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x201713c0 => 477
	i32 539058512, ; 130: Microsoft.Extensions.Logging => 0x20216150 => 247
	i32 540030774, ; 131: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545011643, ; 132: it/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x207c37bb => 487
	i32 545304856, ; 133: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 134: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 547857956, ; 135: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x20a7a624 => 481
	i32 548916678, ; 136: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 210
	i32 549171840, ; 137: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 138: Jsr305Binding => 0x213954e7 => 385
	i32 559063233, ; 139: Microsoft.AspNetCore.Razor.Language.dll => 0x2152a0c1 => 208
	i32 568424432, ; 140: NuGet.Common.dll => 0x21e177f0 => 282
	i32 569601784, ; 141: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 382
	i32 571435654, ; 142: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 242
	i32 572337022, ; 143: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x221d2b7e => 272
	i32 572590293, ; 144: Microsoft.DotNet.Scaffolding.Shared.dll => 0x222108d5 => 225
	i32 575084325, ; 145: ru/Microsoft.CodeAnalysis.Features.resources.dll => 0x22471725 => 505
	i32 577335427, ; 146: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 587216729, ; 147: zh-Hans/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x23003759 => 481
	i32 592146354, ; 148: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 556
	i32 596486711, ; 149: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0x238daa37 => 278
	i32 601181835, ; 150: tr\Microsoft.CodeAnalysis.Features.resources => 0x23d54e8b => 506
	i32 601371474, ; 151: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 152: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 153: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 619528643, ; 154: zh-CN/Humanizer.resources.dll => 0x24ed41c3 => 441
	i32 627609679, ; 155: Xamarin.AndroidX.CustomView => 0x2568904f => 336
	i32 627931235, ; 156: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 554
	i32 639843206, ; 157: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 342
	i32 643868501, ; 158: System.Net => 0x2660a755 => 81
	i32 649338123, ; 159: de\Humanizer.resources => 0x26b41d0b => 403
	i32 662205335, ; 160: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 161: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 378
	i32 666292255, ; 162: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 323
	i32 672442732, ; 163: System.Collections.Concurrent => 0x2814a96c => 8
	i32 681800418, ; 164: zh-Hans/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x28a372e2 => 520
	i32 683518922, ; 165: System.Net.Security => 0x28bdabca => 73
	i32 687422377, ; 166: System.Composition.Convention => 0x28f93ba9 => 294
	i32 688181140, ; 167: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 536
	i32 690569205, ; 168: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 169: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 394
	i32 693804605, ; 170: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 171: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 172: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 389
	i32 700358131, ; 173: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 703606456, ; 174: ja\Microsoft.CodeAnalysis.Scripting.resources => 0x29f02eb8 => 514
	i32 704132156, ; 175: pl/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x29f8343c => 490
	i32 706645707, ; 176: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 551
	i32 707797079, ; 177: Microsoft.DiaSymReader.dll => 0x2a302057 => 224
	i32 708016183, ; 178: de/Humanizer.resources.dll => 0x2a337837 => 403
	i32 709152836, ; 179: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 307
	i32 709557578, ; 180: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 539
	i32 717679319, ; 181: nl\Humanizer.resources => 0x2ac6ead7 => 425
	i32 720511267, ; 182: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 393
	i32 722857257, ; 183: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 184: System.ClientModel.dll => 0x2b244044 => 291
	i32 730720346, ; 185: ja/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x2b8de85a => 527
	i32 731543398, ; 186: it\Microsoft.CodeAnalysis.Features.resources => 0x2b9a7766 => 500
	i32 735137430, ; 187: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 742720346, ; 188: ru/Humanizer.resources.dll => 0x2c45035a => 429
	i32 743807466, ; 189: NuGet.DependencyResolver.Core => 0x2c5599ea => 284
	i32 750076933, ; 190: zh-Hans/Humanizer.resources.dll => 0x2cb54405 => 442
	i32 752232764, ; 191: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 192: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 313
	i32 759454413, ; 193: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 194: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 772964186, ; 195: Microsoft.NET.StringTools => 0x2e127f5a => 270
	i32 773056463, ; 196: da\Humanizer.resources => 0x2e13e7cf => 402
	i32 775507847, ; 197: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 198: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 560
	i32 783888833, ; 199: System.Composition.Runtime.dll => 0x2eb931c1 => 296
	i32 786505701, ; 200: Microsoft.CodeAnalysis.Elfie => 0x2ee11fe5 => 218
	i32 789151979, ; 201: Microsoft.Extensions.Options => 0x2f0980eb => 251
	i32 790371945, ; 202: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 337
	i32 794885870, ; 203: es\Microsoft.CodeAnalysis.resources => 0x2f60feee => 446
	i32 804008546, ; 204: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 195
	i32 804715423, ; 205: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 206: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 351
	i32 809851609, ; 207: System.Drawing.Common.dll => 0x30455ad9 => 300
	i32 823281589, ; 208: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 209: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 210: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 832989596, ; 211: fr\Microsoft.CodeAnalysis.Features.resources => 0x31a6699c => 499
	i32 834051424, ; 212: System.Net.Quic => 0x31b69d60 => 71
	i32 841089730, ; 213: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0x322202c2 => 507
	i32 843511501, ; 214: Xamarin.AndroidX.Print => 0x3246f6cd => 364
	i32 854631076, ; 215: el/Humanizer.resources.dll => 0x32f0a2a4 => 404
	i32 859575911, ; 216: Microsoft.Build.dll => 0x333c1667 => 211
	i32 865046295, ; 217: ja/Microsoft.CodeAnalysis.Features.resources.dll => 0x338f8f17 => 501
	i32 870817387, ; 218: th-TH\Humanizer.resources => 0x33e79e6b => 435
	i32 871341741, ; 219: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x33ef9ead => 482
	i32 873119928, ; 220: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 221: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 222: System.Net.Http.Json => 0x3463c971 => 63
	i32 882049477, ; 223: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x349301c5 => 479
	i32 895713599, ; 224: lv/Humanizer.resources.dll => 0x3563813f => 420
	i32 898263006, ; 225: Microsoft.CodeAnalysis.Scripting => 0x358a67de => 221
	i32 904024072, ; 226: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 227: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 228: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 563
	i32 928116545, ; 229: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 388
	i32 940221205, ; 230: Microsoft.CodeAnalysis.Razor => 0x380aa315 => 220
	i32 941753469, ; 231: NuGet.Packaging => 0x3822047d => 287
	i32 951539854, ; 232: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x38b7588e => 492
	i32 952186615, ; 233: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 234: Newtonsoft.Json => 0x38f24a24 => 281
	i32 956215521, ; 235: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x38feb0e1 => 460
	i32 956575887, ; 236: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 393
	i32 963366786, ; 237: NuGet.LibraryModel.dll => 0x396bcf82 => 286
	i32 966729478, ; 238: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 386
	i32 967690846, ; 239: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 348
	i32 972467304, ; 240: Microsoft.AspNetCore.Razor.Language => 0x39f6ac68 => 208
	i32 975236339, ; 241: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 242: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 243: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 244: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 245: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 246: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 247: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 244
	i32 1001831731, ; 248: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1003057746, ; 249: zh-Hant/Microsoft.CodeAnalysis.Features.resources.dll => 0x3bc97252 => 508
	i32 1012816738, ; 250: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 368
	i32 1019214401, ; 251: System.Drawing => 0x3cbffa41 => 36
	i32 1020234808, ; 252: Microsoft.AspNetCore.Authentication.Cookies.dll => 0x3ccf8c38 => 185
	i32 1022129705, ; 253: fr\Humanizer.resources => 0x3cec7629 => 408
	i32 1028951442, ; 254: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 238
	i32 1029334545, ; 255: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 538
	i32 1031528504, ; 256: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 387
	i32 1032497321, ; 257: es\Microsoft.CodeAnalysis.Scripting.resources => 0x3d8aa8a9 => 511
	i32 1035644815, ; 258: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 321
	i32 1036536393, ; 259: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 260: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 261: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 355
	i32 1061829530, ; 262: ru/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x3f4a3b9a => 492
	i32 1062017875, ; 263: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 255
	i32 1067306892, ; 264: GoogleGson => 0x3f9dcf8c => 179
	i32 1082857460, ; 265: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083751839, ; 266: System.IO.Packaging => 0x4098bd9f => 302
	i32 1084122840, ; 267: Xamarin.Kotlin.StdLib => 0x409e66d8 => 390
	i32 1085630670, ; 268: ku/Humanizer.resources.dll => 0x40b568ce => 419
	i32 1088213606, ; 269: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x40dcd266 => 464
	i32 1089913930, ; 270: System.Diagnostics.EventLog.dll => 0x40f6c44a => 299
	i32 1095180906, ; 271: Microsoft.AspNet.Identity.Core => 0x4147226a => 181
	i32 1098259244, ; 272: System => 0x41761b2c => 164
	i32 1098418679, ; 273: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x417889f7 => 462
	i32 1106973742, ; 274: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 235
	i32 1108818901, ; 275: System.Reflection.MetadataLoadContext => 0x42173bd5 => 305
	i32 1110309514, ; 276: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 245
	i32 1112354281, ; 277: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 184
	i32 1118262833, ; 278: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 551
	i32 1121599056, ; 279: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 354
	i32 1127624469, ; 280: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 249
	i32 1135815421, ; 281: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x43b32afd => 197
	i32 1138436374, ; 282: Microsoft.Data.SqlClient.dll => 0x43db2916 => 223
	i32 1145483052, ; 283: System.Windows.Extensions.dll => 0x4446af2c => 311
	i32 1149092582, ; 284: Xamarin.AndroidX.Window => 0x447dc2e6 => 381
	i32 1154034500, ; 285: tr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x44c92b44 => 480
	i32 1157931901, ; 286: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 227
	i32 1166585964, ; 287: zh-Hant/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4588b06c => 534
	i32 1168523401, ; 288: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 557
	i32 1170634674, ; 289: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 290: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 240
	i32 1175144683, ; 291: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 377
	i32 1176596968, ; 292: pl/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x462171e8 => 464
	i32 1178144317, ; 293: es/Humanizer.resources.dll => 0x46390e3d => 405
	i32 1178241025, ; 294: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 362
	i32 1195681867, ; 295: ja/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x4744a84b => 514
	i32 1197810737, ; 296: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0x47652431 => 276
	i32 1201690614, ; 297: Microsoft.CodeAnalysis.Features.dll => 0x47a057f6 => 219
	i32 1202000627, ; 298: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 227
	i32 1203215381, ; 299: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 555
	i32 1204270330, ; 300: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 323
	i32 1204575371, ; 301: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 231
	i32 1208641965, ; 302: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1215670447, ; 303: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x4875a8af => 273
	i32 1219128291, ; 304: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 305: Microsoft.Net.Http.Headers => 0x48baad61 => 269
	i32 1220582341, ; 306: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x48c09bc5 => 478
	i32 1231801191, ; 307: de/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x496bcb67 => 523
	i32 1234928153, ; 308: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 553
	i32 1236289705, ; 309: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 201
	i32 1243150071, ; 310: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 382
	i32 1253011324, ; 311: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 312: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 537
	i32 1264365575, ; 313: ko\Microsoft.CodeAnalysis.Features.resources => 0x4b5cb007 => 502
	i32 1264511973, ; 314: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 372
	i32 1267360935, ; 315: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 376
	i32 1269295491, ; 316: nb-NO/Humanizer.resources.dll => 0x4ba7e983 => 424
	i32 1273260888, ; 317: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 328
	i32 1275534314, ; 318: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 394
	i32 1278448581, ; 319: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 320
	i32 1287429771, ; 320: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x4cbc9e8b => 520
	i32 1291457549, ; 321: EntityFramework.SqlServer.dll => 0x4cfa140d => 177
	i32 1292843635, ; 322: DocumentFormat.OpenXml.Framework => 0x4d0f3a73 => 176
	i32 1293217323, ; 323: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 339
	i32 1299419014, ; 324: ru\Microsoft.CodeAnalysis.Features.resources => 0x4d738f86 => 505
	i32 1303681164, ; 325: ja/Microsoft.CodeAnalysis.resources.dll => 0x4db4988c => 449
	i32 1309188875, ; 326: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1314676887, ; 327: af\Humanizer.resources => 0x4e5c6097 => 396
	i32 1317411180, ; 328: fr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4e86196c => 525
	i32 1322716291, ; 329: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 381
	i32 1324164729, ; 330: System.Linq => 0x4eed2679 => 61
	i32 1332737275, ; 331: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x4f6ff4fb => 495
	i32 1333472706, ; 332: zh-Hans/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4f7b2dc2 => 533
	i32 1335115385, ; 333: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x4f943e79 => 522
	i32 1335329327, ; 334: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1338781641, ; 335: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 175
	i32 1339424209, ; 336: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x4fd5fdd1 => 517
	i32 1355941824, ; 337: ja\Microsoft.CodeAnalysis.resources => 0x50d207c0 => 449
	i32 1358651689, ; 338: cs\Humanizer.resources => 0x50fb6129 => 401
	i32 1364015309, ; 339: System.IO => 0x514d38cd => 57
	i32 1367755087, ; 340: ru/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5186494f => 466
	i32 1369180898, ; 341: it\Microsoft.CodeAnalysis.Scripting.resources => 0x519c0ae2 => 513
	i32 1372382510, ; 342: he/Humanizer.resources.dll => 0x51cce52e => 410
	i32 1373134921, ; 343: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 567
	i32 1376829469, ; 344: cs\Microsoft.CodeAnalysis.CSharp.resources => 0x5210c01d => 457
	i32 1376866003, ; 345: Xamarin.AndroidX.SavedState => 0x52114ed3 => 368
	i32 1377593304, ; 346: sk\Humanizer.resources => 0x521c67d8 => 430
	i32 1379779777, ; 347: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1385717816, ; 348: Microsoft.NET.StringTools.dll => 0x52986038 => 270
	i32 1390372361, ; 349: tr/Humanizer.resources.dll => 0x52df6609 => 436
	i32 1392635248, ; 350: fi-FI\Humanizer.resources => 0x5301ed70 => 407
	i32 1393256046, ; 351: it/Humanizer.resources.dll => 0x530b666e => 416
	i32 1402170036, ; 352: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 353: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 332
	i32 1408764838, ; 354: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1409293268, ; 355: pl/Humanizer.resources.dll => 0x54001bd4 => 426
	i32 1411638395, ; 356: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 357: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1422868603, ; 358: cs/Microsoft.CodeAnalysis.Features.resources.dll => 0x54cf407b => 496
	i32 1430672901, ; 359: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 535
	i32 1433579683, ; 360: de\Microsoft.CodeAnalysis.resources => 0x5572b0a3 => 445
	i32 1434145427, ; 361: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 362: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 386
	i32 1439761251, ; 363: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1446836800, ; 364: it\Microsoft.CodeAnalysis.resources => 0x563cfa40 => 448
	i32 1447567584, ; 365: de\Microsoft.CodeAnalysis.Scripting.resources => 0x564820e0 => 510
	i32 1451017060, ; 366: cs/Microsoft.CodeAnalysis.resources.dll => 0x567cc364 => 444
	i32 1452070440, ; 367: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 368: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 369: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 241
	i32 1457743152, ; 370: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 371: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 372: System.IdentityModel.Tokens.Jwt => 0x57137723 => 301
	i32 1461004990, ; 373: es\Microsoft.Maui.Controls.resources => 0x57152abe => 541
	i32 1461234159, ; 374: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 375: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 376: System.IO.Compression.dll => 0x57261233 => 46
	i32 1463877001, ; 377: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0x5740fd89 => 213
	i32 1466102214, ; 378: ru\Microsoft.CodeAnalysis.Scripting.resources => 0x5762f1c6 => 518
	i32 1469204771, ; 379: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 322
	i32 1470490898, ; 380: Microsoft.Extensions.Primitives => 0x57a5e912 => 252
	i32 1474151183, ; 381: de/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x57ddc30f => 484
	i32 1479771757, ; 382: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 383: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 384: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 385: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 369
	i32 1493001747, ; 386: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 545
	i32 1494371055, ; 387: Microsoft.AspNet.Identity.Core.dll => 0x59124aef => 181
	i32 1498168481, ; 388: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 257
	i32 1514721132, ; 389: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 540
	i32 1515641136, ; 390: es\Microsoft.CodeAnalysis.CSharp.resources => 0x5a56d930 => 459
	i32 1521091094, ; 391: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 244
	i32 1525768991, ; 392: ru\Microsoft.CodeAnalysis.resources => 0x5af1631f => 453
	i32 1536373174, ; 393: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1538374214, ; 394: ru\Humanizer.resources => 0x5bb1ba46 => 429
	i32 1541428564, ; 395: bn-BD\Humanizer.resources => 0x5be05554 => 400
	i32 1543031311, ; 396: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 397: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 398: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 195
	i32 1550322496, ; 399: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 400: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 560
	i32 1552528112, ; 401: es/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x5c89b2f0 => 511
	i32 1565310744, ; 402: System.Runtime.Caching => 0x5d4cbf18 => 306
	i32 1565862583, ; 403: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566167090, ; 404: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5d59d032 => 469
	i32 1566207040, ; 405: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1568109833, ; 406: fr/Microsoft.CodeAnalysis.resources.dll => 0x5d777509 => 447
	i32 1568485794, ; 407: NuGet.Versioning.dll => 0x5d7d31a2 => 290
	i32 1573516615, ; 408: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0x5dc9f547 => 533
	i32 1573704789, ; 409: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 410: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 411: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 412: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 338
	i32 1586881704, ; 413: NuGet.Packaging.dll => 0x5e95e4a8 => 287
	i32 1592978981, ; 414: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 415: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 387
	i32 1598492419, ; 416: pl\Microsoft.CodeAnalysis.Scripting.resources => 0x5f470f03 => 516
	i32 1601112923, ; 417: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 418: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 419: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 420: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 358
	i32 1622358360, ; 421: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 422: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 380
	i32 1628113371, ; 423: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 260
	i32 1628395155, ; 424: Microsoft.AspNet.Identity.EntityFramework.dll => 0x610f5693 => 182
	i32 1632842087, ; 425: Microsoft.Extensions.Configuration.Json => 0x61533167 => 236
	i32 1635184631, ; 426: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 342
	i32 1636350590, ; 427: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 335
	i32 1638839988, ; 428: Microsoft.AspNetCore.Components.QuickGrid.dll => 0x61aeb6b4 => 191
	i32 1639515021, ; 429: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 430: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 431: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 432: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 194
	i32 1657153582, ; 433: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 434: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 374
	i32 1658251792, ; 435: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 384
	i32 1665647309, ; 436: pt-BR/Microsoft.CodeAnalysis.resources.dll => 0x6347c2cd => 452
	i32 1670060433, ; 437: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 330
	i32 1675553242, ; 438: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 439: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 440: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 441: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1685661845, ; 442: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x64792895 => 529
	i32 1689493916, ; 443: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 226
	i32 1691477237, ; 444: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1695117228, ; 445: fr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x65096fac => 512
	i32 1696967625, ; 446: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 447: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 391
	i32 1701541528, ; 448: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1710468323, ; 449: Microsoft.VisualStudio.Web.CodeGeneration => 0x65f3ace3 => 272
	i32 1712031326, ; 450: System.Composition.Hosting.dll => 0x660b865e => 295
	i32 1715673392, ; 451: de/Microsoft.CodeAnalysis.Features.resources.dll => 0x66431930 => 497
	i32 1720223769, ; 452: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 351
	i32 1726116996, ; 453: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 454: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 455: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 326
	i32 1736233607, ; 456: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 558
	i32 1743415430, ; 457: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 536
	i32 1744735666, ; 458: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 459: System.IO.Pipelines.dll => 0x68139a0d => 303
	i32 1746316138, ; 460: Mono.Android.Export => 0x6816ab6a => 169
	i32 1746428678, ; 461: it/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x68186306 => 461
	i32 1746610600, ; 462: tr/Microsoft.CodeAnalysis.resources.dll => 0x681b29a8 => 454
	i32 1750313021, ; 463: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1753316958, ; 464: mt/Humanizer.resources.dll => 0x68817e5e => 422
	i32 1754280098, ; 465: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x689030a2 => 471
	i32 1757062295, ; 466: tr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x68baa497 => 532
	i32 1758240030, ; 467: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 468: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 193
	i32 1763767191, ; 469: pt-BR/Microsoft.CodeAnalysis.Features.resources.dll => 0x6920f397 => 504
	i32 1763938596, ; 470: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 471: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 472: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 373
	i32 1766583818, ; 473: ms-MY\Humanizer.resources => 0x694bee0a => 421
	i32 1767875481, ; 474: ko/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x695fa399 => 528
	i32 1770582343, ; 475: Microsoft.Extensions.Logging.dll => 0x6988f147 => 247
	i32 1776026572, ; 476: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 477: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 478: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1781174529, ; 479: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0x6a2a9101 => 469
	i32 1782862114, ; 480: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 552
	i32 1788241197, ; 481: Xamarin.AndroidX.Fragment => 0x6a96652d => 344
	i32 1791755720, ; 482: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 183
	i32 1792549600, ; 483: fr-BE\Humanizer.resources => 0x6ad822e0 => 409
	i32 1793755602, ; 484: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 544
	i32 1794500907, ; 485: Microsoft.Identity.Client.dll => 0x6af5e92b => 254
	i32 1796167890, ; 486: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 210
	i32 1808609942, ; 487: Xamarin.AndroidX.Loader => 0x6bcd3296 => 358
	i32 1812924106, ; 488: it/Microsoft.CodeAnalysis.Features.resources.dll => 0x6c0f06ca => 500
	i32 1813058853, ; 489: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 390
	i32 1813201214, ; 490: Xamarin.Google.Android.Material => 0x6c13413e => 384
	i32 1813277640, ; 491: ja\Microsoft.CodeAnalysis.Features.resources => 0x6c146bc8 => 501
	i32 1818569960, ; 492: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 363
	i32 1818787751, ; 493: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 494: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 205
	i32 1820883333, ; 495: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 196
	i32 1824175904, ; 496: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 497: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 498: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 248
	i32 1829150748, ; 499: System.Windows.Extensions => 0x6d06a01c => 311
	i32 1840242603, ; 500: NuGet.Configuration.dll => 0x6dafdfab => 283
	i32 1842015223, ; 501: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 564
	i32 1847515442, ; 502: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 313
	i32 1853025655, ; 503: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 561
	i32 1858542181, ; 504: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1864952571, ; 505: cs/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6f28eafb => 470
	i32 1867746548, ; 506: Xamarin.Essentials.dll => 0x6f538cf4 => 383
	i32 1870277092, ; 507: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 508: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 260
	i32 1875935024, ; 509: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 543
	i32 1879696579, ; 510: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 511: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 324
	i32 1888955245, ; 512: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 513: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 514: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 515: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 516: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1927897671, ; 517: System.CodeDom.dll => 0x72e96247 => 292
	i32 1928288591, ; 518: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 203
	i32 1928716804, ; 519: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x72f5e204 => 488
	i32 1931959220, ; 520: System.Composition.AttributedModel.dll => 0x73275bb4 => 293
	i32 1937339544, ; 521: it/Microsoft.CodeAnalysis.resources.dll => 0x73797498 => 448
	i32 1939592360, ; 522: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1942190367, ; 523: it\Microsoft.CodeAnalysis.CSharp.resources => 0x73c3791f => 461
	i32 1953680223, ; 524: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 199
	i32 1956758971, ; 525: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1958201531, ; 526: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x74b7c8bb => 467
	i32 1961813231, ; 527: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 370
	i32 1968388702, ; 528: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 232
	i32 1968930087, ; 529: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x755b7d27 => 465
	i32 1974283348, ; 530: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x75ad2c54 => 277
	i32 1977015402, ; 531: Microsoft.Build => 0x75d6dc6a => 211
	i32 1983156543, ; 532: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 391
	i32 1983665899, ; 533: System.Composition.TypedParts.dll => 0x763c56eb => 297
	i32 1985761444, ; 534: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 315
	i32 1986222447, ; 535: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 261
	i32 1991044029, ; 536: Microsoft.Extensions.Identity.Core.dll => 0x76acebbd => 246
	i32 1993867835, ; 537: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x76d8023b => 489
	i32 1993916150, ; 538: ko\Microsoft.CodeAnalysis.resources => 0x76d8bef6 => 450
	i32 2002441971, ; 539: it/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x775ad6f3 => 526
	i32 2003115576, ; 540: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 540
	i32 2005301351, ; 541: System.Reflection.MetadataLoadContext.dll => 0x77867867 => 305
	i32 2011961780, ; 542: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 543: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 355
	i32 2025202353, ; 544: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 535
	i32 2031763787, ; 545: Xamarin.Android.Glide => 0x791a414b => 312
	i32 2032926171, ; 546: zh-Hant\Humanizer.resources => 0x792bfddb => 443
	i32 2038923757, ; 547: ProdutosMAUI => 0x798781ed => 0
	i32 2040764568, ; 548: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 255
	i32 2045470958, ; 549: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 550: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 234
	i32 2048711491, ; 551: pl/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x7a1cdb43 => 529
	i32 2055257422, ; 552: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 350
	i32 2060060697, ; 553: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 554: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 539
	i32 2070352460, ; 555: bg\Humanizer.resources => 0x7b67124c => 399
	i32 2070888862, ; 556: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 557: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 243
	i32 2075706075, ; 558: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 203
	i32 2076659885, ; 559: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 253
	i32 2079903147, ; 560: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2084242321, ; 561: es/Microsoft.CodeAnalysis.resources.dll => 0x7c3b0391 => 446
	i32 2085039813, ; 562: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 309
	i32 2090596640, ; 563: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2115189546, ; 564: ko-KR/Humanizer.resources.dll => 0x7e133b2a => 418
	i32 2123746321, ; 565: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x7e95cc11 => 474
	i32 2126059322, ; 566: es/Microsoft.CodeAnalysis.Features.resources.dll => 0x7eb9173a => 498
	i32 2127167465, ; 567: System.Console => 0x7ec9ffe9 => 20
	i32 2138035031, ; 568: ko/Microsoft.CodeAnalysis.resources.dll => 0x7f6fd357 => 450
	i32 2141344426, ; 569: ko-KR\Humanizer.resources => 0x7fa252aa => 418
	i32 2141478350, ; 570: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x7fa45dce => 528
	i32 2142473426, ; 571: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 572: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 573: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2149709509, ; 574: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x8021f6c5 => 509
	i32 2159891885, ; 575: Microsoft.Maui => 0x80bd55ad => 266
	i32 2169148018, ; 576: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 547
	i32 2178612968, ; 577: System.CodeDom => 0x81dafee8 => 292
	i32 2181898931, ; 578: Microsoft.Extensions.Options.dll => 0x820d22b3 => 251
	i32 2185933729, ; 579: Microsoft.CodeAnalysis.AnalyzerUtilities => 0x824ab3a1 => 213
	i32 2192057212, ; 580: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 248
	i32 2192166651, ; 581: Microsoft.AspNetCore.Components.Authorization.dll => 0x82a9cefb => 189
	i32 2193016926, ; 582: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 583: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 239
	i32 2199971862, ; 584: is\Humanizer.resources => 0x8320e816 => 415
	i32 2201107256, ; 585: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 395
	i32 2201231467, ; 586: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 587: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 250
	i32 2207618523, ; 588: it\Microsoft.Maui.Controls.resources => 0x839595db => 549
	i32 2214684929, ; 589: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0x84016901 => 508
	i32 2217644978, ; 590: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 377
	i32 2222056684, ; 591: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228735738, ; 592: pl/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x84d7cefa => 477
	i32 2242871324, ; 593: Microsoft.AspNetCore.Http.dll => 0x85af801c => 202
	i32 2244775296, ; 594: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 359
	i32 2252106437, ; 595: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 596: Microsoft.EntityFrameworkCore => 0x86487ec9 => 226
	i32 2253551641, ; 597: Microsoft.IdentityModel.Protocols => 0x86527819 => 259
	i32 2256313426, ; 598: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2264006332, ; 599: NuGet.ProjectModel => 0x86f1febc => 288
	i32 2265110946, ; 600: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 601: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 233
	i32 2267999099, ; 602: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 314
	i32 2270573516, ; 603: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 543
	i32 2271199108, ; 604: pt-BR/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x875fbf84 => 517
	i32 2274498275, ; 605: nb-NO\Humanizer.resources => 0x879216e3 => 424
	i32 2278647370, ; 606: zh-Hans\Humanizer.resources => 0x87d1664a => 442
	i32 2279755925, ; 607: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 366
	i32 2291847450, ; 608: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 198
	i32 2293034957, ; 609: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2293126107, ; 610: pl\Microsoft.CodeAnalysis.resources => 0x88ae53db => 451
	i32 2295906218, ; 611: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 612: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 613: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 553
	i32 2305521784, ; 614: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 615: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 318
	i32 2320631194, ; 616: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2323173394, ; 617: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x8a78d012 => 527
	i32 2334514644, ; 618: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b25ddd4 => 530
	i32 2340441535, ; 619: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2342355720, ; 620: ms-MY/Humanizer.resources.dll => 0x8b9d8308 => 421
	i32 2344264397, ; 621: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 622: System.Net.Primitives => 0x8c40e0db => 70
	i32 2353444681, ; 623: cs\Microsoft.CodeAnalysis.Features.resources => 0x8c46b749 => 496
	i32 2368005991, ; 624: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 625: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 258
	i32 2371007202, ; 626: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 232
	i32 2378619854, ; 627: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 628: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 629: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 548
	i32 2400844204, ; 630: NuGet.Protocol => 0x8f19f9ac => 289
	i32 2401565422, ; 631: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 632: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 341
	i32 2411328690, ; 633: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 188
	i32 2421380589, ; 634: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2422313222, ; 635: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x90619106 => 275
	i32 2423080555, ; 636: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 328
	i32 2427245696, ; 637: Microsoft.CodeAnalysis.Razor.dll => 0x90acd480 => 220
	i32 2427813419, ; 638: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 545
	i32 2435356389, ; 639: System.Console.dll => 0x912896e5 => 20
	i32 2435490729, ; 640: zh-Hans/Microsoft.CodeAnalysis.Features.resources.dll => 0x912aa3a9 => 507
	i32 2435904999, ; 641: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 642: Microsoft.JSInterop.dll => 0x919672ca => 262
	i32 2445655071, ; 643: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x91c5bc1f => 472
	i32 2454642406, ; 644: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458475166, ; 645: cs\Microsoft.CodeAnalysis.resources => 0x92895a9e => 444
	i32 2458592288, ; 646: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 186
	i32 2458678730, ; 647: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 648: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2460994626, ; 649: it/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x92afcc42 => 474
	i32 2462337112, ; 650: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x92c44858 => 532
	i32 2465532216, ; 651: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 331
	i32 2468336027, ; 652: Microsoft.CodeAnalysis.Elfie.dll => 0x931fd19b => 218
	i32 2471841756, ; 653: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 654: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 655: Microsoft.Maui.Controls => 0x93dba8a1 => 264
	i32 2483903535, ; 656: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 657: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486100839, ; 658: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0x942ee367 => 277
	i32 2490993605, ; 659: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 660: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 661: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 353
	i32 2509217888, ; 662: System.Diagnostics.EventLog => 0x958fa060 => 299
	i32 2511706353, ; 663: Microsoft.CodeAnalysis.Features => 0x95b598f1 => 219
	i32 2514216601, ; 664: az\Humanizer.resources => 0x95dbe699 => 398
	i32 2518448533, ; 665: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x961c7995 => 525
	i32 2522472828, ; 666: Xamarin.Android.Glide.dll => 0x9659e17c => 312
	i32 2537015816, ; 667: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 187
	i32 2538310050, ; 668: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 669: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 546
	i32 2554139094, ; 670: ProdutosMAUI.dll => 0x983d11d6 => 0
	i32 2562349572, ; 671: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 672: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2573008149, ; 673: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x995cfd15 => 278
	i32 2578202641, ; 674: fa\Humanizer.resources => 0x99ac4011 => 406
	i32 2581783588, ; 675: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 354
	i32 2581819634, ; 676: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 376
	i32 2583428798, ; 677: pt-BR/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x99fbfebe => 530
	i32 2585011090, ; 678: NuGet.LibraryModel => 0x9a142392 => 286
	i32 2585220780, ; 679: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 680: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 681: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 190
	i32 2586448504, ; 682: pl\Microsoft.CodeAnalysis.Features.resources => 0x9a2a1278 => 503
	i32 2589602615, ; 683: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 684: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 240
	i32 2592999858, ; 685: pl/Microsoft.CodeAnalysis.resources.dll => 0x9a8e09b2 => 451
	i32 2593496499, ; 686: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 555
	i32 2594125473, ; 687: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 200
	i32 2597137376, ; 688: es/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9acd2be0 => 459
	i32 2600501332, ; 689: NuGet.Frameworks.dll => 0x9b008054 => 285
	i32 2605712449, ; 690: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 395
	i32 2614513330, ; 691: mt\Humanizer.resources => 0x9bd64eb2 => 422
	i32 2615233544, ; 692: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 345
	i32 2616218305, ; 693: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 249
	i32 2617129537, ; 694: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 695: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 696: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 335
	i32 2624644809, ; 697: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 340
	i32 2626831493, ; 698: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 550
	i32 2627185994, ; 699: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 700: System.Memory.Data => 0x9ca74fdc => 304
	i32 2629116046, ; 701: ar\Humanizer.resources => 0x9cb5208e => 397
	i32 2629843544, ; 702: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 703: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 349
	i32 2633959305, ; 704: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 204
	i32 2634653062, ; 705: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 228
	i32 2640290731, ; 706: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 258
	i32 2640706905, ; 707: Azure.Core => 0x9d65fd59 => 173
	i32 2648230441, ; 708: tr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9dd8ca29 => 467
	i32 2649063512, ; 709: pt/Humanizer.resources.dll => 0x9de58058 => 427
	i32 2660268199, ; 710: vi\Humanizer.resources => 0x9e9078a7 => 440
	i32 2660759594, ; 711: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 308
	i32 2661925899, ; 712: NuGet.Common => 0x9ea9c40b => 282
	i32 2663391936, ; 713: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 314
	i32 2663698177, ; 714: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 715: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 716: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 717: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 718: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2681334887, ; 719: cs/Humanizer.resources.dll => 0x9fd1ec67 => 401
	i32 2686887180, ; 720: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 721: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 194
	i32 2693849962, ; 722: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 723: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 374
	i32 2715334215, ; 724: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2716751016, ; 725: ko/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa1ee54a8 => 515
	i32 2717744543, ; 726: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 727: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2722434549, ; 728: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 214
	i32 2723680174, ; 729: es/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa2580fae => 524
	i32 2724373263, ; 730: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 731: Xamarin.AndroidX.Activity => 0xa2e0939b => 316
	i32 2734467373, ; 732: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xa2fca92d => 480
	i32 2735172069, ; 733: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 734: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 187
	i32 2737747696, ; 735: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 322
	i32 2740051746, ; 736: Microsoft.Identity.Client => 0xa351df22 => 254
	i32 2740948882, ; 737: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 738: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2749396593, ; 739: ko/Microsoft.CodeAnalysis.Features.resources.dll => 0xa3e07671 => 502
	i32 2752995522, ; 740: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 556
	i32 2755098380, ; 741: Microsoft.SqlServer.Server.dll => 0xa437770c => 271
	i32 2755643133, ; 742: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 229
	i32 2758225723, ; 743: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 265
	i32 2764765095, ; 744: Microsoft.Maui.dll => 0xa4caf7a7 => 266
	i32 2765824710, ; 745: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 746: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 389
	i32 2778768386, ; 747: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 379
	i32 2779977773, ; 748: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 367
	i32 2782920994, ; 749: Microsoft.AspNetCore.Authentication.Cookies => 0xa5e00122 => 185
	i32 2785988530, ; 750: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 562
	i32 2788224221, ; 751: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 345
	i32 2793340844, ; 752: pl/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa67effac => 516
	i32 2795666278, ; 753: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 279
	i32 2801831435, ; 754: Microsoft.Maui.Graphics => 0xa7008e0b => 268
	i32 2803228030, ; 755: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 756: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 541
	i32 2810250172, ; 757: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 332
	i32 2819267264, ; 758: NuGet.Configuration => 0xa80a9ac0 => 283
	i32 2819470561, ; 759: System.Xml.dll => 0xa80db4e1 => 163
	i32 2819745351, ; 760: pt-BR/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xa811e647 => 465
	i32 2821205001, ; 761: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 762: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 367
	i32 2822678584, ; 763: Microsoft.Build.Framework => 0xa83ea838 => 212
	i32 2823470325, ; 764: pt-BR/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xa84abcf5 => 491
	i32 2824502124, ; 765: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 766: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 554
	i32 2833784645, ; 767: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 207
	i32 2838993487, ; 768: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 356
	i32 2841355853, ; 769: System.Security.Permissions => 0xa95ba64d => 310
	i32 2847789619, ; 770: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 228
	i32 2849599387, ; 771: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 772: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 205
	i32 2851943490, ; 773: sl/Humanizer.resources.dll => 0xa9fd3442 => 431
	i32 2853208004, ; 774: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 379
	i32 2855708567, ; 775: Xamarin.AndroidX.Transition => 0xaa36a797 => 375
	i32 2861098320, ; 776: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 777: Microsoft.Maui.Essentials => 0xaa8a4878 => 267
	i32 2867142744, ; 778: ja/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xaae52058 => 462
	i32 2867946736, ; 779: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 308
	i32 2868387235, ; 780: uz-Cyrl-UZ\Humanizer.resources => 0xaaf81da3 => 438
	i32 2870099610, ; 781: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 317
	i32 2875164099, ; 782: Jsr305Binding.dll => 0xab5f85c3 => 385
	i32 2875220617, ; 783: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 784: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 343
	i32 2887636118, ; 785: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 786: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 193
	i32 2899753641, ; 787: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 788: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 789: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 790: mscorlib.dll => 0xad2a79b6 => 166
	i32 2906598491, ; 791: Microsoft.AspNet.Identity.EntityFramework => 0xad3f2c5b => 182
	i32 2909604320, ; 792: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xad6d09e0 => 475
	i32 2909686330, ; 793: tr/Microsoft.CodeAnalysis.Features.resources.dll => 0xad6e4a3a => 506
	i32 2909740682, ; 794: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 795: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 243
	i32 2916751541, ; 796: EntityFramework => 0xadda18b5 => 178
	i32 2916838712, ; 797: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 380
	i32 2919462931, ; 798: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2919948085, ; 799: it\Humanizer.resources => 0xae0adf35 => 416
	i32 2921128767, ; 800: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 319
	i32 2921417940, ; 801: System.Security.Cryptography.Xml => 0xae214cd4 => 309
	i32 2930358886, ; 802: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 199
	i32 2936416060, ; 803: System.Resources.Reader => 0xaf06273c => 98
	i32 2939918451, ; 804: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0xaf3b9873 => 273
	i32 2940926066, ; 805: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 806: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 807: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 298
	i32 2952707053, ; 808: NuGet.Frameworks => 0xaffebbed => 285
	i32 2959614098, ; 809: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960619068, ; 810: is/Humanizer.resources.dll => 0xb077763c => 415
	i32 2968338931, ; 811: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 812: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 813: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 200
	i32 2978675010, ; 814: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 339
	i32 2986085743, ; 815: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0xb1fc0d6f => 276
	i32 2987532451, ; 816: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 370
	i32 2988176241, ; 817: Microsoft.CodeAnalysis.Workspaces => 0xb21bf371 => 222
	i32 2996646946, ; 818: Microsoft.AspNetCore.Http => 0xb29d3422 => 202
	i32 2996846495, ; 819: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 352
	i32 3012788804, ; 820: System.Configuration.ConfigurationManager => 0xb3938244 => 298
	i32 3014607031, ; 821: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0xb3af40b7 => 197
	i32 3016983068, ; 822: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 372
	i32 3023353419, ; 823: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 824: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 347
	i32 3033232394, ; 825: hy/Humanizer.resources.dll => 0xb4cb740a => 413
	i32 3033331042, ; 826: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 186
	i32 3033605958, ; 827: System.Memory.Data.dll => 0xb4d12746 => 304
	i32 3036999524, ; 828: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 204
	i32 3038032645, ; 829: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 569
	i32 3056245963, ; 830: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 369
	i32 3057625584, ; 831: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 360
	i32 3058348817, ; 832: es\Microsoft.CodeAnalysis.Workspaces.resources => 0xb64ab311 => 524
	i32 3059408633, ; 833: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 834: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3062329077, ; 835: cs/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6876ef5 => 509
	i32 3069284769, ; 836: it/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6f191a1 => 513
	i32 3069363400, ; 837: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 230
	i32 3075834255, ; 838: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 839: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 547
	i32 3077674723, ; 840: ru/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xb77196e3 => 531
	i32 3084678329, ; 841: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 261
	i32 3090735792, ; 842: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 843: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 253
	i32 3099732863, ; 844: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 845: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3110363141, ; 846: bn-BD/Humanizer.resources.dll => 0xb9646005 => 400
	i32 3111772706, ; 847: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3117571426, ; 848: uk/Humanizer.resources.dll => 0xb9d25d62 => 437
	i32 3121463068, ; 849: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 850: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 851: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3135950041, ; 852: Microsoft.Build.Framework.dll => 0xbaeaccd9 => 212
	i32 3137307937, ; 853: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xbaff8521 => 486
	i32 3146228286, ; 854: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0xbb87a23e => 521
	i32 3147165239, ; 855: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 856: GoogleGson.dll => 0xbba64c02 => 179
	i32 3151916485, ; 857: zh-CN\Humanizer.resources => 0xbbde6dc5 => 441
	i32 3155681111, ; 858: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 198
	i32 3159123045, ; 859: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 860: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3161157966, ; 861: az/Humanizer.resources.dll => 0xbc6b714e => 398
	i32 3162329233, ; 862: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xbc7d5091 => 494
	i32 3173713272, ; 863: cs/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbd2b0578 => 483
	i32 3178803400, ; 864: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 361
	i32 3192346100, ; 865: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 866: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 867: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 230
	i32 3198990134, ; 868: lv\Humanizer.resources => 0xbeacb736 => 420
	i32 3204380047, ; 869: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 870: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 871: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 338
	i32 3213246214, ; 872: System.Security.Permissions.dll => 0xbf863f06 => 310
	i32 3220365878, ; 873: System.Threading => 0xbff2e236 => 148
	i32 3225142516, ; 874: NuGet.Versioning => 0xc03bc4f4 => 290
	i32 3226221578, ; 875: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3235211957, ; 876: ru/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xc0d56ab5 => 518
	i32 3236685057, ; 877: uz-Latn-UZ\Humanizer.resources => 0xc0ebe501 => 439
	i32 3245785879, ; 878: de/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xc176c317 => 458
	i32 3251039220, ; 879: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3255883881, ; 880: tr\Humanizer.resources => 0xc210d869 => 436
	i32 3257523865, ; 881: Microsoft.AspNetCore.Identity.dll => 0xc229de99 => 206
	i32 3258312781, ; 882: Xamarin.AndroidX.CardView => 0xc235e84d => 326
	i32 3265493905, ; 883: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 884: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3275336830, ; 885: sl\Humanizer.resources => 0xc339ac7e => 431
	i32 3277815716, ; 886: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 887: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 888: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3284892224, ; 889: ru/Microsoft.CodeAnalysis.resources.dll => 0xc3cb7a40 => 453
	i32 3290767353, ; 890: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3296560137, ; 891: sv\Humanizer.resources => 0xc47d8409 => 434
	i32 3299363146, ; 892: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 893: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 209
	i32 3303498502, ; 894: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3304979567, ; 895: Humanizer.dll => 0xc4fdfc6f => 180
	i32 3305363605, ; 896: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 542
	i32 3312457198, ; 897: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 257
	i32 3315699264, ; 898: System.Composition.Hosting => 0xc5a18e40 => 295
	i32 3316684772, ; 899: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 900: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 336
	i32 3317144872, ; 901: System.Data => 0xc5b79d28 => 24
	i32 3317354178, ; 902: es\Microsoft.CodeAnalysis.Features.resources => 0xc5bacec2 => 498
	i32 3321099197, ; 903: sr-Latn/Humanizer.resources.dll => 0xc5f3f3bd => 433
	i32 3322802946, ; 904: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xc60df302 => 470
	i32 3323152254, ; 905: uz-Cyrl-UZ/Humanizer.resources.dll => 0xc613477e => 438
	i32 3334443138, ; 906: sv/Humanizer.resources.dll => 0xc6bf9082 => 434
	i32 3340431453, ; 907: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 324
	i32 3345895724, ; 908: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 365
	i32 3346324047, ; 909: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 362
	i32 3357674450, ; 910: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 559
	i32 3358260929, ; 911: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 912: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 317
	i32 3362522851, ; 913: Xamarin.AndroidX.Core => 0xc86c06e3 => 333
	i32 3366347497, ; 914: Java.Interop => 0xc8a662e9 => 168
	i32 3366973124, ; 915: zh-Hans\Microsoft.CodeAnalysis.resources => 0xc8afeec4 => 455
	i32 3374879918, ; 916: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 259
	i32 3374999561, ; 917: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 366
	i32 3381016424, ; 918: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 538
	i32 3384077219, ; 919: ko/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xc9b4eba3 => 476
	i32 3385193906, ; 920: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc9c5f5b2 => 487
	i32 3395150330, ; 921: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396351408, ; 922: ru\Microsoft.CodeAnalysis.CSharp.resources => 0xca7035b0 => 466
	i32 3398803625, ; 923: Mono.TextTemplating => 0xca95a0a9 => 280
	i32 3403906625, ; 924: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 925: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 337
	i32 3406129585, ; 926: pl\Humanizer.resources => 0xcb0569b1 => 426
	i32 3406629867, ; 927: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 241
	i32 3421170118, ; 928: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 234
	i32 3427208810, ; 929: hr\Humanizer.resources => 0xcc470e6a => 411
	i32 3428513518, ; 930: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 237
	i32 3429136800, ; 931: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 932: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 933: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 340
	i32 3445114897, ; 934: fr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xcd584811 => 473
	i32 3445260447, ; 935: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 936: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 263
	i32 3457410834, ; 937: es/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xce13e712 => 485
	i32 3463511458, ; 938: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 546
	i32 3464190856, ; 939: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 190
	i32 3465327893, ; 940: el\Humanizer.resources => 0xce8cb515 => 404
	i32 3471940407, ; 941: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 942: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 943: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 559
	i32 3484440000, ; 944: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 558
	i32 3485117614, ; 945: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 946: System.Transactions => 0xcfd0c798 => 150
	i32 3488260661, ; 947: pt-BR\Microsoft.CodeAnalysis.resources => 0xcfeaa235 => 452
	i32 3493954962, ; 948: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 329
	i32 3500000672, ; 949: Microsoft.JSInterop => 0xd09dc5a0 => 262
	i32 3509114376, ; 950: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 951: System.Security.dll => 0xd1854eb4 => 130
	i32 3519914379, ; 952: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xd1cda18b => 217
	i32 3526217725, ; 953: NuGet.ProjectModel.dll => 0xd22dcffd => 288
	i32 3530783736, ; 954: zh-Hans/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xd2737bf8 => 494
	i32 3530912306, ; 955: System.Configuration => 0xd2757232 => 19
	i32 3538463390, ; 956: pl/Microsoft.CodeAnalysis.Features.resources.dll => 0xd2e8aa9e => 503
	i32 3539954161, ; 957: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 958: Microsoft.Data.SqlClient => 0xd35114f1 => 223
	i32 3545363771, ; 959: System.Composition.AttributedModel => 0xd351f53b => 293
	i32 3555789582, ; 960: ko\Microsoft.CodeAnalysis.Scripting.resources => 0xd3f10b0e => 515
	i32 3558648585, ; 961: System.ClientModel => 0xd41cab09 => 291
	i32 3560100363, ; 962: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 963: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 964: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 965: System.Runtime.Caching.dll => 0xd4d3289f => 306
	i32 3580758918, ; 966: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 566
	i32 3597029428, ; 967: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 315
	i32 3598340787, ; 968: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 969: System.Linq.dll => 0xd715a361 => 61
	i32 3612753153, ; 970: hr/Humanizer.resources.dll => 0xd7563d01 => 411
	i32 3614030538, ; 971: nb\Humanizer.resources => 0xd769baca => 423
	i32 3619374377, ; 972: Microsoft.Extensions.Identity.Core => 0xd7bb4529 => 246
	i32 3624195450, ; 973: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3626814988, ; 974: Microsoft.CodeAnalysis.Scripting.dll => 0xd82cce0c => 221
	i32 3627119903, ; 975: ja\Humanizer.resources => 0xd831751f => 417
	i32 3627220390, ; 976: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 364
	i32 3633644679, ; 977: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 319
	i32 3638274909, ; 978: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 979: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 350
	i32 3643446276, ; 980: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 563
	i32 3643854240, ; 981: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 361
	i32 3645089577, ; 982: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3653734595, ; 983: EntityFramework.dll => 0xd9c790c3 => 178
	i32 3657292374, ; 984: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 233
	i32 3660523487, ; 985: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3664207537, ; 986: af/Humanizer.resources.dll => 0xda675eb1 => 396
	i32 3672681054, ; 987: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3675389610, ; 988: sk/Humanizer.resources.dll => 0xdb11feaa => 430
	i32 3680473675, ; 989: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xdb5f924b => 504
	i32 3682565725, ; 990: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 325
	i32 3684561358, ; 991: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 329
	i32 3685965367, ; 992: ja/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xdbb35e37 => 488
	i32 3689375977, ; 993: System.Drawing.Common => 0xdbe768e9 => 300
	i32 3697841164, ; 994: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 568
	i32 3698844660, ; 995: hu/Humanizer.resources.dll => 0xdc77e3f4 => 412
	i32 3700591436, ; 996: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 256
	i32 3700866549, ; 997: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3702852043, ; 998: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xdcb509cb => 463
	i32 3706696989, ; 999: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 334
	i32 3716563718, ; 1000: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 1001: Xamarin.AndroidX.Annotation => 0xdda814c6 => 318
	i32 3722202641, ; 1002: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 236
	i32 3724971120, ; 1003: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 360
	i32 3726828805, ; 1004: de\Microsoft.CodeAnalysis.Workspaces.resources => 0xde22e505 => 523
	i32 3732100267, ; 1005: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 1006: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 207
	i32 3737834244, ; 1007: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748220531, ; 1008: fr\Microsoft.CodeAnalysis.resources => 0xdf694e73 => 447
	i32 3748608112, ; 1009: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 1010: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3753194597, ; 1011: id\Humanizer.resources => 0xdfb53465 => 414
	i32 3754087143, ; 1012: Microsoft.CodeAnalysis.CSharp.Features => 0xdfc2d2e7 => 216
	i32 3757377913, ; 1013: EntityFramework.SqlServer => 0xdff50979 => 177
	i32 3758424670, ; 1014: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 235
	i32 3765508441, ; 1015: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 250
	i32 3766131739, ; 1016: ku\Humanizer.resources => 0xe07a9c1b => 419
	i32 3769668999, ; 1017: dotnet-aspnet-codegenerator-design => 0xe0b09587 => 274
	i32 3773491389, ; 1018: vi/Humanizer.resources.dll => 0xe0eae8bd => 440
	i32 3786282454, ; 1019: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 327
	i32 3792276235, ; 1020: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3799976085, ; 1021: hu\Humanizer.resources => 0xe27f0895 => 412
	i32 3800979733, ; 1022: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 263
	i32 3802314059, ; 1023: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xe2a2b54b => 476
	i32 3802395368, ; 1024: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 1025: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 307
	i32 3808703996, ; 1026: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xe30435fc => 531
	i32 3819260425, ; 1027: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822443793, ; 1028: DocumentFormat.OpenXml => 0xe3d5dd11 => 175
	i32 3823082795, ; 1029: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 1030: System.Numerics.dll => 0xe4436460 => 83
	i32 3829832231, ; 1031: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter => 0xe4469a27 => 192
	i32 3835967995, ; 1032: zh-Hant/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe4a439fb => 521
	i32 3841363665, ; 1033: zh-Hant/Humanizer.resources.dll => 0xe4f68ed1 => 443
	i32 3841636137, ; 1034: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 238
	i32 3844307129, ; 1035: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 1036: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 1037: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3871054620, ; 1038: System.Composition.Runtime => 0xe6bb9b1c => 296
	i32 3873536506, ; 1039: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 1040: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3880216086, ; 1041: id/Humanizer.resources.dll => 0xe7476616 => 414
	i32 3882426981, ; 1042: th-TH/Humanizer.resources.dll => 0xe7692265 => 435
	i32 3885497537, ; 1043: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 1044: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 375
	i32 3888767677, ; 1045: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 365
	i32 3889960447, ; 1046: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 567
	i32 3896106733, ; 1047: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 1048: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 333
	i32 3900683505, ; 1049: System.Composition.TypedParts => 0xe87fb4f1 => 297
	i32 3901907137, ; 1050: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3901960326, ; 1051: ko/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xe8933086 => 489
	i32 3909047057, ; 1052: uk\Humanizer.resources => 0xe8ff5311 => 437
	i32 3920810846, ; 1053: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 1054: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 378
	i32 3928044579, ; 1055: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 1056: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 1057: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 363
	i32 3945713374, ; 1058: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3947271234, ; 1059: ro\Humanizer.resources => 0xeb469442 => 428
	i32 3952277326, ; 1060: pt-BR/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xeb92f74e => 478
	i32 3952357212, ; 1061: System.IO.Packaging.dll => 0xeb942f5c => 302
	i32 3953953790, ; 1062: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 1063: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 321
	i32 3958156203, ; 1064: pt\Humanizer.resources => 0xebecabab => 427
	i32 3959773229, ; 1065: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 352
	i32 3962225205, ; 1066: fa/Humanizer.resources.dll => 0xec2ac235 => 406
	i32 3980434154, ; 1067: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 562
	i32 3987592930, ; 1068: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 544
	i32 4000339556, ; 1069: ko/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xee705664 => 463
	i32 4002654803, ; 1070: Microsoft.CodeAnalysis.Workspaces.dll => 0xee93aa53 => 222
	i32 4003436829, ; 1071: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4006106083, ; 1072: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xeec853e3 => 490
	i32 4015948917, ; 1073: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 320
	i32 4017538743, ; 1074: ar/Humanizer.resources.dll => 0xef76c6b7 => 397
	i32 4022460502, ; 1075: Microsoft.DotNet.Scaffolding.Shared => 0xefc1e056 => 225
	i32 4023392905, ; 1076: System.IO.Pipelines => 0xefd01a89 => 303
	i32 4023689262, ; 1077: fr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xefd4a02e => 486
	i32 4025784931, ; 1078: System.Memory => 0xeff49a63 => 62
	i32 4026527876, ; 1079: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 215
	i32 4035041792, ; 1080: zh-Hant/Microsoft.CodeAnalysis.resources.dll => 0xf081da00 => 456
	i32 4035816735, ; 1081: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xf08dad1f => 485
	i32 4044155772, ; 1082: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 269
	i32 4046471985, ; 1083: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 265
	i32 4051956670, ; 1084: NuGet.Protocol.dll => 0xf183f3be => 289
	i32 4054681211, ; 1085: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 1086: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 1087: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 1088: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 245
	i32 4083924092, ; 1089: tr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xf36bbc7c => 519
	i32 4094352644, ; 1090: Microsoft.Maui.Essentials.dll => 0xf40add04 => 267
	i32 4099507663, ; 1091: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 1092: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 1093: Xamarin.AndroidX.Emoji2 => 0xf479582c => 341
	i32 4101842092, ; 1094: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 231
	i32 4102112229, ; 1095: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 557
	i32 4113104511, ; 1096: Mono.TextTemplating.dll => 0xf528fe7f => 280
	i32 4116013827, ; 1097: Microsoft.AspNetCore.Components.QuickGrid => 0xf5556303 => 191
	i32 4118552436, ; 1098: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 183
	i32 4118796114, ; 1099: de\Microsoft.CodeAnalysis.CSharp.resources => 0xf57fd752 => 458
	i32 4125707920, ; 1100: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 552
	i32 4126470640, ; 1101: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 237
	i32 4127667938, ; 1102: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 1103: System.AppContext => 0xf6318da0 => 6
	i32 4139600647, ; 1104: fr/Microsoft.CodeAnalysis.Features.resources.dll => 0xf6bd4b07 => 499
	i32 4147896353, ; 1105: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 1106: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 564
	i32 4151237749, ; 1107: System.Core => 0xf76edc75 => 21
	i32 4154421718, ; 1108: fr-BE/Humanizer.resources.dll => 0xf79f71d6 => 409
	i32 4159265925, ; 1109: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 1110: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164470604, ; 1111: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xf838c74c => 493
	i32 4164802419, ; 1112: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4172494248, ; 1113: fr/Humanizer.resources.dll => 0xf8b335a8 => 408
	i32 4177402947, ; 1114: cs/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf8fe1c43 => 457
	i32 4179525066, ; 1115: tr\Microsoft.CodeAnalysis.Scripting.resources => 0xf91e7dca => 519
	i32 4181436372, ; 1116: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 1117: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 357
	i32 4185676441, ; 1118: System.Security => 0xf97c5a99 => 130
	i32 4187874287, ; 1119: tr\Microsoft.CodeAnalysis.resources => 0xf99de3ef => 454
	i32 4193875346, ; 1120: ja/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf9f97592 => 475
	i32 4194278001, ; 1121: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 229
	i32 4196171640, ; 1122: Microsoft.CodeAnalysis => 0xfa1c7f78 => 214
	i32 4196529839, ; 1123: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4207745933, ; 1124: it\Microsoft.CodeAnalysis.Workspaces.resources => 0xfacd1b8d => 526
	i32 4213026141, ; 1125: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4219953892, ; 1126: sr/Humanizer.resources.dll => 0xfb8762e4 => 432
	i32 4225873007, ; 1127: zh-Hant/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xfbe1b46f => 482
	i32 4245218886, ; 1128: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 215
	i32 4250496667, ; 1129: ja/Humanizer.resources.dll => 0xfd596e9b => 417
	i32 4256097574, ; 1130: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 334
	i32 4258378803, ; 1131: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 356
	i32 4260525087, ; 1132: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 1133: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 301
	i32 4271975918, ; 1134: Microsoft.Maui.Controls.dll => 0xfea12dee => 264
	i32 4274976490, ; 1135: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4289667212, ; 1136: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0xffaf208c => 275
	i32 4292120959, ; 1137: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 357
	i32 4294648842, ; 1138: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 242
	i32 4294763496 ; 1139: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 343
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1140 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 497, ; 3
	i32 239, ; 4
	i32 445, ; 5
	i32 425, ; 6
	i32 353, ; 7
	i32 388, ; 8
	i32 48, ; 9
	i32 402, ; 10
	i32 399, ; 11
	i32 534, ; 12
	i32 281, ; 13
	i32 80, ; 14
	i32 145, ; 15
	i32 432, ; 16
	i32 510, ; 17
	i32 484, ; 18
	i32 279, ; 19
	i32 30, ; 20
	i32 568, ; 21
	i32 124, ; 22
	i32 268, ; 23
	i32 217, ; 24
	i32 102, ; 25
	i32 196, ; 26
	i32 405, ; 27
	i32 455, ; 28
	i32 371, ; 29
	i32 471, ; 30
	i32 107, ; 31
	i32 371, ; 32
	i32 139, ; 33
	i32 392, ; 34
	i32 274, ; 35
	i32 77, ; 36
	i32 124, ; 37
	i32 13, ; 38
	i32 327, ; 39
	i32 132, ; 40
	i32 209, ; 41
	i32 373, ; 42
	i32 151, ; 43
	i32 565, ; 44
	i32 566, ; 45
	i32 18, ; 46
	i32 325, ; 47
	i32 26, ; 48
	i32 206, ; 49
	i32 347, ; 50
	i32 1, ; 51
	i32 59, ; 52
	i32 42, ; 53
	i32 468, ; 54
	i32 192, ; 55
	i32 423, ; 56
	i32 189, ; 57
	i32 91, ; 58
	i32 483, ; 59
	i32 188, ; 60
	i32 216, ; 61
	i32 330, ; 62
	i32 176, ; 63
	i32 180, ; 64
	i32 147, ; 65
	i32 349, ; 66
	i32 346, ; 67
	i32 537, ; 68
	i32 410, ; 69
	i32 54, ; 70
	i32 460, ; 71
	i32 407, ; 72
	i32 69, ; 73
	i32 184, ; 74
	i32 479, ; 75
	i32 565, ; 76
	i32 316, ; 77
	i32 83, ; 78
	i32 491, ; 79
	i32 271, ; 80
	i32 550, ; 81
	i32 348, ; 82
	i32 413, ; 83
	i32 224, ; 84
	i32 549, ; 85
	i32 131, ; 86
	i32 55, ; 87
	i32 149, ; 88
	i32 74, ; 89
	i32 145, ; 90
	i32 522, ; 91
	i32 62, ; 92
	i32 294, ; 93
	i32 146, ; 94
	i32 569, ; 95
	i32 512, ; 96
	i32 165, ; 97
	i32 468, ; 98
	i32 284, ; 99
	i32 456, ; 100
	i32 472, ; 101
	i32 493, ; 102
	i32 561, ; 103
	i32 473, ; 104
	i32 331, ; 105
	i32 383, ; 106
	i32 12, ; 107
	i32 344, ; 108
	i32 125, ; 109
	i32 152, ; 110
	i32 113, ; 111
	i32 166, ; 112
	i32 164, ; 113
	i32 346, ; 114
	i32 256, ; 115
	i32 359, ; 116
	i32 428, ; 117
	i32 201, ; 118
	i32 84, ; 119
	i32 548, ; 120
	i32 542, ; 121
	i32 252, ; 122
	i32 433, ; 123
	i32 495, ; 124
	i32 150, ; 125
	i32 392, ; 126
	i32 60, ; 127
	i32 439, ; 128
	i32 477, ; 129
	i32 247, ; 130
	i32 51, ; 131
	i32 487, ; 132
	i32 103, ; 133
	i32 114, ; 134
	i32 481, ; 135
	i32 210, ; 136
	i32 40, ; 137
	i32 385, ; 138
	i32 208, ; 139
	i32 282, ; 140
	i32 382, ; 141
	i32 242, ; 142
	i32 272, ; 143
	i32 225, ; 144
	i32 505, ; 145
	i32 120, ; 146
	i32 481, ; 147
	i32 556, ; 148
	i32 278, ; 149
	i32 506, ; 150
	i32 52, ; 151
	i32 44, ; 152
	i32 119, ; 153
	i32 441, ; 154
	i32 336, ; 155
	i32 554, ; 156
	i32 342, ; 157
	i32 81, ; 158
	i32 403, ; 159
	i32 136, ; 160
	i32 378, ; 161
	i32 323, ; 162
	i32 8, ; 163
	i32 520, ; 164
	i32 73, ; 165
	i32 294, ; 166
	i32 536, ; 167
	i32 155, ; 168
	i32 394, ; 169
	i32 154, ; 170
	i32 92, ; 171
	i32 389, ; 172
	i32 45, ; 173
	i32 514, ; 174
	i32 490, ; 175
	i32 551, ; 176
	i32 224, ; 177
	i32 403, ; 178
	i32 307, ; 179
	i32 539, ; 180
	i32 425, ; 181
	i32 393, ; 182
	i32 109, ; 183
	i32 291, ; 184
	i32 527, ; 185
	i32 500, ; 186
	i32 129, ; 187
	i32 429, ; 188
	i32 284, ; 189
	i32 442, ; 190
	i32 25, ; 191
	i32 313, ; 192
	i32 72, ; 193
	i32 55, ; 194
	i32 270, ; 195
	i32 402, ; 196
	i32 46, ; 197
	i32 560, ; 198
	i32 296, ; 199
	i32 218, ; 200
	i32 251, ; 201
	i32 337, ; 202
	i32 446, ; 203
	i32 195, ; 204
	i32 22, ; 205
	i32 351, ; 206
	i32 300, ; 207
	i32 86, ; 208
	i32 43, ; 209
	i32 160, ; 210
	i32 499, ; 211
	i32 71, ; 212
	i32 507, ; 213
	i32 364, ; 214
	i32 404, ; 215
	i32 211, ; 216
	i32 501, ; 217
	i32 435, ; 218
	i32 482, ; 219
	i32 3, ; 220
	i32 42, ; 221
	i32 63, ; 222
	i32 479, ; 223
	i32 420, ; 224
	i32 221, ; 225
	i32 16, ; 226
	i32 53, ; 227
	i32 563, ; 228
	i32 388, ; 229
	i32 220, ; 230
	i32 287, ; 231
	i32 492, ; 232
	i32 105, ; 233
	i32 281, ; 234
	i32 460, ; 235
	i32 393, ; 236
	i32 286, ; 237
	i32 386, ; 238
	i32 348, ; 239
	i32 208, ; 240
	i32 34, ; 241
	i32 158, ; 242
	i32 85, ; 243
	i32 32, ; 244
	i32 12, ; 245
	i32 51, ; 246
	i32 244, ; 247
	i32 56, ; 248
	i32 508, ; 249
	i32 368, ; 250
	i32 36, ; 251
	i32 185, ; 252
	i32 408, ; 253
	i32 238, ; 254
	i32 538, ; 255
	i32 387, ; 256
	i32 511, ; 257
	i32 321, ; 258
	i32 35, ; 259
	i32 58, ; 260
	i32 355, ; 261
	i32 492, ; 262
	i32 255, ; 263
	i32 179, ; 264
	i32 17, ; 265
	i32 302, ; 266
	i32 390, ; 267
	i32 419, ; 268
	i32 464, ; 269
	i32 299, ; 270
	i32 181, ; 271
	i32 164, ; 272
	i32 462, ; 273
	i32 235, ; 274
	i32 305, ; 275
	i32 245, ; 276
	i32 184, ; 277
	i32 551, ; 278
	i32 354, ; 279
	i32 249, ; 280
	i32 197, ; 281
	i32 223, ; 282
	i32 311, ; 283
	i32 381, ; 284
	i32 480, ; 285
	i32 227, ; 286
	i32 534, ; 287
	i32 557, ; 288
	i32 153, ; 289
	i32 240, ; 290
	i32 377, ; 291
	i32 464, ; 292
	i32 405, ; 293
	i32 362, ; 294
	i32 514, ; 295
	i32 276, ; 296
	i32 219, ; 297
	i32 227, ; 298
	i32 555, ; 299
	i32 323, ; 300
	i32 231, ; 301
	i32 29, ; 302
	i32 273, ; 303
	i32 52, ; 304
	i32 269, ; 305
	i32 478, ; 306
	i32 523, ; 307
	i32 553, ; 308
	i32 201, ; 309
	i32 382, ; 310
	i32 5, ; 311
	i32 537, ; 312
	i32 502, ; 313
	i32 372, ; 314
	i32 376, ; 315
	i32 424, ; 316
	i32 328, ; 317
	i32 394, ; 318
	i32 320, ; 319
	i32 520, ; 320
	i32 177, ; 321
	i32 176, ; 322
	i32 339, ; 323
	i32 505, ; 324
	i32 449, ; 325
	i32 85, ; 326
	i32 396, ; 327
	i32 525, ; 328
	i32 381, ; 329
	i32 61, ; 330
	i32 495, ; 331
	i32 533, ; 332
	i32 522, ; 333
	i32 112, ; 334
	i32 175, ; 335
	i32 517, ; 336
	i32 449, ; 337
	i32 401, ; 338
	i32 57, ; 339
	i32 466, ; 340
	i32 513, ; 341
	i32 410, ; 342
	i32 567, ; 343
	i32 457, ; 344
	i32 368, ; 345
	i32 430, ; 346
	i32 99, ; 347
	i32 270, ; 348
	i32 436, ; 349
	i32 407, ; 350
	i32 416, ; 351
	i32 19, ; 352
	i32 332, ; 353
	i32 111, ; 354
	i32 426, ; 355
	i32 101, ; 356
	i32 102, ; 357
	i32 496, ; 358
	i32 535, ; 359
	i32 445, ; 360
	i32 104, ; 361
	i32 386, ; 362
	i32 71, ; 363
	i32 448, ; 364
	i32 510, ; 365
	i32 444, ; 366
	i32 38, ; 367
	i32 32, ; 368
	i32 241, ; 369
	i32 103, ; 370
	i32 73, ; 371
	i32 301, ; 372
	i32 541, ; 373
	i32 9, ; 374
	i32 123, ; 375
	i32 46, ; 376
	i32 213, ; 377
	i32 518, ; 378
	i32 322, ; 379
	i32 252, ; 380
	i32 484, ; 381
	i32 9, ; 382
	i32 43, ; 383
	i32 4, ; 384
	i32 369, ; 385
	i32 545, ; 386
	i32 181, ; 387
	i32 257, ; 388
	i32 540, ; 389
	i32 459, ; 390
	i32 244, ; 391
	i32 453, ; 392
	i32 31, ; 393
	i32 429, ; 394
	i32 400, ; 395
	i32 138, ; 396
	i32 92, ; 397
	i32 195, ; 398
	i32 93, ; 399
	i32 560, ; 400
	i32 511, ; 401
	i32 306, ; 402
	i32 49, ; 403
	i32 469, ; 404
	i32 141, ; 405
	i32 447, ; 406
	i32 290, ; 407
	i32 533, ; 408
	i32 112, ; 409
	i32 140, ; 410
	i32 174, ; 411
	i32 338, ; 412
	i32 287, ; 413
	i32 115, ; 414
	i32 387, ; 415
	i32 516, ; 416
	i32 157, ; 417
	i32 76, ; 418
	i32 79, ; 419
	i32 358, ; 420
	i32 37, ; 421
	i32 380, ; 422
	i32 260, ; 423
	i32 182, ; 424
	i32 236, ; 425
	i32 342, ; 426
	i32 335, ; 427
	i32 191, ; 428
	i32 64, ; 429
	i32 138, ; 430
	i32 15, ; 431
	i32 194, ; 432
	i32 116, ; 433
	i32 374, ; 434
	i32 384, ; 435
	i32 452, ; 436
	i32 330, ; 437
	i32 48, ; 438
	i32 70, ; 439
	i32 80, ; 440
	i32 126, ; 441
	i32 529, ; 442
	i32 226, ; 443
	i32 94, ; 444
	i32 512, ; 445
	i32 121, ; 446
	i32 391, ; 447
	i32 26, ; 448
	i32 272, ; 449
	i32 295, ; 450
	i32 497, ; 451
	i32 351, ; 452
	i32 97, ; 453
	i32 28, ; 454
	i32 326, ; 455
	i32 558, ; 456
	i32 536, ; 457
	i32 149, ; 458
	i32 303, ; 459
	i32 169, ; 460
	i32 461, ; 461
	i32 454, ; 462
	i32 4, ; 463
	i32 422, ; 464
	i32 471, ; 465
	i32 532, ; 466
	i32 98, ; 467
	i32 193, ; 468
	i32 504, ; 469
	i32 33, ; 470
	i32 93, ; 471
	i32 373, ; 472
	i32 421, ; 473
	i32 528, ; 474
	i32 247, ; 475
	i32 21, ; 476
	i32 41, ; 477
	i32 170, ; 478
	i32 469, ; 479
	i32 552, ; 480
	i32 344, ; 481
	i32 183, ; 482
	i32 409, ; 483
	i32 544, ; 484
	i32 254, ; 485
	i32 210, ; 486
	i32 358, ; 487
	i32 500, ; 488
	i32 390, ; 489
	i32 384, ; 490
	i32 501, ; 491
	i32 363, ; 492
	i32 2, ; 493
	i32 205, ; 494
	i32 196, ; 495
	i32 134, ; 496
	i32 111, ; 497
	i32 248, ; 498
	i32 311, ; 499
	i32 283, ; 500
	i32 564, ; 501
	i32 313, ; 502
	i32 561, ; 503
	i32 58, ; 504
	i32 470, ; 505
	i32 383, ; 506
	i32 95, ; 507
	i32 260, ; 508
	i32 543, ; 509
	i32 39, ; 510
	i32 324, ; 511
	i32 25, ; 512
	i32 94, ; 513
	i32 89, ; 514
	i32 99, ; 515
	i32 10, ; 516
	i32 292, ; 517
	i32 203, ; 518
	i32 488, ; 519
	i32 293, ; 520
	i32 448, ; 521
	i32 87, ; 522
	i32 461, ; 523
	i32 199, ; 524
	i32 100, ; 525
	i32 467, ; 526
	i32 370, ; 527
	i32 232, ; 528
	i32 465, ; 529
	i32 277, ; 530
	i32 211, ; 531
	i32 391, ; 532
	i32 297, ; 533
	i32 315, ; 534
	i32 261, ; 535
	i32 246, ; 536
	i32 489, ; 537
	i32 450, ; 538
	i32 526, ; 539
	i32 540, ; 540
	i32 305, ; 541
	i32 7, ; 542
	i32 355, ; 543
	i32 535, ; 544
	i32 312, ; 545
	i32 443, ; 546
	i32 0, ; 547
	i32 255, ; 548
	i32 88, ; 549
	i32 234, ; 550
	i32 529, ; 551
	i32 350, ; 552
	i32 154, ; 553
	i32 539, ; 554
	i32 399, ; 555
	i32 33, ; 556
	i32 243, ; 557
	i32 203, ; 558
	i32 253, ; 559
	i32 116, ; 560
	i32 446, ; 561
	i32 309, ; 562
	i32 82, ; 563
	i32 418, ; 564
	i32 474, ; 565
	i32 498, ; 566
	i32 20, ; 567
	i32 450, ; 568
	i32 418, ; 569
	i32 528, ; 570
	i32 11, ; 571
	i32 162, ; 572
	i32 3, ; 573
	i32 509, ; 574
	i32 266, ; 575
	i32 547, ; 576
	i32 292, ; 577
	i32 251, ; 578
	i32 213, ; 579
	i32 248, ; 580
	i32 189, ; 581
	i32 84, ; 582
	i32 239, ; 583
	i32 415, ; 584
	i32 395, ; 585
	i32 64, ; 586
	i32 250, ; 587
	i32 549, ; 588
	i32 508, ; 589
	i32 377, ; 590
	i32 143, ; 591
	i32 477, ; 592
	i32 202, ; 593
	i32 359, ; 594
	i32 157, ; 595
	i32 226, ; 596
	i32 259, ; 597
	i32 41, ; 598
	i32 288, ; 599
	i32 117, ; 600
	i32 233, ; 601
	i32 314, ; 602
	i32 543, ; 603
	i32 517, ; 604
	i32 424, ; 605
	i32 442, ; 606
	i32 366, ; 607
	i32 198, ; 608
	i32 131, ; 609
	i32 451, ; 610
	i32 75, ; 611
	i32 66, ; 612
	i32 553, ; 613
	i32 172, ; 614
	i32 318, ; 615
	i32 143, ; 616
	i32 527, ; 617
	i32 530, ; 618
	i32 106, ; 619
	i32 421, ; 620
	i32 151, ; 621
	i32 70, ; 622
	i32 496, ; 623
	i32 156, ; 624
	i32 258, ; 625
	i32 232, ; 626
	i32 121, ; 627
	i32 127, ; 628
	i32 548, ; 629
	i32 289, ; 630
	i32 152, ; 631
	i32 341, ; 632
	i32 188, ; 633
	i32 141, ; 634
	i32 275, ; 635
	i32 328, ; 636
	i32 220, ; 637
	i32 545, ; 638
	i32 20, ; 639
	i32 507, ; 640
	i32 14, ; 641
	i32 262, ; 642
	i32 472, ; 643
	i32 135, ; 644
	i32 444, ; 645
	i32 186, ; 646
	i32 75, ; 647
	i32 59, ; 648
	i32 474, ; 649
	i32 532, ; 650
	i32 331, ; 651
	i32 218, ; 652
	i32 167, ; 653
	i32 168, ; 654
	i32 264, ; 655
	i32 15, ; 656
	i32 74, ; 657
	i32 277, ; 658
	i32 6, ; 659
	i32 23, ; 660
	i32 353, ; 661
	i32 299, ; 662
	i32 219, ; 663
	i32 398, ; 664
	i32 525, ; 665
	i32 312, ; 666
	i32 187, ; 667
	i32 91, ; 668
	i32 546, ; 669
	i32 0, ; 670
	i32 1, ; 671
	i32 136, ; 672
	i32 278, ; 673
	i32 406, ; 674
	i32 354, ; 675
	i32 376, ; 676
	i32 530, ; 677
	i32 286, ; 678
	i32 134, ; 679
	i32 69, ; 680
	i32 190, ; 681
	i32 503, ; 682
	i32 146, ; 683
	i32 240, ; 684
	i32 451, ; 685
	i32 555, ; 686
	i32 200, ; 687
	i32 459, ; 688
	i32 285, ; 689
	i32 395, ; 690
	i32 422, ; 691
	i32 345, ; 692
	i32 249, ; 693
	i32 88, ; 694
	i32 96, ; 695
	i32 335, ; 696
	i32 340, ; 697
	i32 550, ; 698
	i32 31, ; 699
	i32 304, ; 700
	i32 397, ; 701
	i32 45, ; 702
	i32 349, ; 703
	i32 204, ; 704
	i32 228, ; 705
	i32 258, ; 706
	i32 173, ; 707
	i32 467, ; 708
	i32 427, ; 709
	i32 440, ; 710
	i32 308, ; 711
	i32 282, ; 712
	i32 314, ; 713
	i32 109, ; 714
	i32 158, ; 715
	i32 35, ; 716
	i32 22, ; 717
	i32 174, ; 718
	i32 401, ; 719
	i32 114, ; 720
	i32 194, ; 721
	i32 57, ; 722
	i32 374, ; 723
	i32 144, ; 724
	i32 515, ; 725
	i32 118, ; 726
	i32 120, ; 727
	i32 214, ; 728
	i32 524, ; 729
	i32 110, ; 730
	i32 316, ; 731
	i32 480, ; 732
	i32 139, ; 733
	i32 187, ; 734
	i32 322, ; 735
	i32 254, ; 736
	i32 54, ; 737
	i32 105, ; 738
	i32 502, ; 739
	i32 556, ; 740
	i32 271, ; 741
	i32 229, ; 742
	i32 265, ; 743
	i32 266, ; 744
	i32 133, ; 745
	i32 389, ; 746
	i32 379, ; 747
	i32 367, ; 748
	i32 185, ; 749
	i32 562, ; 750
	i32 345, ; 751
	i32 516, ; 752
	i32 279, ; 753
	i32 268, ; 754
	i32 159, ; 755
	i32 541, ; 756
	i32 332, ; 757
	i32 283, ; 758
	i32 163, ; 759
	i32 465, ; 760
	i32 132, ; 761
	i32 367, ; 762
	i32 212, ; 763
	i32 491, ; 764
	i32 161, ; 765
	i32 554, ; 766
	i32 207, ; 767
	i32 356, ; 768
	i32 310, ; 769
	i32 228, ; 770
	i32 140, ; 771
	i32 205, ; 772
	i32 431, ; 773
	i32 379, ; 774
	i32 375, ; 775
	i32 169, ; 776
	i32 267, ; 777
	i32 462, ; 778
	i32 308, ; 779
	i32 438, ; 780
	i32 317, ; 781
	i32 385, ; 782
	i32 40, ; 783
	i32 343, ; 784
	i32 81, ; 785
	i32 193, ; 786
	i32 56, ; 787
	i32 37, ; 788
	i32 97, ; 789
	i32 166, ; 790
	i32 182, ; 791
	i32 475, ; 792
	i32 506, ; 793
	i32 172, ; 794
	i32 243, ; 795
	i32 178, ; 796
	i32 380, ; 797
	i32 82, ; 798
	i32 416, ; 799
	i32 319, ; 800
	i32 309, ; 801
	i32 199, ; 802
	i32 98, ; 803
	i32 273, ; 804
	i32 30, ; 805
	i32 159, ; 806
	i32 298, ; 807
	i32 285, ; 808
	i32 18, ; 809
	i32 415, ; 810
	i32 127, ; 811
	i32 119, ; 812
	i32 200, ; 813
	i32 339, ; 814
	i32 276, ; 815
	i32 370, ; 816
	i32 222, ; 817
	i32 202, ; 818
	i32 352, ; 819
	i32 298, ; 820
	i32 197, ; 821
	i32 372, ; 822
	i32 165, ; 823
	i32 347, ; 824
	i32 413, ; 825
	i32 186, ; 826
	i32 304, ; 827
	i32 204, ; 828
	i32 569, ; 829
	i32 369, ; 830
	i32 360, ; 831
	i32 524, ; 832
	i32 170, ; 833
	i32 16, ; 834
	i32 509, ; 835
	i32 513, ; 836
	i32 230, ; 837
	i32 144, ; 838
	i32 547, ; 839
	i32 531, ; 840
	i32 261, ; 841
	i32 125, ; 842
	i32 253, ; 843
	i32 118, ; 844
	i32 38, ; 845
	i32 400, ; 846
	i32 115, ; 847
	i32 437, ; 848
	i32 47, ; 849
	i32 142, ; 850
	i32 117, ; 851
	i32 212, ; 852
	i32 486, ; 853
	i32 521, ; 854
	i32 34, ; 855
	i32 179, ; 856
	i32 441, ; 857
	i32 198, ; 858
	i32 95, ; 859
	i32 53, ; 860
	i32 398, ; 861
	i32 494, ; 862
	i32 483, ; 863
	i32 361, ; 864
	i32 129, ; 865
	i32 153, ; 866
	i32 230, ; 867
	i32 420, ; 868
	i32 24, ; 869
	i32 161, ; 870
	i32 338, ; 871
	i32 310, ; 872
	i32 148, ; 873
	i32 290, ; 874
	i32 104, ; 875
	i32 518, ; 876
	i32 439, ; 877
	i32 458, ; 878
	i32 89, ; 879
	i32 436, ; 880
	i32 206, ; 881
	i32 326, ; 882
	i32 60, ; 883
	i32 142, ; 884
	i32 431, ; 885
	i32 100, ; 886
	i32 5, ; 887
	i32 13, ; 888
	i32 453, ; 889
	i32 122, ; 890
	i32 434, ; 891
	i32 135, ; 892
	i32 209, ; 893
	i32 28, ; 894
	i32 180, ; 895
	i32 542, ; 896
	i32 257, ; 897
	i32 295, ; 898
	i32 72, ; 899
	i32 336, ; 900
	i32 24, ; 901
	i32 498, ; 902
	i32 433, ; 903
	i32 470, ; 904
	i32 438, ; 905
	i32 434, ; 906
	i32 324, ; 907
	i32 365, ; 908
	i32 362, ; 909
	i32 559, ; 910
	i32 137, ; 911
	i32 317, ; 912
	i32 333, ; 913
	i32 168, ; 914
	i32 455, ; 915
	i32 259, ; 916
	i32 366, ; 917
	i32 538, ; 918
	i32 476, ; 919
	i32 487, ; 920
	i32 101, ; 921
	i32 466, ; 922
	i32 280, ; 923
	i32 123, ; 924
	i32 337, ; 925
	i32 426, ; 926
	i32 241, ; 927
	i32 234, ; 928
	i32 411, ; 929
	i32 237, ; 930
	i32 163, ; 931
	i32 167, ; 932
	i32 340, ; 933
	i32 473, ; 934
	i32 39, ; 935
	i32 263, ; 936
	i32 485, ; 937
	i32 546, ; 938
	i32 190, ; 939
	i32 404, ; 940
	i32 17, ; 941
	i32 171, ; 942
	i32 559, ; 943
	i32 558, ; 944
	i32 137, ; 945
	i32 150, ; 946
	i32 452, ; 947
	i32 329, ; 948
	i32 262, ; 949
	i32 155, ; 950
	i32 130, ; 951
	i32 217, ; 952
	i32 288, ; 953
	i32 494, ; 954
	i32 19, ; 955
	i32 503, ; 956
	i32 65, ; 957
	i32 223, ; 958
	i32 293, ; 959
	i32 515, ; 960
	i32 291, ; 961
	i32 147, ; 962
	i32 173, ; 963
	i32 47, ; 964
	i32 306, ; 965
	i32 566, ; 966
	i32 315, ; 967
	i32 79, ; 968
	i32 61, ; 969
	i32 411, ; 970
	i32 423, ; 971
	i32 246, ; 972
	i32 106, ; 973
	i32 221, ; 974
	i32 417, ; 975
	i32 364, ; 976
	i32 319, ; 977
	i32 49, ; 978
	i32 350, ; 979
	i32 563, ; 980
	i32 361, ; 981
	i32 14, ; 982
	i32 178, ; 983
	i32 233, ; 984
	i32 68, ; 985
	i32 396, ; 986
	i32 171, ; 987
	i32 430, ; 988
	i32 504, ; 989
	i32 325, ; 990
	i32 329, ; 991
	i32 488, ; 992
	i32 300, ; 993
	i32 568, ; 994
	i32 412, ; 995
	i32 256, ; 996
	i32 78, ; 997
	i32 463, ; 998
	i32 334, ; 999
	i32 108, ; 1000
	i32 318, ; 1001
	i32 236, ; 1002
	i32 360, ; 1003
	i32 523, ; 1004
	i32 67, ; 1005
	i32 207, ; 1006
	i32 63, ; 1007
	i32 447, ; 1008
	i32 27, ; 1009
	i32 160, ; 1010
	i32 414, ; 1011
	i32 216, ; 1012
	i32 177, ; 1013
	i32 235, ; 1014
	i32 250, ; 1015
	i32 419, ; 1016
	i32 274, ; 1017
	i32 440, ; 1018
	i32 327, ; 1019
	i32 10, ; 1020
	i32 412, ; 1021
	i32 263, ; 1022
	i32 476, ; 1023
	i32 11, ; 1024
	i32 307, ; 1025
	i32 531, ; 1026
	i32 78, ; 1027
	i32 175, ; 1028
	i32 126, ; 1029
	i32 83, ; 1030
	i32 192, ; 1031
	i32 521, ; 1032
	i32 443, ; 1033
	i32 238, ; 1034
	i32 66, ; 1035
	i32 107, ; 1036
	i32 65, ; 1037
	i32 296, ; 1038
	i32 128, ; 1039
	i32 122, ; 1040
	i32 414, ; 1041
	i32 435, ; 1042
	i32 77, ; 1043
	i32 375, ; 1044
	i32 365, ; 1045
	i32 567, ; 1046
	i32 8, ; 1047
	i32 333, ; 1048
	i32 297, ; 1049
	i32 2, ; 1050
	i32 489, ; 1051
	i32 437, ; 1052
	i32 44, ; 1053
	i32 378, ; 1054
	i32 156, ; 1055
	i32 128, ; 1056
	i32 363, ; 1057
	i32 23, ; 1058
	i32 428, ; 1059
	i32 478, ; 1060
	i32 302, ; 1061
	i32 133, ; 1062
	i32 321, ; 1063
	i32 427, ; 1064
	i32 352, ; 1065
	i32 406, ; 1066
	i32 562, ; 1067
	i32 544, ; 1068
	i32 463, ; 1069
	i32 222, ; 1070
	i32 29, ; 1071
	i32 490, ; 1072
	i32 320, ; 1073
	i32 397, ; 1074
	i32 225, ; 1075
	i32 303, ; 1076
	i32 486, ; 1077
	i32 62, ; 1078
	i32 215, ; 1079
	i32 456, ; 1080
	i32 485, ; 1081
	i32 269, ; 1082
	i32 265, ; 1083
	i32 289, ; 1084
	i32 90, ; 1085
	i32 87, ; 1086
	i32 148, ; 1087
	i32 245, ; 1088
	i32 519, ; 1089
	i32 267, ; 1090
	i32 36, ; 1091
	i32 86, ; 1092
	i32 341, ; 1093
	i32 231, ; 1094
	i32 557, ; 1095
	i32 280, ; 1096
	i32 191, ; 1097
	i32 183, ; 1098
	i32 458, ; 1099
	i32 552, ; 1100
	i32 237, ; 1101
	i32 50, ; 1102
	i32 6, ; 1103
	i32 499, ; 1104
	i32 90, ; 1105
	i32 564, ; 1106
	i32 21, ; 1107
	i32 409, ; 1108
	i32 162, ; 1109
	i32 96, ; 1110
	i32 493, ; 1111
	i32 50, ; 1112
	i32 408, ; 1113
	i32 457, ; 1114
	i32 519, ; 1115
	i32 113, ; 1116
	i32 357, ; 1117
	i32 130, ; 1118
	i32 454, ; 1119
	i32 475, ; 1120
	i32 229, ; 1121
	i32 214, ; 1122
	i32 76, ; 1123
	i32 526, ; 1124
	i32 27, ; 1125
	i32 432, ; 1126
	i32 482, ; 1127
	i32 215, ; 1128
	i32 417, ; 1129
	i32 334, ; 1130
	i32 356, ; 1131
	i32 7, ; 1132
	i32 301, ; 1133
	i32 264, ; 1134
	i32 110, ; 1135
	i32 275, ; 1136
	i32 357, ; 1137
	i32 242, ; 1138
	i32 343 ; 1139
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
