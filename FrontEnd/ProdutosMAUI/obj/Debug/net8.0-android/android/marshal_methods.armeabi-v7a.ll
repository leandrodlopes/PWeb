; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [577 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1148 x i32] [
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
	i32 58571260, ; 19: RCLComum => 0x37db9fc => 571
	i32 65960268, ; 20: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 279
	i32 66541672, ; 21: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 22: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 568
	i32 68219467, ; 23: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 24: Microsoft.Maui.Graphics.dll => 0x44bb714 => 268
	i32 72810961, ; 25: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x45701d1 => 217
	i32 82292897, ; 26: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 27: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 196
	i32 83984350, ; 28: es\Humanizer.resources => 0x5017fde => 405
	i32 84332821, ; 29: zh-Hans/Microsoft.CodeAnalysis.resources.dll => 0x506d115 => 455
	i32 101534019, ; 30: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 371
	i32 112396495, ; 31: de/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6b308cf => 471
	i32 117431740, ; 32: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 33: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 371
	i32 122350210, ; 34: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 35: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 392
	i32 136074280, ; 36: dotnet-aspnet-codegenerator-design.dll => 0x81c5428 => 274
	i32 142721839, ; 37: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 144068927, ; 38: RCLComum.dll => 0x896513f => 571
	i32 149972175, ; 39: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 40: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 41: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 327
	i32 176265551, ; 42: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 43: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 209
	i32 182336117, ; 44: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 373
	i32 184328833, ; 45: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 46: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 565
	i32 199333315, ; 47: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 566
	i32 205061960, ; 48: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 49: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 325
	i32 220171995, ; 50: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 229118224, ; 51: Microsoft.AspNetCore.Identity => 0xda81110 => 206
	i32 230216969, ; 52: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 347
	i32 230752869, ; 53: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 54: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 55: System.Globalization => 0xdd133ce => 42
	i32 233962274, ; 56: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0xdf1fb22 => 468
	i32 239101542, ; 57: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter.dll => 0xe406666 => 192
	i32 240334920, ; 58: nb/Humanizer.resources.dll => 0xe533848 => 423
	i32 244348769, ; 59: Microsoft.AspNetCore.Components.Authorization => 0xe907761 => 189
	i32 246610117, ; 60: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 249310746, ; 61: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xedc2e1a => 483
	i32 254259026, ; 62: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 188
	i32 255032849, ; 63: Microsoft.CodeAnalysis.CSharp.Features.dll => 0xf337e11 => 216
	i32 261689757, ; 64: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 330
	i32 261882112, ; 65: DocumentFormat.OpenXml.Framework.dll => 0xf9c0100 => 176
	i32 275679612, ; 66: Humanizer => 0x106e897c => 180
	i32 276479776, ; 67: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 349
	i32 280482487, ; 69: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 346
	i32 280992041, ; 70: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 537
	i32 289313981, ; 71: he\Humanizer.resources => 0x113e94bd => 410
	i32 291076382, ; 72: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 292653774, ; 73: fr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x11718ace => 460
	i32 292732756, ; 74: fi-FI/Humanizer.resources.dll => 0x1172bf54 => 407
	i32 298918909, ; 75: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 76: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 184
	i32 310166614, ; 77: ru/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x127cc456 => 479
	i32 317674968, ; 78: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 565
	i32 318968648, ; 79: Xamarin.AndroidX.Activity.dll => 0x13031348 => 316
	i32 321597661, ; 80: System.Numerics => 0x132b30dd => 83
	i32 324829778, ; 81: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x135c8252 => 491
	i32 330147069, ; 82: Microsoft.SqlServer.Server => 0x13ada4fd => 271
	i32 336156722, ; 83: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 550
	i32 342366114, ; 84: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 348
	i32 347676595, ; 85: hy\Humanizer.resources => 0x14b91fb3 => 413
	i32 349513332, ; 86: Microsoft.DiaSymReader => 0x14d52674 => 224
	i32 356389973, ; 87: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 549
	i32 360082299, ; 88: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 89: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 90: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 91: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 92: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385310584, ; 93: cs/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x16f75f78 => 522
	i32 385762202, ; 94: System.Memory.dll => 0x16fe439a => 62
	i32 386288746, ; 95: System.Composition.Convention.dll => 0x17064c6a => 294
	i32 392610295, ; 96: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 97: _Microsoft.Android.Resource.Designer => 0x17969339 => 573
	i32 401973532, ; 98: fr\Microsoft.CodeAnalysis.Scripting.resources => 0x17f5a11c => 512
	i32 403441872, ; 99: WindowsBase => 0x180c08d0 => 165
	i32 403654887, ; 100: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x180f48e7 => 468
	i32 407142433, ; 101: NuGet.DependencyResolver.Core.dll => 0x18448021 => 284
	i32 407564895, ; 102: zh-Hant\Microsoft.CodeAnalysis.resources => 0x184af25f => 456
	i32 424164259, ; 103: es/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x19483ba3 => 472
	i32 429918412, ; 104: tr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x19a008cc => 493
	i32 435591531, ; 105: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 561
	i32 440059476, ; 106: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x1a3ac654 => 473
	i32 441335492, ; 107: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 331
	i32 442521989, ; 108: Xamarin.Essentials => 0x1a605985 => 383
	i32 442565967, ; 109: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 110: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 344
	i32 451504562, ; 111: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 112: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 113: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 114: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 115: System.dll => 0x1bff388e => 164
	i32 476646585, ; 116: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 346
	i32 485463106, ; 117: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 256
	i32 486930444, ; 118: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 359
	i32 489891006, ; 119: ro/Humanizer.resources.dll => 0x1d3324be => 428
	i32 490002678, ; 120: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 201
	i32 498788369, ; 121: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 122: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 548
	i32 503918385, ; 123: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 542
	i32 513247710, ; 124: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 252
	i32 515231018, ; 125: sr-Latn\Humanizer.resources => 0x1eb5cd2a => 433
	i32 523572874, ; 126: zh-Hant/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x1f35168a => 495
	i32 526420162, ; 127: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 128: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 392
	i32 530272170, ; 129: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 536273956, ; 130: uz-Latn-UZ/Humanizer.resources.dll => 0x1ff6e424 => 439
	i32 538383296, ; 131: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x201713c0 => 477
	i32 539058512, ; 132: Microsoft.Extensions.Logging => 0x20216150 => 247
	i32 540030774, ; 133: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545011643, ; 134: it/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x207c37bb => 487
	i32 545304856, ; 135: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 136: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 547857956, ; 137: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x20a7a624 => 481
	i32 548916678, ; 138: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 210
	i32 549171840, ; 139: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 140: Jsr305Binding => 0x213954e7 => 385
	i32 559063233, ; 141: Microsoft.AspNetCore.Razor.Language.dll => 0x2152a0c1 => 208
	i32 568424432, ; 142: NuGet.Common.dll => 0x21e177f0 => 282
	i32 569601784, ; 143: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 382
	i32 571435654, ; 144: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 242
	i32 572337022, ; 145: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x221d2b7e => 272
	i32 572590293, ; 146: Microsoft.DotNet.Scaffolding.Shared.dll => 0x222108d5 => 225
	i32 575084325, ; 147: ru/Microsoft.CodeAnalysis.Features.resources.dll => 0x22471725 => 505
	i32 577335427, ; 148: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 587216729, ; 149: zh-Hans/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x23003759 => 481
	i32 592146354, ; 150: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 556
	i32 596486711, ; 151: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0x238daa37 => 278
	i32 601181835, ; 152: tr\Microsoft.CodeAnalysis.Features.resources => 0x23d54e8b => 506
	i32 601371474, ; 153: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 154: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 155: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 619528643, ; 156: zh-CN/Humanizer.resources.dll => 0x24ed41c3 => 441
	i32 627609679, ; 157: Xamarin.AndroidX.CustomView => 0x2568904f => 336
	i32 627931235, ; 158: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 554
	i32 639843206, ; 159: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 342
	i32 643868501, ; 160: System.Net => 0x2660a755 => 81
	i32 649338123, ; 161: de\Humanizer.resources => 0x26b41d0b => 403
	i32 662205335, ; 162: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 163: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 378
	i32 666292255, ; 164: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 323
	i32 672442732, ; 165: System.Collections.Concurrent => 0x2814a96c => 8
	i32 681800418, ; 166: zh-Hans/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x28a372e2 => 520
	i32 683518922, ; 167: System.Net.Security => 0x28bdabca => 73
	i32 687422377, ; 168: System.Composition.Convention => 0x28f93ba9 => 294
	i32 688181140, ; 169: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 536
	i32 690569205, ; 170: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 171: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 394
	i32 693804605, ; 172: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 173: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 174: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 389
	i32 700358131, ; 175: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 703606456, ; 176: ja\Microsoft.CodeAnalysis.Scripting.resources => 0x29f02eb8 => 514
	i32 704132156, ; 177: pl/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x29f8343c => 490
	i32 706645707, ; 178: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 551
	i32 707797079, ; 179: Microsoft.DiaSymReader.dll => 0x2a302057 => 224
	i32 708016183, ; 180: de/Humanizer.resources.dll => 0x2a337837 => 403
	i32 709152836, ; 181: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 307
	i32 709557578, ; 182: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 539
	i32 717679319, ; 183: nl\Humanizer.resources => 0x2ac6ead7 => 425
	i32 720511267, ; 184: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 393
	i32 722857257, ; 185: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 186: System.ClientModel.dll => 0x2b244044 => 291
	i32 730720346, ; 187: ja/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x2b8de85a => 527
	i32 731543398, ; 188: it\Microsoft.CodeAnalysis.Features.resources => 0x2b9a7766 => 500
	i32 735137430, ; 189: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 742720346, ; 190: ru/Humanizer.resources.dll => 0x2c45035a => 429
	i32 743807466, ; 191: NuGet.DependencyResolver.Core => 0x2c5599ea => 284
	i32 750076933, ; 192: zh-Hans/Humanizer.resources.dll => 0x2cb54405 => 442
	i32 752232764, ; 193: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 194: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 313
	i32 759454413, ; 195: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 196: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 772964186, ; 197: Microsoft.NET.StringTools => 0x2e127f5a => 270
	i32 773056463, ; 198: da\Humanizer.resources => 0x2e13e7cf => 402
	i32 775507847, ; 199: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 200: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 560
	i32 783888833, ; 201: System.Composition.Runtime.dll => 0x2eb931c1 => 296
	i32 786505701, ; 202: Microsoft.CodeAnalysis.Elfie => 0x2ee11fe5 => 218
	i32 789151979, ; 203: Microsoft.Extensions.Options => 0x2f0980eb => 251
	i32 790371945, ; 204: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 337
	i32 794885870, ; 205: es\Microsoft.CodeAnalysis.resources => 0x2f60feee => 446
	i32 804008546, ; 206: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 195
	i32 804715423, ; 207: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 208: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 351
	i32 809851609, ; 209: System.Drawing.Common.dll => 0x30455ad9 => 300
	i32 823281589, ; 210: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 211: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 212: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 832989596, ; 213: fr\Microsoft.CodeAnalysis.Features.resources => 0x31a6699c => 499
	i32 834051424, ; 214: System.Net.Quic => 0x31b69d60 => 71
	i32 841089730, ; 215: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0x322202c2 => 507
	i32 843511501, ; 216: Xamarin.AndroidX.Print => 0x3246f6cd => 364
	i32 854631076, ; 217: el/Humanizer.resources.dll => 0x32f0a2a4 => 404
	i32 859575911, ; 218: Microsoft.Build.dll => 0x333c1667 => 211
	i32 865046295, ; 219: ja/Microsoft.CodeAnalysis.Features.resources.dll => 0x338f8f17 => 501
	i32 870817387, ; 220: th-TH\Humanizer.resources => 0x33e79e6b => 435
	i32 871341741, ; 221: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x33ef9ead => 482
	i32 873119928, ; 222: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 223: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 224: System.Net.Http.Json => 0x3463c971 => 63
	i32 882049477, ; 225: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x349301c5 => 479
	i32 895713599, ; 226: lv/Humanizer.resources.dll => 0x3563813f => 420
	i32 898263006, ; 227: Microsoft.CodeAnalysis.Scripting => 0x358a67de => 221
	i32 904024072, ; 228: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 229: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 230: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 563
	i32 928116545, ; 231: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 388
	i32 940221205, ; 232: Microsoft.CodeAnalysis.Razor => 0x380aa315 => 220
	i32 941753469, ; 233: NuGet.Packaging => 0x3822047d => 287
	i32 951539854, ; 234: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x38b7588e => 492
	i32 952186615, ; 235: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 236: Newtonsoft.Json => 0x38f24a24 => 281
	i32 956215521, ; 237: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x38feb0e1 => 460
	i32 956575887, ; 238: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 393
	i32 963366786, ; 239: NuGet.LibraryModel.dll => 0x396bcf82 => 286
	i32 966729478, ; 240: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 386
	i32 967690846, ; 241: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 348
	i32 972467304, ; 242: Microsoft.AspNetCore.Razor.Language => 0x39f6ac68 => 208
	i32 975236339, ; 243: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 244: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 245: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 246: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 247: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 248: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 249: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 244
	i32 1001831731, ; 250: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1003057746, ; 251: zh-Hant/Microsoft.CodeAnalysis.Features.resources.dll => 0x3bc97252 => 508
	i32 1012816738, ; 252: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 368
	i32 1019214401, ; 253: System.Drawing => 0x3cbffa41 => 36
	i32 1020234808, ; 254: Microsoft.AspNetCore.Authentication.Cookies.dll => 0x3ccf8c38 => 185
	i32 1022129705, ; 255: fr\Humanizer.resources => 0x3cec7629 => 408
	i32 1028951442, ; 256: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 238
	i32 1029334545, ; 257: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 538
	i32 1031528504, ; 258: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 387
	i32 1032497321, ; 259: es\Microsoft.CodeAnalysis.Scripting.resources => 0x3d8aa8a9 => 511
	i32 1035644815, ; 260: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 321
	i32 1036536393, ; 261: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 262: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 263: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 355
	i32 1061829530, ; 264: ru/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x3f4a3b9a => 492
	i32 1062017875, ; 265: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 255
	i32 1067306892, ; 266: GoogleGson => 0x3f9dcf8c => 179
	i32 1082857460, ; 267: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083751839, ; 268: System.IO.Packaging => 0x4098bd9f => 302
	i32 1084122840, ; 269: Xamarin.Kotlin.StdLib => 0x409e66d8 => 390
	i32 1085630670, ; 270: ku/Humanizer.resources.dll => 0x40b568ce => 419
	i32 1088213606, ; 271: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x40dcd266 => 464
	i32 1089913930, ; 272: System.Diagnostics.EventLog.dll => 0x40f6c44a => 299
	i32 1095180906, ; 273: Microsoft.AspNet.Identity.Core => 0x4147226a => 181
	i32 1098259244, ; 274: System => 0x41761b2c => 164
	i32 1098418679, ; 275: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x417889f7 => 462
	i32 1106973742, ; 276: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 235
	i32 1108818901, ; 277: System.Reflection.MetadataLoadContext => 0x42173bd5 => 305
	i32 1110309514, ; 278: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 245
	i32 1112354281, ; 279: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 184
	i32 1118262833, ; 280: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 551
	i32 1121599056, ; 281: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 354
	i32 1127624469, ; 282: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 249
	i32 1135815421, ; 283: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x43b32afd => 197
	i32 1138436374, ; 284: Microsoft.Data.SqlClient.dll => 0x43db2916 => 223
	i32 1145483052, ; 285: System.Windows.Extensions.dll => 0x4446af2c => 311
	i32 1149092582, ; 286: Xamarin.AndroidX.Window => 0x447dc2e6 => 381
	i32 1154034500, ; 287: tr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x44c92b44 => 480
	i32 1157931901, ; 288: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 227
	i32 1166585964, ; 289: zh-Hant/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4588b06c => 534
	i32 1168523401, ; 290: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 557
	i32 1170634674, ; 291: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 292: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 240
	i32 1175144683, ; 293: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 377
	i32 1176596968, ; 294: pl/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x462171e8 => 464
	i32 1178144317, ; 295: es/Humanizer.resources.dll => 0x46390e3d => 405
	i32 1178241025, ; 296: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 362
	i32 1195681867, ; 297: ja/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x4744a84b => 514
	i32 1197810737, ; 298: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0x47652431 => 276
	i32 1201690614, ; 299: Microsoft.CodeAnalysis.Features.dll => 0x47a057f6 => 219
	i32 1202000627, ; 300: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 227
	i32 1203215381, ; 301: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 555
	i32 1204270330, ; 302: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 323
	i32 1204575371, ; 303: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 231
	i32 1208641965, ; 304: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1215670447, ; 305: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x4875a8af => 273
	i32 1219128291, ; 306: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 307: Microsoft.Net.Http.Headers => 0x48baad61 => 269
	i32 1220582341, ; 308: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x48c09bc5 => 478
	i32 1231801191, ; 309: de/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x496bcb67 => 523
	i32 1234928153, ; 310: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 553
	i32 1236289705, ; 311: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 201
	i32 1243150071, ; 312: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 382
	i32 1253011324, ; 313: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 314: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 537
	i32 1264365575, ; 315: ko\Microsoft.CodeAnalysis.Features.resources => 0x4b5cb007 => 502
	i32 1264511973, ; 316: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 372
	i32 1267360935, ; 317: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 376
	i32 1269295491, ; 318: nb-NO/Humanizer.resources.dll => 0x4ba7e983 => 424
	i32 1273260888, ; 319: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 328
	i32 1275534314, ; 320: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 394
	i32 1278448581, ; 321: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 320
	i32 1287429771, ; 322: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x4cbc9e8b => 520
	i32 1291457549, ; 323: EntityFramework.SqlServer.dll => 0x4cfa140d => 177
	i32 1292843635, ; 324: DocumentFormat.OpenXml.Framework => 0x4d0f3a73 => 176
	i32 1293217323, ; 325: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 339
	i32 1299419014, ; 326: ru\Microsoft.CodeAnalysis.Features.resources => 0x4d738f86 => 505
	i32 1303681164, ; 327: ja/Microsoft.CodeAnalysis.resources.dll => 0x4db4988c => 449
	i32 1309188875, ; 328: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1314676887, ; 329: af\Humanizer.resources => 0x4e5c6097 => 396
	i32 1317411180, ; 330: fr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4e86196c => 525
	i32 1322716291, ; 331: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 381
	i32 1324164729, ; 332: System.Linq => 0x4eed2679 => 61
	i32 1332737275, ; 333: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x4f6ff4fb => 495
	i32 1333472706, ; 334: zh-Hans/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x4f7b2dc2 => 533
	i32 1335115385, ; 335: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x4f943e79 => 522
	i32 1335329327, ; 336: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1338781641, ; 337: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 175
	i32 1339424209, ; 338: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x4fd5fdd1 => 517
	i32 1355941824, ; 339: ja\Microsoft.CodeAnalysis.resources => 0x50d207c0 => 449
	i32 1358651689, ; 340: cs\Humanizer.resources => 0x50fb6129 => 401
	i32 1364015309, ; 341: System.IO => 0x514d38cd => 57
	i32 1367755087, ; 342: ru/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5186494f => 466
	i32 1369180898, ; 343: it\Microsoft.CodeAnalysis.Scripting.resources => 0x519c0ae2 => 513
	i32 1372382510, ; 344: he/Humanizer.resources.dll => 0x51cce52e => 410
	i32 1373134921, ; 345: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 567
	i32 1376829469, ; 346: cs\Microsoft.CodeAnalysis.CSharp.resources => 0x5210c01d => 457
	i32 1376866003, ; 347: Xamarin.AndroidX.SavedState => 0x52114ed3 => 368
	i32 1377593304, ; 348: sk\Humanizer.resources => 0x521c67d8 => 430
	i32 1379779777, ; 349: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1385717816, ; 350: Microsoft.NET.StringTools.dll => 0x52986038 => 270
	i32 1390372361, ; 351: tr/Humanizer.resources.dll => 0x52df6609 => 436
	i32 1392635248, ; 352: fi-FI\Humanizer.resources => 0x5301ed70 => 407
	i32 1393256046, ; 353: it/Humanizer.resources.dll => 0x530b666e => 416
	i32 1402170036, ; 354: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 355: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 332
	i32 1408764838, ; 356: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1409293268, ; 357: pl/Humanizer.resources.dll => 0x54001bd4 => 426
	i32 1411638395, ; 358: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 359: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1422868603, ; 360: cs/Microsoft.CodeAnalysis.Features.resources.dll => 0x54cf407b => 496
	i32 1430672901, ; 361: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 535
	i32 1433579683, ; 362: de\Microsoft.CodeAnalysis.resources => 0x5572b0a3 => 445
	i32 1434145427, ; 363: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 364: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 386
	i32 1439761251, ; 365: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1446836800, ; 366: it\Microsoft.CodeAnalysis.resources => 0x563cfa40 => 448
	i32 1447567584, ; 367: de\Microsoft.CodeAnalysis.Scripting.resources => 0x564820e0 => 510
	i32 1451017060, ; 368: cs/Microsoft.CodeAnalysis.resources.dll => 0x567cc364 => 444
	i32 1452070440, ; 369: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 370: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 371: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 241
	i32 1457743152, ; 372: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 373: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 374: System.IdentityModel.Tokens.Jwt => 0x57137723 => 301
	i32 1461004990, ; 375: es\Microsoft.Maui.Controls.resources => 0x57152abe => 541
	i32 1461234159, ; 376: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 377: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 378: System.IO.Compression.dll => 0x57261233 => 46
	i32 1463877001, ; 379: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0x5740fd89 => 213
	i32 1466102214, ; 380: ru\Microsoft.CodeAnalysis.Scripting.resources => 0x5762f1c6 => 518
	i32 1469204771, ; 381: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 322
	i32 1470490898, ; 382: Microsoft.Extensions.Primitives => 0x57a5e912 => 252
	i32 1474151183, ; 383: de/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x57ddc30f => 484
	i32 1479771757, ; 384: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 385: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 386: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 387: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 369
	i32 1493001747, ; 388: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 545
	i32 1494371055, ; 389: Microsoft.AspNet.Identity.Core.dll => 0x59124aef => 181
	i32 1498168481, ; 390: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 257
	i32 1514721132, ; 391: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 540
	i32 1515641136, ; 392: es\Microsoft.CodeAnalysis.CSharp.resources => 0x5a56d930 => 459
	i32 1521091094, ; 393: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 244
	i32 1525768991, ; 394: ru\Microsoft.CodeAnalysis.resources => 0x5af1631f => 453
	i32 1536373174, ; 395: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1538374214, ; 396: ru\Humanizer.resources => 0x5bb1ba46 => 429
	i32 1541428564, ; 397: bn-BD\Humanizer.resources => 0x5be05554 => 400
	i32 1543031311, ; 398: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 399: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 400: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 195
	i32 1550322496, ; 401: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 402: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 560
	i32 1552528112, ; 403: es/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x5c89b2f0 => 511
	i32 1565310744, ; 404: System.Runtime.Caching => 0x5d4cbf18 => 306
	i32 1565862583, ; 405: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566167090, ; 406: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5d59d032 => 469
	i32 1566207040, ; 407: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1568109833, ; 408: fr/Microsoft.CodeAnalysis.resources.dll => 0x5d777509 => 447
	i32 1568485794, ; 409: NuGet.Versioning.dll => 0x5d7d31a2 => 290
	i32 1573516615, ; 410: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0x5dc9f547 => 533
	i32 1573704789, ; 411: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 412: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 413: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 414: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 338
	i32 1586881704, ; 415: NuGet.Packaging.dll => 0x5e95e4a8 => 287
	i32 1588461737, ; 416: RCLAPI => 0x5eae00a9 => 569
	i32 1592978981, ; 417: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 418: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 387
	i32 1598492419, ; 419: pl\Microsoft.CodeAnalysis.Scripting.resources => 0x5f470f03 => 516
	i32 1601112923, ; 420: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 421: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 422: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 423: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 358
	i32 1622358360, ; 424: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 425: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 380
	i32 1628113371, ; 426: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 260
	i32 1628395155, ; 427: Microsoft.AspNet.Identity.EntityFramework.dll => 0x610f5693 => 182
	i32 1632842087, ; 428: Microsoft.Extensions.Configuration.Json => 0x61533167 => 236
	i32 1635184631, ; 429: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 342
	i32 1636350590, ; 430: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 335
	i32 1638839988, ; 431: Microsoft.AspNetCore.Components.QuickGrid.dll => 0x61aeb6b4 => 191
	i32 1639515021, ; 432: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 433: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 434: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 435: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 194
	i32 1657153582, ; 436: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 437: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 374
	i32 1658251792, ; 438: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 384
	i32 1665647309, ; 439: pt-BR/Microsoft.CodeAnalysis.resources.dll => 0x6347c2cd => 452
	i32 1670060433, ; 440: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 330
	i32 1675553242, ; 441: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 442: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 443: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 444: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1685661845, ; 445: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x64792895 => 529
	i32 1689493916, ; 446: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 226
	i32 1691477237, ; 447: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1695117228, ; 448: fr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x65096fac => 512
	i32 1696967625, ; 449: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 450: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 391
	i32 1701541528, ; 451: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1710468323, ; 452: Microsoft.VisualStudio.Web.CodeGeneration => 0x65f3ace3 => 272
	i32 1712031326, ; 453: System.Composition.Hosting.dll => 0x660b865e => 295
	i32 1715673392, ; 454: de/Microsoft.CodeAnalysis.Features.resources.dll => 0x66431930 => 497
	i32 1720223769, ; 455: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 351
	i32 1726116996, ; 456: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 457: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 458: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 326
	i32 1736233607, ; 459: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 558
	i32 1743415430, ; 460: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 536
	i32 1744735666, ; 461: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 462: System.IO.Pipelines.dll => 0x68139a0d => 303
	i32 1746316138, ; 463: Mono.Android.Export => 0x6816ab6a => 169
	i32 1746428678, ; 464: it/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x68186306 => 461
	i32 1746610600, ; 465: tr/Microsoft.CodeAnalysis.resources.dll => 0x681b29a8 => 454
	i32 1750313021, ; 466: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1753316958, ; 467: mt/Humanizer.resources.dll => 0x68817e5e => 422
	i32 1754280098, ; 468: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x689030a2 => 471
	i32 1757062295, ; 469: tr/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x68baa497 => 532
	i32 1758240030, ; 470: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 471: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 193
	i32 1763767191, ; 472: pt-BR/Microsoft.CodeAnalysis.Features.resources.dll => 0x6920f397 => 504
	i32 1763938596, ; 473: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 474: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 475: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 373
	i32 1766583818, ; 476: ms-MY\Humanizer.resources => 0x694bee0a => 421
	i32 1767875481, ; 477: ko/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x695fa399 => 528
	i32 1770582343, ; 478: Microsoft.Extensions.Logging.dll => 0x6988f147 => 247
	i32 1776026572, ; 479: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 480: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 481: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1781174529, ; 482: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0x6a2a9101 => 469
	i32 1782862114, ; 483: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 552
	i32 1788241197, ; 484: Xamarin.AndroidX.Fragment => 0x6a96652d => 344
	i32 1791755720, ; 485: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 183
	i32 1792549600, ; 486: fr-BE\Humanizer.resources => 0x6ad822e0 => 409
	i32 1793755602, ; 487: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 544
	i32 1794500907, ; 488: Microsoft.Identity.Client.dll => 0x6af5e92b => 254
	i32 1796167890, ; 489: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 210
	i32 1808609942, ; 490: Xamarin.AndroidX.Loader => 0x6bcd3296 => 358
	i32 1812924106, ; 491: it/Microsoft.CodeAnalysis.Features.resources.dll => 0x6c0f06ca => 500
	i32 1813058853, ; 492: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 390
	i32 1813201214, ; 493: Xamarin.Google.Android.Material => 0x6c13413e => 384
	i32 1813277640, ; 494: ja\Microsoft.CodeAnalysis.Features.resources => 0x6c146bc8 => 501
	i32 1818569960, ; 495: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 363
	i32 1818787751, ; 496: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 497: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 205
	i32 1820883333, ; 498: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 196
	i32 1824175904, ; 499: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 500: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 501: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 248
	i32 1829150748, ; 502: System.Windows.Extensions => 0x6d06a01c => 311
	i32 1840242603, ; 503: NuGet.Configuration.dll => 0x6dafdfab => 283
	i32 1842015223, ; 504: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 564
	i32 1847515442, ; 505: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 313
	i32 1853025655, ; 506: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 561
	i32 1858542181, ; 507: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1864952571, ; 508: cs/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6f28eafb => 470
	i32 1867746548, ; 509: Xamarin.Essentials.dll => 0x6f538cf4 => 383
	i32 1870277092, ; 510: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 511: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 260
	i32 1875935024, ; 512: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 543
	i32 1879696579, ; 513: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 514: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 324
	i32 1888955245, ; 515: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 516: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 517: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 518: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 519: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1927897671, ; 520: System.CodeDom.dll => 0x72e96247 => 292
	i32 1928288591, ; 521: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 203
	i32 1928716804, ; 522: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x72f5e204 => 488
	i32 1931959220, ; 523: System.Composition.AttributedModel.dll => 0x73275bb4 => 293
	i32 1937339544, ; 524: it/Microsoft.CodeAnalysis.resources.dll => 0x73797498 => 448
	i32 1939592360, ; 525: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1942190367, ; 526: it\Microsoft.CodeAnalysis.CSharp.resources => 0x73c3791f => 461
	i32 1953680223, ; 527: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 199
	i32 1956758971, ; 528: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1958201531, ; 529: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x74b7c8bb => 467
	i32 1961813231, ; 530: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 370
	i32 1968388702, ; 531: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 232
	i32 1968930087, ; 532: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x755b7d27 => 465
	i32 1974283348, ; 533: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x75ad2c54 => 277
	i32 1977015402, ; 534: Microsoft.Build => 0x75d6dc6a => 211
	i32 1983156543, ; 535: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 391
	i32 1983665899, ; 536: System.Composition.TypedParts.dll => 0x763c56eb => 297
	i32 1985761444, ; 537: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 315
	i32 1986222447, ; 538: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 261
	i32 1991044029, ; 539: Microsoft.Extensions.Identity.Core.dll => 0x76acebbd => 246
	i32 1993867835, ; 540: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x76d8023b => 489
	i32 1993916150, ; 541: ko\Microsoft.CodeAnalysis.resources => 0x76d8bef6 => 450
	i32 2002441971, ; 542: it/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x775ad6f3 => 526
	i32 2003115576, ; 543: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 540
	i32 2005301351, ; 544: System.Reflection.MetadataLoadContext.dll => 0x77867867 => 305
	i32 2011961780, ; 545: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019368771, ; 546: RCLAPI.dll => 0x785d1f43 => 569
	i32 2019465201, ; 547: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 355
	i32 2025202353, ; 548: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 535
	i32 2031763787, ; 549: Xamarin.Android.Glide => 0x791a414b => 312
	i32 2032926171, ; 550: zh-Hant\Humanizer.resources => 0x792bfddb => 443
	i32 2038923757, ; 551: ProdutosMAUI => 0x798781ed => 0
	i32 2040764568, ; 552: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 255
	i32 2045470958, ; 553: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 554: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 234
	i32 2048711491, ; 555: pl/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x7a1cdb43 => 529
	i32 2055257422, ; 556: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 350
	i32 2060060697, ; 557: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 558: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 539
	i32 2070352460, ; 559: bg\Humanizer.resources => 0x7b67124c => 399
	i32 2070888862, ; 560: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 561: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 243
	i32 2075706075, ; 562: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 203
	i32 2076659885, ; 563: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 253
	i32 2079903147, ; 564: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2084242321, ; 565: es/Microsoft.CodeAnalysis.resources.dll => 0x7c3b0391 => 446
	i32 2085039813, ; 566: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 309
	i32 2090596640, ; 567: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2115189546, ; 568: ko-KR/Humanizer.resources.dll => 0x7e133b2a => 418
	i32 2123746321, ; 569: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x7e95cc11 => 474
	i32 2126059322, ; 570: es/Microsoft.CodeAnalysis.Features.resources.dll => 0x7eb9173a => 498
	i32 2127167465, ; 571: System.Console => 0x7ec9ffe9 => 20
	i32 2138035031, ; 572: ko/Microsoft.CodeAnalysis.resources.dll => 0x7f6fd357 => 450
	i32 2141344426, ; 573: ko-KR\Humanizer.resources => 0x7fa252aa => 418
	i32 2141478350, ; 574: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x7fa45dce => 528
	i32 2142473426, ; 575: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 576: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 577: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2149709509, ; 578: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x8021f6c5 => 509
	i32 2159891885, ; 579: Microsoft.Maui => 0x80bd55ad => 266
	i32 2169148018, ; 580: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 547
	i32 2178612968, ; 581: System.CodeDom => 0x81dafee8 => 292
	i32 2181898931, ; 582: Microsoft.Extensions.Options.dll => 0x820d22b3 => 251
	i32 2185933729, ; 583: Microsoft.CodeAnalysis.AnalyzerUtilities => 0x824ab3a1 => 213
	i32 2192057212, ; 584: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 248
	i32 2192166651, ; 585: Microsoft.AspNetCore.Components.Authorization.dll => 0x82a9cefb => 189
	i32 2193016926, ; 586: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 587: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 239
	i32 2199971862, ; 588: is\Humanizer.resources => 0x8320e816 => 415
	i32 2201107256, ; 589: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 395
	i32 2201231467, ; 590: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 591: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 250
	i32 2207618523, ; 592: it\Microsoft.Maui.Controls.resources => 0x839595db => 549
	i32 2214684929, ; 593: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0x84016901 => 508
	i32 2217644978, ; 594: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 377
	i32 2222056684, ; 595: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228735738, ; 596: pl/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x84d7cefa => 477
	i32 2242871324, ; 597: Microsoft.AspNetCore.Http.dll => 0x85af801c => 202
	i32 2244775296, ; 598: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 359
	i32 2252106437, ; 599: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 600: Microsoft.EntityFrameworkCore => 0x86487ec9 => 226
	i32 2253551641, ; 601: Microsoft.IdentityModel.Protocols => 0x86527819 => 259
	i32 2256313426, ; 602: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2264006332, ; 603: NuGet.ProjectModel => 0x86f1febc => 288
	i32 2265110946, ; 604: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 605: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 233
	i32 2267999099, ; 606: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 314
	i32 2270573516, ; 607: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 543
	i32 2271199108, ; 608: pt-BR/Microsoft.CodeAnalysis.Scripting.resources.dll => 0x875fbf84 => 517
	i32 2274498275, ; 609: nb-NO\Humanizer.resources => 0x879216e3 => 424
	i32 2278647370, ; 610: zh-Hans\Humanizer.resources => 0x87d1664a => 442
	i32 2279755925, ; 611: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 366
	i32 2291847450, ; 612: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 198
	i32 2293034957, ; 613: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2293126107, ; 614: pl\Microsoft.CodeAnalysis.resources => 0x88ae53db => 451
	i32 2295906218, ; 615: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 616: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 617: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 553
	i32 2305521784, ; 618: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 619: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 318
	i32 2320631194, ; 620: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2323173394, ; 621: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x8a78d012 => 527
	i32 2334514644, ; 622: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b25ddd4 => 530
	i32 2340441535, ; 623: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2342355720, ; 624: ms-MY/Humanizer.resources.dll => 0x8b9d8308 => 421
	i32 2344264397, ; 625: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 626: System.Net.Primitives => 0x8c40e0db => 70
	i32 2353444681, ; 627: cs\Microsoft.CodeAnalysis.Features.resources => 0x8c46b749 => 496
	i32 2368005991, ; 628: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 629: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 258
	i32 2371007202, ; 630: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 232
	i32 2378619854, ; 631: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 632: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 633: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 548
	i32 2400844204, ; 634: NuGet.Protocol => 0x8f19f9ac => 289
	i32 2401565422, ; 635: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 636: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 341
	i32 2411328690, ; 637: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 188
	i32 2421380589, ; 638: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2422313222, ; 639: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x90619106 => 275
	i32 2423080555, ; 640: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 328
	i32 2427245696, ; 641: Microsoft.CodeAnalysis.Razor.dll => 0x90acd480 => 220
	i32 2427813419, ; 642: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 545
	i32 2435356389, ; 643: System.Console.dll => 0x912896e5 => 20
	i32 2435490729, ; 644: zh-Hans/Microsoft.CodeAnalysis.Features.resources.dll => 0x912aa3a9 => 507
	i32 2435904999, ; 645: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 646: Microsoft.JSInterop.dll => 0x919672ca => 262
	i32 2445655071, ; 647: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x91c5bc1f => 472
	i32 2454642406, ; 648: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458475166, ; 649: cs\Microsoft.CodeAnalysis.resources => 0x92895a9e => 444
	i32 2458592288, ; 650: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 186
	i32 2458678730, ; 651: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 652: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2460994626, ; 653: it/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x92afcc42 => 474
	i32 2462337112, ; 654: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x92c44858 => 532
	i32 2465532216, ; 655: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 331
	i32 2468336027, ; 656: Microsoft.CodeAnalysis.Elfie.dll => 0x931fd19b => 218
	i32 2471841756, ; 657: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 658: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 659: Microsoft.Maui.Controls => 0x93dba8a1 => 264
	i32 2483903535, ; 660: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 661: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486100839, ; 662: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0x942ee367 => 277
	i32 2490993605, ; 663: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 664: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 665: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 353
	i32 2509217888, ; 666: System.Diagnostics.EventLog => 0x958fa060 => 299
	i32 2511706353, ; 667: Microsoft.CodeAnalysis.Features => 0x95b598f1 => 219
	i32 2514216601, ; 668: az\Humanizer.resources => 0x95dbe699 => 398
	i32 2518448533, ; 669: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x961c7995 => 525
	i32 2522472828, ; 670: Xamarin.Android.Glide.dll => 0x9659e17c => 312
	i32 2537015816, ; 671: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 187
	i32 2538310050, ; 672: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 673: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 546
	i32 2554139094, ; 674: ProdutosMAUI.dll => 0x983d11d6 => 0
	i32 2562349572, ; 675: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 676: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2573008149, ; 677: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x995cfd15 => 278
	i32 2578202641, ; 678: fa\Humanizer.resources => 0x99ac4011 => 406
	i32 2581783588, ; 679: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 354
	i32 2581819634, ; 680: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 376
	i32 2583428798, ; 681: pt-BR/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x99fbfebe => 530
	i32 2585011090, ; 682: NuGet.LibraryModel => 0x9a142392 => 286
	i32 2585220780, ; 683: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 684: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 685: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 190
	i32 2586448504, ; 686: pl\Microsoft.CodeAnalysis.Features.resources => 0x9a2a1278 => 503
	i32 2589602615, ; 687: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 688: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 240
	i32 2592999858, ; 689: pl/Microsoft.CodeAnalysis.resources.dll => 0x9a8e09b2 => 451
	i32 2593496499, ; 690: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 555
	i32 2594125473, ; 691: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 200
	i32 2597137376, ; 692: es/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9acd2be0 => 459
	i32 2598563041, ; 693: RCLProdutos => 0x9ae2ece1 => 572
	i32 2600501332, ; 694: NuGet.Frameworks.dll => 0x9b008054 => 285
	i32 2605712449, ; 695: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 395
	i32 2614513330, ; 696: mt\Humanizer.resources => 0x9bd64eb2 => 422
	i32 2615233544, ; 697: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 345
	i32 2616218305, ; 698: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 249
	i32 2617129537, ; 699: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 700: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 701: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 335
	i32 2624644809, ; 702: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 340
	i32 2626831493, ; 703: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 550
	i32 2627185994, ; 704: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 705: System.Memory.Data => 0x9ca74fdc => 304
	i32 2629116046, ; 706: ar\Humanizer.resources => 0x9cb5208e => 397
	i32 2629843544, ; 707: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 708: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 349
	i32 2633959305, ; 709: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 204
	i32 2634653062, ; 710: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 228
	i32 2640290731, ; 711: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 258
	i32 2640706905, ; 712: Azure.Core => 0x9d65fd59 => 173
	i32 2648230441, ; 713: tr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9dd8ca29 => 467
	i32 2649063512, ; 714: pt/Humanizer.resources.dll => 0x9de58058 => 427
	i32 2660268199, ; 715: vi\Humanizer.resources => 0x9e9078a7 => 440
	i32 2660759594, ; 716: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 308
	i32 2661925899, ; 717: NuGet.Common => 0x9ea9c40b => 282
	i32 2663391936, ; 718: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 314
	i32 2663698177, ; 719: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 720: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 721: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 722: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 723: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2681334887, ; 724: cs/Humanizer.resources.dll => 0x9fd1ec67 => 401
	i32 2686887180, ; 725: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 726: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 194
	i32 2693849962, ; 727: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 728: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 374
	i32 2715334215, ; 729: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2716751016, ; 730: ko/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa1ee54a8 => 515
	i32 2717744543, ; 731: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 732: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2722434549, ; 733: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 214
	i32 2723680174, ; 734: es/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa2580fae => 524
	i32 2724373263, ; 735: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 736: Xamarin.AndroidX.Activity => 0xa2e0939b => 316
	i32 2734467373, ; 737: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xa2fca92d => 480
	i32 2735172069, ; 738: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 739: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 187
	i32 2737747696, ; 740: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 322
	i32 2740051746, ; 741: Microsoft.Identity.Client => 0xa351df22 => 254
	i32 2740948882, ; 742: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 743: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2749396593, ; 744: ko/Microsoft.CodeAnalysis.Features.resources.dll => 0xa3e07671 => 502
	i32 2752995522, ; 745: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 556
	i32 2755098380, ; 746: Microsoft.SqlServer.Server.dll => 0xa437770c => 271
	i32 2755643133, ; 747: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 229
	i32 2758225723, ; 748: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 265
	i32 2764765095, ; 749: Microsoft.Maui.dll => 0xa4caf7a7 => 266
	i32 2765824710, ; 750: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 751: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 389
	i32 2778768386, ; 752: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 379
	i32 2779977773, ; 753: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 367
	i32 2782920994, ; 754: Microsoft.AspNetCore.Authentication.Cookies => 0xa5e00122 => 185
	i32 2785988530, ; 755: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 562
	i32 2788224221, ; 756: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 345
	i32 2793340844, ; 757: pl/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa67effac => 516
	i32 2795666278, ; 758: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 279
	i32 2801831435, ; 759: Microsoft.Maui.Graphics => 0xa7008e0b => 268
	i32 2803228030, ; 760: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 761: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 541
	i32 2810250172, ; 762: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 332
	i32 2819267264, ; 763: NuGet.Configuration => 0xa80a9ac0 => 283
	i32 2819470561, ; 764: System.Xml.dll => 0xa80db4e1 => 163
	i32 2819745351, ; 765: pt-BR/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xa811e647 => 465
	i32 2821205001, ; 766: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 767: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 367
	i32 2822678584, ; 768: Microsoft.Build.Framework => 0xa83ea838 => 212
	i32 2823470325, ; 769: pt-BR/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xa84abcf5 => 491
	i32 2824502124, ; 770: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 771: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 554
	i32 2833784645, ; 772: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 207
	i32 2838993487, ; 773: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 356
	i32 2841355853, ; 774: System.Security.Permissions => 0xa95ba64d => 310
	i32 2847789619, ; 775: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 228
	i32 2849599387, ; 776: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 777: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 205
	i32 2851943490, ; 778: sl/Humanizer.resources.dll => 0xa9fd3442 => 431
	i32 2853208004, ; 779: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 379
	i32 2855708567, ; 780: Xamarin.AndroidX.Transition => 0xaa36a797 => 375
	i32 2861098320, ; 781: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 782: Microsoft.Maui.Essentials => 0xaa8a4878 => 267
	i32 2867142744, ; 783: ja/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xaae52058 => 462
	i32 2867946736, ; 784: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 308
	i32 2868387235, ; 785: uz-Cyrl-UZ\Humanizer.resources => 0xaaf81da3 => 438
	i32 2870099610, ; 786: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 317
	i32 2875164099, ; 787: Jsr305Binding.dll => 0xab5f85c3 => 385
	i32 2875220617, ; 788: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 789: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 343
	i32 2885904239, ; 790: RCLCompras.dll => 0xac03676f => 570
	i32 2887636118, ; 791: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 792: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 193
	i32 2899753641, ; 793: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 794: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 795: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 796: mscorlib.dll => 0xad2a79b6 => 166
	i32 2906598491, ; 797: Microsoft.AspNet.Identity.EntityFramework => 0xad3f2c5b => 182
	i32 2909604320, ; 798: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xad6d09e0 => 475
	i32 2909686330, ; 799: tr/Microsoft.CodeAnalysis.Features.resources.dll => 0xad6e4a3a => 506
	i32 2909740682, ; 800: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 801: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 243
	i32 2916751541, ; 802: EntityFramework => 0xadda18b5 => 178
	i32 2916838712, ; 803: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 380
	i32 2919462931, ; 804: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2919948085, ; 805: it\Humanizer.resources => 0xae0adf35 => 416
	i32 2921128767, ; 806: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 319
	i32 2921417940, ; 807: System.Security.Cryptography.Xml => 0xae214cd4 => 309
	i32 2930358886, ; 808: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 199
	i32 2936416060, ; 809: System.Resources.Reader => 0xaf06273c => 98
	i32 2939918451, ; 810: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0xaf3b9873 => 273
	i32 2940926066, ; 811: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 812: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 813: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 298
	i32 2952707053, ; 814: NuGet.Frameworks => 0xaffebbed => 285
	i32 2959614098, ; 815: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960619068, ; 816: is/Humanizer.resources.dll => 0xb077763c => 415
	i32 2968338931, ; 817: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 818: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 819: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 200
	i32 2978675010, ; 820: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 339
	i32 2986085743, ; 821: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0xb1fc0d6f => 276
	i32 2987532451, ; 822: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 370
	i32 2988176241, ; 823: Microsoft.CodeAnalysis.Workspaces => 0xb21bf371 => 222
	i32 2996646946, ; 824: Microsoft.AspNetCore.Http => 0xb29d3422 => 202
	i32 2996846495, ; 825: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 352
	i32 3012788804, ; 826: System.Configuration.ConfigurationManager => 0xb3938244 => 298
	i32 3014607031, ; 827: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0xb3af40b7 => 197
	i32 3016983068, ; 828: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 372
	i32 3023353419, ; 829: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 830: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 347
	i32 3033232394, ; 831: hy/Humanizer.resources.dll => 0xb4cb740a => 413
	i32 3033331042, ; 832: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 186
	i32 3033605958, ; 833: System.Memory.Data.dll => 0xb4d12746 => 304
	i32 3036999524, ; 834: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 204
	i32 3038032645, ; 835: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 573
	i32 3056245963, ; 836: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 369
	i32 3057625584, ; 837: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 360
	i32 3058348817, ; 838: es\Microsoft.CodeAnalysis.Workspaces.resources => 0xb64ab311 => 524
	i32 3059408633, ; 839: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 840: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3062329077, ; 841: cs/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6876ef5 => 509
	i32 3069284769, ; 842: it/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6f191a1 => 513
	i32 3069363400, ; 843: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 230
	i32 3075834255, ; 844: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 845: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 547
	i32 3077674723, ; 846: ru/Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xb77196e3 => 531
	i32 3084678329, ; 847: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 261
	i32 3090735792, ; 848: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 849: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 253
	i32 3099732863, ; 850: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 851: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3110363141, ; 852: bn-BD/Humanizer.resources.dll => 0xb9646005 => 400
	i32 3111772706, ; 853: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3117571426, ; 854: uk/Humanizer.resources.dll => 0xb9d25d62 => 437
	i32 3121463068, ; 855: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 856: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 857: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3135950041, ; 858: Microsoft.Build.Framework.dll => 0xbaeaccd9 => 212
	i32 3137307937, ; 859: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xbaff8521 => 486
	i32 3146228286, ; 860: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0xbb87a23e => 521
	i32 3147165239, ; 861: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 862: GoogleGson.dll => 0xbba64c02 => 179
	i32 3151916485, ; 863: zh-CN\Humanizer.resources => 0xbbde6dc5 => 441
	i32 3155681111, ; 864: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 198
	i32 3159123045, ; 865: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 866: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3161157966, ; 867: az/Humanizer.resources.dll => 0xbc6b714e => 398
	i32 3162329233, ; 868: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xbc7d5091 => 494
	i32 3173713272, ; 869: cs/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbd2b0578 => 483
	i32 3178803400, ; 870: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 361
	i32 3192346100, ; 871: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 872: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 873: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 230
	i32 3198990134, ; 874: lv\Humanizer.resources => 0xbeacb736 => 420
	i32 3204380047, ; 875: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 876: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 877: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 338
	i32 3213246214, ; 878: System.Security.Permissions.dll => 0xbf863f06 => 310
	i32 3220365878, ; 879: System.Threading => 0xbff2e236 => 148
	i32 3225142516, ; 880: NuGet.Versioning => 0xc03bc4f4 => 290
	i32 3226221578, ; 881: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3235211957, ; 882: ru/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xc0d56ab5 => 518
	i32 3236685057, ; 883: uz-Latn-UZ\Humanizer.resources => 0xc0ebe501 => 439
	i32 3245785879, ; 884: de/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xc176c317 => 458
	i32 3251039220, ; 885: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3255883881, ; 886: tr\Humanizer.resources => 0xc210d869 => 436
	i32 3257523865, ; 887: Microsoft.AspNetCore.Identity.dll => 0xc229de99 => 206
	i32 3258312781, ; 888: Xamarin.AndroidX.CardView => 0xc235e84d => 326
	i32 3265493905, ; 889: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 890: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3275336830, ; 891: sl\Humanizer.resources => 0xc339ac7e => 431
	i32 3277815716, ; 892: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 893: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 894: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3281060062, ; 895: RCLCompras => 0xc39100de => 570
	i32 3284892224, ; 896: ru/Microsoft.CodeAnalysis.resources.dll => 0xc3cb7a40 => 453
	i32 3290767353, ; 897: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3296560137, ; 898: sv\Humanizer.resources => 0xc47d8409 => 434
	i32 3299363146, ; 899: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 900: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 209
	i32 3303498502, ; 901: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3304979567, ; 902: Humanizer.dll => 0xc4fdfc6f => 180
	i32 3305363605, ; 903: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 542
	i32 3312457198, ; 904: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 257
	i32 3315699264, ; 905: System.Composition.Hosting => 0xc5a18e40 => 295
	i32 3316684772, ; 906: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 907: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 336
	i32 3317144872, ; 908: System.Data => 0xc5b79d28 => 24
	i32 3317354178, ; 909: es\Microsoft.CodeAnalysis.Features.resources => 0xc5bacec2 => 498
	i32 3321099197, ; 910: sr-Latn/Humanizer.resources.dll => 0xc5f3f3bd => 433
	i32 3322802946, ; 911: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xc60df302 => 470
	i32 3323152254, ; 912: uz-Cyrl-UZ/Humanizer.resources.dll => 0xc613477e => 438
	i32 3334443138, ; 913: sv/Humanizer.resources.dll => 0xc6bf9082 => 434
	i32 3340431453, ; 914: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 324
	i32 3345895724, ; 915: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 365
	i32 3346324047, ; 916: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 362
	i32 3357674450, ; 917: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 559
	i32 3358260929, ; 918: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 919: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 317
	i32 3362522851, ; 920: Xamarin.AndroidX.Core => 0xc86c06e3 => 333
	i32 3366347497, ; 921: Java.Interop => 0xc8a662e9 => 168
	i32 3366973124, ; 922: zh-Hans\Microsoft.CodeAnalysis.resources => 0xc8afeec4 => 455
	i32 3374879918, ; 923: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 259
	i32 3374999561, ; 924: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 366
	i32 3381016424, ; 925: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 538
	i32 3384077219, ; 926: ko/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xc9b4eba3 => 476
	i32 3385193906, ; 927: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc9c5f5b2 => 487
	i32 3395150330, ; 928: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396351408, ; 929: ru\Microsoft.CodeAnalysis.CSharp.resources => 0xca7035b0 => 466
	i32 3398803625, ; 930: Mono.TextTemplating => 0xca95a0a9 => 280
	i32 3403906625, ; 931: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 932: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 337
	i32 3406129585, ; 933: pl\Humanizer.resources => 0xcb0569b1 => 426
	i32 3406629867, ; 934: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 241
	i32 3421170118, ; 935: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 234
	i32 3427208810, ; 936: hr\Humanizer.resources => 0xcc470e6a => 411
	i32 3428513518, ; 937: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 237
	i32 3429136800, ; 938: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 939: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 940: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 340
	i32 3445114897, ; 941: fr/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xcd584811 => 473
	i32 3445260447, ; 942: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 943: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 263
	i32 3457410834, ; 944: es/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xce13e712 => 485
	i32 3463511458, ; 945: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 546
	i32 3464190856, ; 946: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 190
	i32 3465327893, ; 947: el\Humanizer.resources => 0xce8cb515 => 404
	i32 3471940407, ; 948: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 949: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 950: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 559
	i32 3484440000, ; 951: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 558
	i32 3485117614, ; 952: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 953: System.Transactions => 0xcfd0c798 => 150
	i32 3488260661, ; 954: pt-BR\Microsoft.CodeAnalysis.resources => 0xcfeaa235 => 452
	i32 3493954962, ; 955: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 329
	i32 3500000672, ; 956: Microsoft.JSInterop => 0xd09dc5a0 => 262
	i32 3509114376, ; 957: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 958: System.Security.dll => 0xd1854eb4 => 130
	i32 3519914379, ; 959: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xd1cda18b => 217
	i32 3526217725, ; 960: NuGet.ProjectModel.dll => 0xd22dcffd => 288
	i32 3530783736, ; 961: zh-Hans/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xd2737bf8 => 494
	i32 3530912306, ; 962: System.Configuration => 0xd2757232 => 19
	i32 3538463390, ; 963: pl/Microsoft.CodeAnalysis.Features.resources.dll => 0xd2e8aa9e => 503
	i32 3539954161, ; 964: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 965: Microsoft.Data.SqlClient => 0xd35114f1 => 223
	i32 3545363771, ; 966: System.Composition.AttributedModel => 0xd351f53b => 293
	i32 3555789582, ; 967: ko\Microsoft.CodeAnalysis.Scripting.resources => 0xd3f10b0e => 515
	i32 3558648585, ; 968: System.ClientModel => 0xd41cab09 => 291
	i32 3560100363, ; 969: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 970: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 971: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 972: System.Runtime.Caching.dll => 0xd4d3289f => 306
	i32 3580758918, ; 973: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 566
	i32 3597029428, ; 974: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 315
	i32 3598340787, ; 975: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 976: System.Linq.dll => 0xd715a361 => 61
	i32 3612753153, ; 977: hr/Humanizer.resources.dll => 0xd7563d01 => 411
	i32 3614030538, ; 978: nb\Humanizer.resources => 0xd769baca => 423
	i32 3619374377, ; 979: Microsoft.Extensions.Identity.Core => 0xd7bb4529 => 246
	i32 3624195450, ; 980: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3626814988, ; 981: Microsoft.CodeAnalysis.Scripting.dll => 0xd82cce0c => 221
	i32 3627119903, ; 982: ja\Humanizer.resources => 0xd831751f => 417
	i32 3627220390, ; 983: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 364
	i32 3633644679, ; 984: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 319
	i32 3638274909, ; 985: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 986: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 350
	i32 3643446276, ; 987: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 563
	i32 3643854240, ; 988: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 361
	i32 3645089577, ; 989: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3653734595, ; 990: EntityFramework.dll => 0xd9c790c3 => 178
	i32 3657292374, ; 991: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 233
	i32 3660523487, ; 992: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3664207537, ; 993: af/Humanizer.resources.dll => 0xda675eb1 => 396
	i32 3672681054, ; 994: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3675389610, ; 995: sk/Humanizer.resources.dll => 0xdb11feaa => 430
	i32 3680473675, ; 996: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xdb5f924b => 504
	i32 3682565725, ; 997: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 325
	i32 3684561358, ; 998: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 329
	i32 3685965367, ; 999: ja/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xdbb35e37 => 488
	i32 3689375977, ; 1000: System.Drawing.Common => 0xdbe768e9 => 300
	i32 3697841164, ; 1001: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 568
	i32 3698844660, ; 1002: hu/Humanizer.resources.dll => 0xdc77e3f4 => 412
	i32 3700591436, ; 1003: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 256
	i32 3700866549, ; 1004: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3702852043, ; 1005: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xdcb509cb => 463
	i32 3706696989, ; 1006: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 334
	i32 3716563718, ; 1007: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 1008: Xamarin.AndroidX.Annotation => 0xdda814c6 => 318
	i32 3722202641, ; 1009: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 236
	i32 3724971120, ; 1010: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 360
	i32 3726828805, ; 1011: de\Microsoft.CodeAnalysis.Workspaces.resources => 0xde22e505 => 523
	i32 3732100267, ; 1012: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 1013: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 207
	i32 3737834244, ; 1014: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748220531, ; 1015: fr\Microsoft.CodeAnalysis.resources => 0xdf694e73 => 447
	i32 3748608112, ; 1016: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 1017: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3753194597, ; 1018: id\Humanizer.resources => 0xdfb53465 => 414
	i32 3754087143, ; 1019: Microsoft.CodeAnalysis.CSharp.Features => 0xdfc2d2e7 => 216
	i32 3757377913, ; 1020: EntityFramework.SqlServer => 0xdff50979 => 177
	i32 3758424670, ; 1021: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 235
	i32 3765508441, ; 1022: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 250
	i32 3766131739, ; 1023: ku\Humanizer.resources => 0xe07a9c1b => 419
	i32 3769668999, ; 1024: dotnet-aspnet-codegenerator-design => 0xe0b09587 => 274
	i32 3773491389, ; 1025: vi/Humanizer.resources.dll => 0xe0eae8bd => 440
	i32 3786282454, ; 1026: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 327
	i32 3792276235, ; 1027: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3799976085, ; 1028: hu\Humanizer.resources => 0xe27f0895 => 412
	i32 3800979733, ; 1029: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 263
	i32 3802314059, ; 1030: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xe2a2b54b => 476
	i32 3802395368, ; 1031: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 1032: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 307
	i32 3808703996, ; 1033: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xe30435fc => 531
	i32 3819260425, ; 1034: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822443793, ; 1035: DocumentFormat.OpenXml => 0xe3d5dd11 => 175
	i32 3823082795, ; 1036: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 1037: System.Numerics.dll => 0xe4436460 => 83
	i32 3829832231, ; 1038: Microsoft.AspNetCore.Components.QuickGrid.EntityFrameworkAdapter => 0xe4469a27 => 192
	i32 3835967995, ; 1039: zh-Hant/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe4a439fb => 521
	i32 3841363665, ; 1040: zh-Hant/Humanizer.resources.dll => 0xe4f68ed1 => 443
	i32 3841636137, ; 1041: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 238
	i32 3844307129, ; 1042: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 1043: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 1044: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3871054620, ; 1045: System.Composition.Runtime => 0xe6bb9b1c => 296
	i32 3873536506, ; 1046: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 1047: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3880216086, ; 1048: id/Humanizer.resources.dll => 0xe7476616 => 414
	i32 3882426981, ; 1049: th-TH/Humanizer.resources.dll => 0xe7692265 => 435
	i32 3885497537, ; 1050: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 1051: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 375
	i32 3888767677, ; 1052: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 365
	i32 3889960447, ; 1053: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 567
	i32 3896106733, ; 1054: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 1055: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 333
	i32 3900683505, ; 1056: System.Composition.TypedParts => 0xe87fb4f1 => 297
	i32 3901907137, ; 1057: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3901960326, ; 1058: ko/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xe8933086 => 489
	i32 3909047057, ; 1059: uk\Humanizer.resources => 0xe8ff5311 => 437
	i32 3913109504, ; 1060: RCLProdutos.dll => 0xe93d5000 => 572
	i32 3920810846, ; 1061: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 1062: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 378
	i32 3928044579, ; 1063: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 1064: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 1065: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 363
	i32 3945713374, ; 1066: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3947271234, ; 1067: ro\Humanizer.resources => 0xeb469442 => 428
	i32 3952277326, ; 1068: pt-BR/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xeb92f74e => 478
	i32 3952357212, ; 1069: System.IO.Packaging.dll => 0xeb942f5c => 302
	i32 3953953790, ; 1070: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 1071: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 321
	i32 3958156203, ; 1072: pt\Humanizer.resources => 0xebecabab => 427
	i32 3959773229, ; 1073: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 352
	i32 3962225205, ; 1074: fa/Humanizer.resources.dll => 0xec2ac235 => 406
	i32 3980434154, ; 1075: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 562
	i32 3987592930, ; 1076: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 544
	i32 4000339556, ; 1077: ko/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xee705664 => 463
	i32 4002654803, ; 1078: Microsoft.CodeAnalysis.Workspaces.dll => 0xee93aa53 => 222
	i32 4003436829, ; 1079: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4006106083, ; 1080: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xeec853e3 => 490
	i32 4015948917, ; 1081: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 320
	i32 4017538743, ; 1082: ar/Humanizer.resources.dll => 0xef76c6b7 => 397
	i32 4022460502, ; 1083: Microsoft.DotNet.Scaffolding.Shared => 0xefc1e056 => 225
	i32 4023392905, ; 1084: System.IO.Pipelines => 0xefd01a89 => 303
	i32 4023689262, ; 1085: fr/Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xefd4a02e => 486
	i32 4025784931, ; 1086: System.Memory => 0xeff49a63 => 62
	i32 4026527876, ; 1087: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 215
	i32 4035041792, ; 1088: zh-Hant/Microsoft.CodeAnalysis.resources.dll => 0xf081da00 => 456
	i32 4035816735, ; 1089: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xf08dad1f => 485
	i32 4044155772, ; 1090: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 269
	i32 4046471985, ; 1091: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 265
	i32 4051956670, ; 1092: NuGet.Protocol.dll => 0xf183f3be => 289
	i32 4054681211, ; 1093: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 1094: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 1095: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 1096: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 245
	i32 4083924092, ; 1097: tr/Microsoft.CodeAnalysis.Scripting.resources.dll => 0xf36bbc7c => 519
	i32 4094352644, ; 1098: Microsoft.Maui.Essentials.dll => 0xf40add04 => 267
	i32 4099507663, ; 1099: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 1100: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 1101: Xamarin.AndroidX.Emoji2 => 0xf479582c => 341
	i32 4101842092, ; 1102: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 231
	i32 4102112229, ; 1103: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 557
	i32 4113104511, ; 1104: Mono.TextTemplating.dll => 0xf528fe7f => 280
	i32 4116013827, ; 1105: Microsoft.AspNetCore.Components.QuickGrid => 0xf5556303 => 191
	i32 4118552436, ; 1106: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 183
	i32 4118796114, ; 1107: de\Microsoft.CodeAnalysis.CSharp.resources => 0xf57fd752 => 458
	i32 4125707920, ; 1108: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 552
	i32 4126470640, ; 1109: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 237
	i32 4127667938, ; 1110: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 1111: System.AppContext => 0xf6318da0 => 6
	i32 4139600647, ; 1112: fr/Microsoft.CodeAnalysis.Features.resources.dll => 0xf6bd4b07 => 499
	i32 4147896353, ; 1113: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 1114: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 564
	i32 4151237749, ; 1115: System.Core => 0xf76edc75 => 21
	i32 4154421718, ; 1116: fr-BE/Humanizer.resources.dll => 0xf79f71d6 => 409
	i32 4159265925, ; 1117: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 1118: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164470604, ; 1119: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xf838c74c => 493
	i32 4164802419, ; 1120: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4172494248, ; 1121: fr/Humanizer.resources.dll => 0xf8b335a8 => 408
	i32 4177402947, ; 1122: cs/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf8fe1c43 => 457
	i32 4179525066, ; 1123: tr\Microsoft.CodeAnalysis.Scripting.resources => 0xf91e7dca => 519
	i32 4181436372, ; 1124: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 1125: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 357
	i32 4185676441, ; 1126: System.Security => 0xf97c5a99 => 130
	i32 4187874287, ; 1127: tr\Microsoft.CodeAnalysis.resources => 0xf99de3ef => 454
	i32 4193875346, ; 1128: ja/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf9f97592 => 475
	i32 4194278001, ; 1129: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 229
	i32 4196171640, ; 1130: Microsoft.CodeAnalysis => 0xfa1c7f78 => 214
	i32 4196529839, ; 1131: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4207745933, ; 1132: it\Microsoft.CodeAnalysis.Workspaces.resources => 0xfacd1b8d => 526
	i32 4213026141, ; 1133: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4219953892, ; 1134: sr/Humanizer.resources.dll => 0xfb8762e4 => 432
	i32 4225873007, ; 1135: zh-Hant/Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xfbe1b46f => 482
	i32 4245218886, ; 1136: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 215
	i32 4250496667, ; 1137: ja/Humanizer.resources.dll => 0xfd596e9b => 417
	i32 4256097574, ; 1138: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 334
	i32 4258378803, ; 1139: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 356
	i32 4260525087, ; 1140: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 1141: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 301
	i32 4271975918, ; 1142: Microsoft.Maui.Controls.dll => 0xfea12dee => 264
	i32 4274976490, ; 1143: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4289667212, ; 1144: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0xffaf208c => 275
	i32 4292120959, ; 1145: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 357
	i32 4294648842, ; 1146: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 242
	i32 4294763496 ; 1147: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 343
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1148 x i32] [
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
	i32 571, ; 19
	i32 279, ; 20
	i32 30, ; 21
	i32 568, ; 22
	i32 124, ; 23
	i32 268, ; 24
	i32 217, ; 25
	i32 102, ; 26
	i32 196, ; 27
	i32 405, ; 28
	i32 455, ; 29
	i32 371, ; 30
	i32 471, ; 31
	i32 107, ; 32
	i32 371, ; 33
	i32 139, ; 34
	i32 392, ; 35
	i32 274, ; 36
	i32 77, ; 37
	i32 571, ; 38
	i32 124, ; 39
	i32 13, ; 40
	i32 327, ; 41
	i32 132, ; 42
	i32 209, ; 43
	i32 373, ; 44
	i32 151, ; 45
	i32 565, ; 46
	i32 566, ; 47
	i32 18, ; 48
	i32 325, ; 49
	i32 26, ; 50
	i32 206, ; 51
	i32 347, ; 52
	i32 1, ; 53
	i32 59, ; 54
	i32 42, ; 55
	i32 468, ; 56
	i32 192, ; 57
	i32 423, ; 58
	i32 189, ; 59
	i32 91, ; 60
	i32 483, ; 61
	i32 188, ; 62
	i32 216, ; 63
	i32 330, ; 64
	i32 176, ; 65
	i32 180, ; 66
	i32 147, ; 67
	i32 349, ; 68
	i32 346, ; 69
	i32 537, ; 70
	i32 410, ; 71
	i32 54, ; 72
	i32 460, ; 73
	i32 407, ; 74
	i32 69, ; 75
	i32 184, ; 76
	i32 479, ; 77
	i32 565, ; 78
	i32 316, ; 79
	i32 83, ; 80
	i32 491, ; 81
	i32 271, ; 82
	i32 550, ; 83
	i32 348, ; 84
	i32 413, ; 85
	i32 224, ; 86
	i32 549, ; 87
	i32 131, ; 88
	i32 55, ; 89
	i32 149, ; 90
	i32 74, ; 91
	i32 145, ; 92
	i32 522, ; 93
	i32 62, ; 94
	i32 294, ; 95
	i32 146, ; 96
	i32 573, ; 97
	i32 512, ; 98
	i32 165, ; 99
	i32 468, ; 100
	i32 284, ; 101
	i32 456, ; 102
	i32 472, ; 103
	i32 493, ; 104
	i32 561, ; 105
	i32 473, ; 106
	i32 331, ; 107
	i32 383, ; 108
	i32 12, ; 109
	i32 344, ; 110
	i32 125, ; 111
	i32 152, ; 112
	i32 113, ; 113
	i32 166, ; 114
	i32 164, ; 115
	i32 346, ; 116
	i32 256, ; 117
	i32 359, ; 118
	i32 428, ; 119
	i32 201, ; 120
	i32 84, ; 121
	i32 548, ; 122
	i32 542, ; 123
	i32 252, ; 124
	i32 433, ; 125
	i32 495, ; 126
	i32 150, ; 127
	i32 392, ; 128
	i32 60, ; 129
	i32 439, ; 130
	i32 477, ; 131
	i32 247, ; 132
	i32 51, ; 133
	i32 487, ; 134
	i32 103, ; 135
	i32 114, ; 136
	i32 481, ; 137
	i32 210, ; 138
	i32 40, ; 139
	i32 385, ; 140
	i32 208, ; 141
	i32 282, ; 142
	i32 382, ; 143
	i32 242, ; 144
	i32 272, ; 145
	i32 225, ; 146
	i32 505, ; 147
	i32 120, ; 148
	i32 481, ; 149
	i32 556, ; 150
	i32 278, ; 151
	i32 506, ; 152
	i32 52, ; 153
	i32 44, ; 154
	i32 119, ; 155
	i32 441, ; 156
	i32 336, ; 157
	i32 554, ; 158
	i32 342, ; 159
	i32 81, ; 160
	i32 403, ; 161
	i32 136, ; 162
	i32 378, ; 163
	i32 323, ; 164
	i32 8, ; 165
	i32 520, ; 166
	i32 73, ; 167
	i32 294, ; 168
	i32 536, ; 169
	i32 155, ; 170
	i32 394, ; 171
	i32 154, ; 172
	i32 92, ; 173
	i32 389, ; 174
	i32 45, ; 175
	i32 514, ; 176
	i32 490, ; 177
	i32 551, ; 178
	i32 224, ; 179
	i32 403, ; 180
	i32 307, ; 181
	i32 539, ; 182
	i32 425, ; 183
	i32 393, ; 184
	i32 109, ; 185
	i32 291, ; 186
	i32 527, ; 187
	i32 500, ; 188
	i32 129, ; 189
	i32 429, ; 190
	i32 284, ; 191
	i32 442, ; 192
	i32 25, ; 193
	i32 313, ; 194
	i32 72, ; 195
	i32 55, ; 196
	i32 270, ; 197
	i32 402, ; 198
	i32 46, ; 199
	i32 560, ; 200
	i32 296, ; 201
	i32 218, ; 202
	i32 251, ; 203
	i32 337, ; 204
	i32 446, ; 205
	i32 195, ; 206
	i32 22, ; 207
	i32 351, ; 208
	i32 300, ; 209
	i32 86, ; 210
	i32 43, ; 211
	i32 160, ; 212
	i32 499, ; 213
	i32 71, ; 214
	i32 507, ; 215
	i32 364, ; 216
	i32 404, ; 217
	i32 211, ; 218
	i32 501, ; 219
	i32 435, ; 220
	i32 482, ; 221
	i32 3, ; 222
	i32 42, ; 223
	i32 63, ; 224
	i32 479, ; 225
	i32 420, ; 226
	i32 221, ; 227
	i32 16, ; 228
	i32 53, ; 229
	i32 563, ; 230
	i32 388, ; 231
	i32 220, ; 232
	i32 287, ; 233
	i32 492, ; 234
	i32 105, ; 235
	i32 281, ; 236
	i32 460, ; 237
	i32 393, ; 238
	i32 286, ; 239
	i32 386, ; 240
	i32 348, ; 241
	i32 208, ; 242
	i32 34, ; 243
	i32 158, ; 244
	i32 85, ; 245
	i32 32, ; 246
	i32 12, ; 247
	i32 51, ; 248
	i32 244, ; 249
	i32 56, ; 250
	i32 508, ; 251
	i32 368, ; 252
	i32 36, ; 253
	i32 185, ; 254
	i32 408, ; 255
	i32 238, ; 256
	i32 538, ; 257
	i32 387, ; 258
	i32 511, ; 259
	i32 321, ; 260
	i32 35, ; 261
	i32 58, ; 262
	i32 355, ; 263
	i32 492, ; 264
	i32 255, ; 265
	i32 179, ; 266
	i32 17, ; 267
	i32 302, ; 268
	i32 390, ; 269
	i32 419, ; 270
	i32 464, ; 271
	i32 299, ; 272
	i32 181, ; 273
	i32 164, ; 274
	i32 462, ; 275
	i32 235, ; 276
	i32 305, ; 277
	i32 245, ; 278
	i32 184, ; 279
	i32 551, ; 280
	i32 354, ; 281
	i32 249, ; 282
	i32 197, ; 283
	i32 223, ; 284
	i32 311, ; 285
	i32 381, ; 286
	i32 480, ; 287
	i32 227, ; 288
	i32 534, ; 289
	i32 557, ; 290
	i32 153, ; 291
	i32 240, ; 292
	i32 377, ; 293
	i32 464, ; 294
	i32 405, ; 295
	i32 362, ; 296
	i32 514, ; 297
	i32 276, ; 298
	i32 219, ; 299
	i32 227, ; 300
	i32 555, ; 301
	i32 323, ; 302
	i32 231, ; 303
	i32 29, ; 304
	i32 273, ; 305
	i32 52, ; 306
	i32 269, ; 307
	i32 478, ; 308
	i32 523, ; 309
	i32 553, ; 310
	i32 201, ; 311
	i32 382, ; 312
	i32 5, ; 313
	i32 537, ; 314
	i32 502, ; 315
	i32 372, ; 316
	i32 376, ; 317
	i32 424, ; 318
	i32 328, ; 319
	i32 394, ; 320
	i32 320, ; 321
	i32 520, ; 322
	i32 177, ; 323
	i32 176, ; 324
	i32 339, ; 325
	i32 505, ; 326
	i32 449, ; 327
	i32 85, ; 328
	i32 396, ; 329
	i32 525, ; 330
	i32 381, ; 331
	i32 61, ; 332
	i32 495, ; 333
	i32 533, ; 334
	i32 522, ; 335
	i32 112, ; 336
	i32 175, ; 337
	i32 517, ; 338
	i32 449, ; 339
	i32 401, ; 340
	i32 57, ; 341
	i32 466, ; 342
	i32 513, ; 343
	i32 410, ; 344
	i32 567, ; 345
	i32 457, ; 346
	i32 368, ; 347
	i32 430, ; 348
	i32 99, ; 349
	i32 270, ; 350
	i32 436, ; 351
	i32 407, ; 352
	i32 416, ; 353
	i32 19, ; 354
	i32 332, ; 355
	i32 111, ; 356
	i32 426, ; 357
	i32 101, ; 358
	i32 102, ; 359
	i32 496, ; 360
	i32 535, ; 361
	i32 445, ; 362
	i32 104, ; 363
	i32 386, ; 364
	i32 71, ; 365
	i32 448, ; 366
	i32 510, ; 367
	i32 444, ; 368
	i32 38, ; 369
	i32 32, ; 370
	i32 241, ; 371
	i32 103, ; 372
	i32 73, ; 373
	i32 301, ; 374
	i32 541, ; 375
	i32 9, ; 376
	i32 123, ; 377
	i32 46, ; 378
	i32 213, ; 379
	i32 518, ; 380
	i32 322, ; 381
	i32 252, ; 382
	i32 484, ; 383
	i32 9, ; 384
	i32 43, ; 385
	i32 4, ; 386
	i32 369, ; 387
	i32 545, ; 388
	i32 181, ; 389
	i32 257, ; 390
	i32 540, ; 391
	i32 459, ; 392
	i32 244, ; 393
	i32 453, ; 394
	i32 31, ; 395
	i32 429, ; 396
	i32 400, ; 397
	i32 138, ; 398
	i32 92, ; 399
	i32 195, ; 400
	i32 93, ; 401
	i32 560, ; 402
	i32 511, ; 403
	i32 306, ; 404
	i32 49, ; 405
	i32 469, ; 406
	i32 141, ; 407
	i32 447, ; 408
	i32 290, ; 409
	i32 533, ; 410
	i32 112, ; 411
	i32 140, ; 412
	i32 174, ; 413
	i32 338, ; 414
	i32 287, ; 415
	i32 569, ; 416
	i32 115, ; 417
	i32 387, ; 418
	i32 516, ; 419
	i32 157, ; 420
	i32 76, ; 421
	i32 79, ; 422
	i32 358, ; 423
	i32 37, ; 424
	i32 380, ; 425
	i32 260, ; 426
	i32 182, ; 427
	i32 236, ; 428
	i32 342, ; 429
	i32 335, ; 430
	i32 191, ; 431
	i32 64, ; 432
	i32 138, ; 433
	i32 15, ; 434
	i32 194, ; 435
	i32 116, ; 436
	i32 374, ; 437
	i32 384, ; 438
	i32 452, ; 439
	i32 330, ; 440
	i32 48, ; 441
	i32 70, ; 442
	i32 80, ; 443
	i32 126, ; 444
	i32 529, ; 445
	i32 226, ; 446
	i32 94, ; 447
	i32 512, ; 448
	i32 121, ; 449
	i32 391, ; 450
	i32 26, ; 451
	i32 272, ; 452
	i32 295, ; 453
	i32 497, ; 454
	i32 351, ; 455
	i32 97, ; 456
	i32 28, ; 457
	i32 326, ; 458
	i32 558, ; 459
	i32 536, ; 460
	i32 149, ; 461
	i32 303, ; 462
	i32 169, ; 463
	i32 461, ; 464
	i32 454, ; 465
	i32 4, ; 466
	i32 422, ; 467
	i32 471, ; 468
	i32 532, ; 469
	i32 98, ; 470
	i32 193, ; 471
	i32 504, ; 472
	i32 33, ; 473
	i32 93, ; 474
	i32 373, ; 475
	i32 421, ; 476
	i32 528, ; 477
	i32 247, ; 478
	i32 21, ; 479
	i32 41, ; 480
	i32 170, ; 481
	i32 469, ; 482
	i32 552, ; 483
	i32 344, ; 484
	i32 183, ; 485
	i32 409, ; 486
	i32 544, ; 487
	i32 254, ; 488
	i32 210, ; 489
	i32 358, ; 490
	i32 500, ; 491
	i32 390, ; 492
	i32 384, ; 493
	i32 501, ; 494
	i32 363, ; 495
	i32 2, ; 496
	i32 205, ; 497
	i32 196, ; 498
	i32 134, ; 499
	i32 111, ; 500
	i32 248, ; 501
	i32 311, ; 502
	i32 283, ; 503
	i32 564, ; 504
	i32 313, ; 505
	i32 561, ; 506
	i32 58, ; 507
	i32 470, ; 508
	i32 383, ; 509
	i32 95, ; 510
	i32 260, ; 511
	i32 543, ; 512
	i32 39, ; 513
	i32 324, ; 514
	i32 25, ; 515
	i32 94, ; 516
	i32 89, ; 517
	i32 99, ; 518
	i32 10, ; 519
	i32 292, ; 520
	i32 203, ; 521
	i32 488, ; 522
	i32 293, ; 523
	i32 448, ; 524
	i32 87, ; 525
	i32 461, ; 526
	i32 199, ; 527
	i32 100, ; 528
	i32 467, ; 529
	i32 370, ; 530
	i32 232, ; 531
	i32 465, ; 532
	i32 277, ; 533
	i32 211, ; 534
	i32 391, ; 535
	i32 297, ; 536
	i32 315, ; 537
	i32 261, ; 538
	i32 246, ; 539
	i32 489, ; 540
	i32 450, ; 541
	i32 526, ; 542
	i32 540, ; 543
	i32 305, ; 544
	i32 7, ; 545
	i32 569, ; 546
	i32 355, ; 547
	i32 535, ; 548
	i32 312, ; 549
	i32 443, ; 550
	i32 0, ; 551
	i32 255, ; 552
	i32 88, ; 553
	i32 234, ; 554
	i32 529, ; 555
	i32 350, ; 556
	i32 154, ; 557
	i32 539, ; 558
	i32 399, ; 559
	i32 33, ; 560
	i32 243, ; 561
	i32 203, ; 562
	i32 253, ; 563
	i32 116, ; 564
	i32 446, ; 565
	i32 309, ; 566
	i32 82, ; 567
	i32 418, ; 568
	i32 474, ; 569
	i32 498, ; 570
	i32 20, ; 571
	i32 450, ; 572
	i32 418, ; 573
	i32 528, ; 574
	i32 11, ; 575
	i32 162, ; 576
	i32 3, ; 577
	i32 509, ; 578
	i32 266, ; 579
	i32 547, ; 580
	i32 292, ; 581
	i32 251, ; 582
	i32 213, ; 583
	i32 248, ; 584
	i32 189, ; 585
	i32 84, ; 586
	i32 239, ; 587
	i32 415, ; 588
	i32 395, ; 589
	i32 64, ; 590
	i32 250, ; 591
	i32 549, ; 592
	i32 508, ; 593
	i32 377, ; 594
	i32 143, ; 595
	i32 477, ; 596
	i32 202, ; 597
	i32 359, ; 598
	i32 157, ; 599
	i32 226, ; 600
	i32 259, ; 601
	i32 41, ; 602
	i32 288, ; 603
	i32 117, ; 604
	i32 233, ; 605
	i32 314, ; 606
	i32 543, ; 607
	i32 517, ; 608
	i32 424, ; 609
	i32 442, ; 610
	i32 366, ; 611
	i32 198, ; 612
	i32 131, ; 613
	i32 451, ; 614
	i32 75, ; 615
	i32 66, ; 616
	i32 553, ; 617
	i32 172, ; 618
	i32 318, ; 619
	i32 143, ; 620
	i32 527, ; 621
	i32 530, ; 622
	i32 106, ; 623
	i32 421, ; 624
	i32 151, ; 625
	i32 70, ; 626
	i32 496, ; 627
	i32 156, ; 628
	i32 258, ; 629
	i32 232, ; 630
	i32 121, ; 631
	i32 127, ; 632
	i32 548, ; 633
	i32 289, ; 634
	i32 152, ; 635
	i32 341, ; 636
	i32 188, ; 637
	i32 141, ; 638
	i32 275, ; 639
	i32 328, ; 640
	i32 220, ; 641
	i32 545, ; 642
	i32 20, ; 643
	i32 507, ; 644
	i32 14, ; 645
	i32 262, ; 646
	i32 472, ; 647
	i32 135, ; 648
	i32 444, ; 649
	i32 186, ; 650
	i32 75, ; 651
	i32 59, ; 652
	i32 474, ; 653
	i32 532, ; 654
	i32 331, ; 655
	i32 218, ; 656
	i32 167, ; 657
	i32 168, ; 658
	i32 264, ; 659
	i32 15, ; 660
	i32 74, ; 661
	i32 277, ; 662
	i32 6, ; 663
	i32 23, ; 664
	i32 353, ; 665
	i32 299, ; 666
	i32 219, ; 667
	i32 398, ; 668
	i32 525, ; 669
	i32 312, ; 670
	i32 187, ; 671
	i32 91, ; 672
	i32 546, ; 673
	i32 0, ; 674
	i32 1, ; 675
	i32 136, ; 676
	i32 278, ; 677
	i32 406, ; 678
	i32 354, ; 679
	i32 376, ; 680
	i32 530, ; 681
	i32 286, ; 682
	i32 134, ; 683
	i32 69, ; 684
	i32 190, ; 685
	i32 503, ; 686
	i32 146, ; 687
	i32 240, ; 688
	i32 451, ; 689
	i32 555, ; 690
	i32 200, ; 691
	i32 459, ; 692
	i32 572, ; 693
	i32 285, ; 694
	i32 395, ; 695
	i32 422, ; 696
	i32 345, ; 697
	i32 249, ; 698
	i32 88, ; 699
	i32 96, ; 700
	i32 335, ; 701
	i32 340, ; 702
	i32 550, ; 703
	i32 31, ; 704
	i32 304, ; 705
	i32 397, ; 706
	i32 45, ; 707
	i32 349, ; 708
	i32 204, ; 709
	i32 228, ; 710
	i32 258, ; 711
	i32 173, ; 712
	i32 467, ; 713
	i32 427, ; 714
	i32 440, ; 715
	i32 308, ; 716
	i32 282, ; 717
	i32 314, ; 718
	i32 109, ; 719
	i32 158, ; 720
	i32 35, ; 721
	i32 22, ; 722
	i32 174, ; 723
	i32 401, ; 724
	i32 114, ; 725
	i32 194, ; 726
	i32 57, ; 727
	i32 374, ; 728
	i32 144, ; 729
	i32 515, ; 730
	i32 118, ; 731
	i32 120, ; 732
	i32 214, ; 733
	i32 524, ; 734
	i32 110, ; 735
	i32 316, ; 736
	i32 480, ; 737
	i32 139, ; 738
	i32 187, ; 739
	i32 322, ; 740
	i32 254, ; 741
	i32 54, ; 742
	i32 105, ; 743
	i32 502, ; 744
	i32 556, ; 745
	i32 271, ; 746
	i32 229, ; 747
	i32 265, ; 748
	i32 266, ; 749
	i32 133, ; 750
	i32 389, ; 751
	i32 379, ; 752
	i32 367, ; 753
	i32 185, ; 754
	i32 562, ; 755
	i32 345, ; 756
	i32 516, ; 757
	i32 279, ; 758
	i32 268, ; 759
	i32 159, ; 760
	i32 541, ; 761
	i32 332, ; 762
	i32 283, ; 763
	i32 163, ; 764
	i32 465, ; 765
	i32 132, ; 766
	i32 367, ; 767
	i32 212, ; 768
	i32 491, ; 769
	i32 161, ; 770
	i32 554, ; 771
	i32 207, ; 772
	i32 356, ; 773
	i32 310, ; 774
	i32 228, ; 775
	i32 140, ; 776
	i32 205, ; 777
	i32 431, ; 778
	i32 379, ; 779
	i32 375, ; 780
	i32 169, ; 781
	i32 267, ; 782
	i32 462, ; 783
	i32 308, ; 784
	i32 438, ; 785
	i32 317, ; 786
	i32 385, ; 787
	i32 40, ; 788
	i32 343, ; 789
	i32 570, ; 790
	i32 81, ; 791
	i32 193, ; 792
	i32 56, ; 793
	i32 37, ; 794
	i32 97, ; 795
	i32 166, ; 796
	i32 182, ; 797
	i32 475, ; 798
	i32 506, ; 799
	i32 172, ; 800
	i32 243, ; 801
	i32 178, ; 802
	i32 380, ; 803
	i32 82, ; 804
	i32 416, ; 805
	i32 319, ; 806
	i32 309, ; 807
	i32 199, ; 808
	i32 98, ; 809
	i32 273, ; 810
	i32 30, ; 811
	i32 159, ; 812
	i32 298, ; 813
	i32 285, ; 814
	i32 18, ; 815
	i32 415, ; 816
	i32 127, ; 817
	i32 119, ; 818
	i32 200, ; 819
	i32 339, ; 820
	i32 276, ; 821
	i32 370, ; 822
	i32 222, ; 823
	i32 202, ; 824
	i32 352, ; 825
	i32 298, ; 826
	i32 197, ; 827
	i32 372, ; 828
	i32 165, ; 829
	i32 347, ; 830
	i32 413, ; 831
	i32 186, ; 832
	i32 304, ; 833
	i32 204, ; 834
	i32 573, ; 835
	i32 369, ; 836
	i32 360, ; 837
	i32 524, ; 838
	i32 170, ; 839
	i32 16, ; 840
	i32 509, ; 841
	i32 513, ; 842
	i32 230, ; 843
	i32 144, ; 844
	i32 547, ; 845
	i32 531, ; 846
	i32 261, ; 847
	i32 125, ; 848
	i32 253, ; 849
	i32 118, ; 850
	i32 38, ; 851
	i32 400, ; 852
	i32 115, ; 853
	i32 437, ; 854
	i32 47, ; 855
	i32 142, ; 856
	i32 117, ; 857
	i32 212, ; 858
	i32 486, ; 859
	i32 521, ; 860
	i32 34, ; 861
	i32 179, ; 862
	i32 441, ; 863
	i32 198, ; 864
	i32 95, ; 865
	i32 53, ; 866
	i32 398, ; 867
	i32 494, ; 868
	i32 483, ; 869
	i32 361, ; 870
	i32 129, ; 871
	i32 153, ; 872
	i32 230, ; 873
	i32 420, ; 874
	i32 24, ; 875
	i32 161, ; 876
	i32 338, ; 877
	i32 310, ; 878
	i32 148, ; 879
	i32 290, ; 880
	i32 104, ; 881
	i32 518, ; 882
	i32 439, ; 883
	i32 458, ; 884
	i32 89, ; 885
	i32 436, ; 886
	i32 206, ; 887
	i32 326, ; 888
	i32 60, ; 889
	i32 142, ; 890
	i32 431, ; 891
	i32 100, ; 892
	i32 5, ; 893
	i32 13, ; 894
	i32 570, ; 895
	i32 453, ; 896
	i32 122, ; 897
	i32 434, ; 898
	i32 135, ; 899
	i32 209, ; 900
	i32 28, ; 901
	i32 180, ; 902
	i32 542, ; 903
	i32 257, ; 904
	i32 295, ; 905
	i32 72, ; 906
	i32 336, ; 907
	i32 24, ; 908
	i32 498, ; 909
	i32 433, ; 910
	i32 470, ; 911
	i32 438, ; 912
	i32 434, ; 913
	i32 324, ; 914
	i32 365, ; 915
	i32 362, ; 916
	i32 559, ; 917
	i32 137, ; 918
	i32 317, ; 919
	i32 333, ; 920
	i32 168, ; 921
	i32 455, ; 922
	i32 259, ; 923
	i32 366, ; 924
	i32 538, ; 925
	i32 476, ; 926
	i32 487, ; 927
	i32 101, ; 928
	i32 466, ; 929
	i32 280, ; 930
	i32 123, ; 931
	i32 337, ; 932
	i32 426, ; 933
	i32 241, ; 934
	i32 234, ; 935
	i32 411, ; 936
	i32 237, ; 937
	i32 163, ; 938
	i32 167, ; 939
	i32 340, ; 940
	i32 473, ; 941
	i32 39, ; 942
	i32 263, ; 943
	i32 485, ; 944
	i32 546, ; 945
	i32 190, ; 946
	i32 404, ; 947
	i32 17, ; 948
	i32 171, ; 949
	i32 559, ; 950
	i32 558, ; 951
	i32 137, ; 952
	i32 150, ; 953
	i32 452, ; 954
	i32 329, ; 955
	i32 262, ; 956
	i32 155, ; 957
	i32 130, ; 958
	i32 217, ; 959
	i32 288, ; 960
	i32 494, ; 961
	i32 19, ; 962
	i32 503, ; 963
	i32 65, ; 964
	i32 223, ; 965
	i32 293, ; 966
	i32 515, ; 967
	i32 291, ; 968
	i32 147, ; 969
	i32 173, ; 970
	i32 47, ; 971
	i32 306, ; 972
	i32 566, ; 973
	i32 315, ; 974
	i32 79, ; 975
	i32 61, ; 976
	i32 411, ; 977
	i32 423, ; 978
	i32 246, ; 979
	i32 106, ; 980
	i32 221, ; 981
	i32 417, ; 982
	i32 364, ; 983
	i32 319, ; 984
	i32 49, ; 985
	i32 350, ; 986
	i32 563, ; 987
	i32 361, ; 988
	i32 14, ; 989
	i32 178, ; 990
	i32 233, ; 991
	i32 68, ; 992
	i32 396, ; 993
	i32 171, ; 994
	i32 430, ; 995
	i32 504, ; 996
	i32 325, ; 997
	i32 329, ; 998
	i32 488, ; 999
	i32 300, ; 1000
	i32 568, ; 1001
	i32 412, ; 1002
	i32 256, ; 1003
	i32 78, ; 1004
	i32 463, ; 1005
	i32 334, ; 1006
	i32 108, ; 1007
	i32 318, ; 1008
	i32 236, ; 1009
	i32 360, ; 1010
	i32 523, ; 1011
	i32 67, ; 1012
	i32 207, ; 1013
	i32 63, ; 1014
	i32 447, ; 1015
	i32 27, ; 1016
	i32 160, ; 1017
	i32 414, ; 1018
	i32 216, ; 1019
	i32 177, ; 1020
	i32 235, ; 1021
	i32 250, ; 1022
	i32 419, ; 1023
	i32 274, ; 1024
	i32 440, ; 1025
	i32 327, ; 1026
	i32 10, ; 1027
	i32 412, ; 1028
	i32 263, ; 1029
	i32 476, ; 1030
	i32 11, ; 1031
	i32 307, ; 1032
	i32 531, ; 1033
	i32 78, ; 1034
	i32 175, ; 1035
	i32 126, ; 1036
	i32 83, ; 1037
	i32 192, ; 1038
	i32 521, ; 1039
	i32 443, ; 1040
	i32 238, ; 1041
	i32 66, ; 1042
	i32 107, ; 1043
	i32 65, ; 1044
	i32 296, ; 1045
	i32 128, ; 1046
	i32 122, ; 1047
	i32 414, ; 1048
	i32 435, ; 1049
	i32 77, ; 1050
	i32 375, ; 1051
	i32 365, ; 1052
	i32 567, ; 1053
	i32 8, ; 1054
	i32 333, ; 1055
	i32 297, ; 1056
	i32 2, ; 1057
	i32 489, ; 1058
	i32 437, ; 1059
	i32 572, ; 1060
	i32 44, ; 1061
	i32 378, ; 1062
	i32 156, ; 1063
	i32 128, ; 1064
	i32 363, ; 1065
	i32 23, ; 1066
	i32 428, ; 1067
	i32 478, ; 1068
	i32 302, ; 1069
	i32 133, ; 1070
	i32 321, ; 1071
	i32 427, ; 1072
	i32 352, ; 1073
	i32 406, ; 1074
	i32 562, ; 1075
	i32 544, ; 1076
	i32 463, ; 1077
	i32 222, ; 1078
	i32 29, ; 1079
	i32 490, ; 1080
	i32 320, ; 1081
	i32 397, ; 1082
	i32 225, ; 1083
	i32 303, ; 1084
	i32 486, ; 1085
	i32 62, ; 1086
	i32 215, ; 1087
	i32 456, ; 1088
	i32 485, ; 1089
	i32 269, ; 1090
	i32 265, ; 1091
	i32 289, ; 1092
	i32 90, ; 1093
	i32 87, ; 1094
	i32 148, ; 1095
	i32 245, ; 1096
	i32 519, ; 1097
	i32 267, ; 1098
	i32 36, ; 1099
	i32 86, ; 1100
	i32 341, ; 1101
	i32 231, ; 1102
	i32 557, ; 1103
	i32 280, ; 1104
	i32 191, ; 1105
	i32 183, ; 1106
	i32 458, ; 1107
	i32 552, ; 1108
	i32 237, ; 1109
	i32 50, ; 1110
	i32 6, ; 1111
	i32 499, ; 1112
	i32 90, ; 1113
	i32 564, ; 1114
	i32 21, ; 1115
	i32 409, ; 1116
	i32 162, ; 1117
	i32 96, ; 1118
	i32 493, ; 1119
	i32 50, ; 1120
	i32 408, ; 1121
	i32 457, ; 1122
	i32 519, ; 1123
	i32 113, ; 1124
	i32 357, ; 1125
	i32 130, ; 1126
	i32 454, ; 1127
	i32 475, ; 1128
	i32 229, ; 1129
	i32 214, ; 1130
	i32 76, ; 1131
	i32 526, ; 1132
	i32 27, ; 1133
	i32 432, ; 1134
	i32 482, ; 1135
	i32 215, ; 1136
	i32 417, ; 1137
	i32 334, ; 1138
	i32 356, ; 1139
	i32 7, ; 1140
	i32 301, ; 1141
	i32 264, ; 1142
	i32 110, ; 1143
	i32 275, ; 1144
	i32 357, ; 1145
	i32 242, ; 1146
	i32 343 ; 1147
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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
