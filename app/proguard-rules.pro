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
# Disable the warnings of using dynamic method call in common library.
-dontnote com.android.gallery3d.common.*

# Keep all classes extended from com.android.gallery3d.common.Entry
# Since we annotate on the fields and use reflection to create SQL
# according to those field.

-keep class * extends com.android.gallery3d.common.Entry {
    @com.android.gallery3d.common.Entry$Column <fields>;
}

# ctors of subclasses of CameraPreference are called with Java reflection.
-keep class * extends com.android.camera.CameraPreference {
  <init>(...);
}

-keep class com.android.camera.CameraActivity {
  public boolean isRecording();
  public long getAutoFocusTime();
  public long getShutterLag();
  public long getShutterToPictureDisplayedTime();
  public long getPictureDisplayedToJpegCallbackTime();
  public long getJpegCallbackFinishTime();
  public long getCaptureStartTime();
}

-keep class com.android.camera.VideoModule {
  public void onCancelBgTraining(...);
  public void onProtectiveCurtainClick(...);
}

-keep class * extends android.app.Activity {
  @com.android.camera.OnClickAttr <methods>;
}

-keep class com.android.camera.CameraHolder {
  public static void injectMockCamera(...);
}

# Disable the warnings of using dynamic method calls in EffectsRecorder
-dontnote com.android.camera.EffectsRecorder

# Required for ActionBarSherlock
-keep class android.support.v4.app.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep class com.actionbarsherlock.** { *; }
-keep interface com.actionbarsherlock.** { *; }
-keepattributes *Annotation*

# Required for JobIntentService
-keep class androidx.core.app.CoreComponentFactory { *; }

# Required for mp4parser
-keep public class * implements com.coremedia.iso.boxes.Box

#-assumenosideeffects junit.framework.Assert {
#*;
#}

# For unit testing:

# - Required for running exif tests on userdebug
-keep class com.android.gallery3d.exif.ExifTag { *; }
-keep class com.android.gallery3d.exif.ExifData { *; }
-keep class com.android.gallery3d.exif.ExifInterface { *; }
-keepclassmembers class com.android.gallery3d.exif.Util {
  *** closeSilently(...);
}

# - Required for running blobcache tests on userdebug
-keep class com.android.gallery3d.common.BlobCache { *; }

# - Required for running glcanvas tests on userdebug
-keep class com.android.gallery3d.ui.GLPaint { *; }
-keep class com.android.gallery3d.ui.GLCanvas { *; }
-keep class com.android.gallery3d.glrenderer.GLPaint { *; }
-keep class com.android.gallery3d.glrenderer.GLCanvas { *; }
-keep class com.android.gallery3d.ui.GLView { *; }
-keepclassmembers class com.android.gallery3d.util.IntArray {
  *** toArray(...);
}
-keep class com.android.gallery3d.util.ProfileData { *; }

# - Required for running jpeg stream tests on userdebug
-keep class com.android.gallery3d.jpegstream.JPEGOutputStream { *; }
-keep class com.android.gallery3d.jpegstream.JPEGInputStream { *; }
-keep class com.android.gallery3d.jpegstream.StreamUtils { *; }


