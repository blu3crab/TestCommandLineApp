# TestCommandLineApp
 Building an Android* Command-Line Application Using the NDK Build Tools

Demonstrates the article:
https://software.intel.com/content/www/us/en/develop/articles/building-an-android-command-line-application-using-the-ndk-build-tools.html

Many modifications were made to the article's example as the article is:
- dated (2015)
- non-functional (more conceptual with missing pieces, etc.)

terminal command sequence for NDK build & run via adb
D:\TucDev\TestCommandLineApp\hola>set NDK_PROJECT_PATH=.
 
D:\TucDev\TestCommandLineApp\hola>ndk-build NDK_APPLICATION_MK=./Application.mk
[arm64-v8a] Compile++      : main.out <= main.cpp
[arm64-v8a] Executable     : main.out
[arm64-v8a] Install        : main.out => libs/arm64-v8a/main.out
 
adb push D:\TucDev\TestCommandLineApp\hola\obj\local\arm64-v8a\main.out /data/local/tmp
 
adb shell
$ cd /data/local/tmp
$ ls -l
$ chmod +x main.out
$ ./main.out
 
flame:/data/local/tmp $ ./main.out
<<<<hola NDK C++>>>

=========================archive==========================
D:\TucDev\TestCommandLineApp\hola>ndk-build NDK_APPLICATION_MK=./Application.mk
[arm64-v8a] Compile++      : main.out <= main.cpp
[arm64-v8a] Executable     : main.out
[arm64-v8a] Install        : main.out => libs/arm64-v8a/main.out
 
APP_ABI := arm64-v8a
APP_PLATFORM := android-30
APP_STL := c++_static
APP_BUILD_SCRIPT := Android.mk
 
D:\TucDev\TestCommandLineApp\hola>cd obj
 
D:\TucDev\TestCommandLineApp\hola\obj>cd local
 
D:\TucDev\TestCommandLineApp\hola\obj\local>cd arm64-v8a
 
D:\TucDev\TestCommandLineApp\hola\obj\local\arm64-v8a>ls
main.out  objs
 
D:\TucDev\TestCommandLineApp\hola\obj\local\arm64-v8a>D:\Tools\Android\sdk\platform-tools\adb push main.out /data/local/tmp
main.out: 1 file pushed, 0 skipped. 45.2 MB/s (5088072 bytes in 0.107s)
 
D:\TucDev\TestCommandLineApp\hola\obj\local\arm64-v8a>D:\Tools\Android\sdk\platform-tools\adb shell
flame:/ $ cd /data/local/tmp
flame:/data/local/tmp $ ls -l
total 9819
-rw-rw-rw- 1 shell shell 4945497 1969-12-31 19:00 apk1615393940619.apk
-rw-rw-rw- 1 shell shell 5088072 2021-06-08 17:05 main.out
drwxrwxrwx 5 shell shell    3488 2021-04-06 08:46 perfd
-rw-rw-rw- 1 shell shell       7 1969-12-31 19:00 vysor.pwd
flame:/data/local/tmp $ chmod +x main.out
flame:/data/local/tmp $ ls -l
total 9819
-rw-rw-rw- 1 shell shell 4945497 1969-12-31 19:00 apk1615393940619.apk
-rwxrwxrwx 1 shell shell 5088072 2021-06-08 17:05 main.out
drwxrwxrwx 5 shell shell    3488 2021-04-06 08:46 perfd
-rw-rw-rw- 1 shell shell       7 1969-12-31 19:00 vysor.pwd
flame:/data/local/tmp $ ./main.out
hola CLI C++
