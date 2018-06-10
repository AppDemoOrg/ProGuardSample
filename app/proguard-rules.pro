# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
-dontshrink # 关闭压缩
-dontoptimize # 关闭优化
-optimizationpasses n # 表示proguard对代码进行迭代优化的次数，Android一般为5
-dontobfuscate # 关闭混淆
-keep class com.abt.proguard.*
-keep class com.abt.proguard.**
-keep class com.abt.proguard.*{*;}
-keep class com.abt.proguard.**{*;}
-keep class com.abt.proguard.MainActivity
-keep class com.abt.proguard.MainActivity{*;}
-keep class com.abt.proguard.bean.Guard{
    <init>; # 匹配所有构造器
    <fields>; # 匹配所有域
    <method>; # 匹配所有方法
}
-keep class com.abt.proguard.MainActivity{
      public <methods>; # 保持该类下所有的共有方法不被混淆
      public *; # 保持该类下所有的共有内容不被混淆
      private <methods>; # 保持该类下所有的私有方法不被混淆
      private *; # 保持该类下所有的私有内容不被混淆
      public <init>(java.lang.String); # 保持该类的String类型的构造方法
}
-keep class com.abt.proguard.bean.Guard{
    public <init>(String);
}
-keep class com.abt.proguard.ProGuard$Helper{*;}
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.view.View
# 保持ProguardTest类下test(String)方法不被混淆
-keepclassmembernames class com.abt.proguard.ProGuard{
    public void guard(java.lang.String);
}
-keepclasseswithmembernames class com.abt.proguard.ProGuard
# 保持native方法不被混淆
-keepclasseswithmembernames class * {
  native <methods>;
}
-keep class * implements Android.os.Parcelable {
    # 保持Parcelable不被混淆
    public static final Android.os.Parcelable$Creator *;
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
