<<<<<<< HEAD
# Builds a .zip file for loading with BMBF
$NDKPath = Get-Content $PSScriptRoot/ndkpath.txt

$buildScript = "$NDKPath/build/ndk-build"
if (-not ($PSVersionTable.PSEdition -eq "Core")) {
    $buildScript += ".cmd"
}

& $buildScript NDK_PROJECT_PATH=$PSScriptRoot APP_BUILD_SCRIPT=$PSScriptRoot/Android.mk NDK_APPLICATION_MK=$PSScriptRoot/Application.mk

Compress-Archive -Path "./libs/arm64-v8a/libRedBar_0_1_0.so", "./libs/arm64-v8a/libquestui.so", "./libs/arm64-v8a/libcustom-types.so", "./libs/arm64-v8a/libbeatsaber-hook_1_0_9.so", "./libs/arm64-v8a/libcodegen_0_5_3.so", "./bmbfmod.json" -DestinationPath "./RedBar_v1.3.0.zip" -Update
=======
# Builds a .zip file for loading with BMBF
$NDKPath = Get-Content $PSScriptRoot/ndkpath.txt

$buildScript = "$NDKPath/build/ndk-build"
if (-not ($PSVersionTable.PSEdition -eq "Core")) {
    $buildScript += ".cmd"
}

& $buildScript NDK_PROJECT_PATH=$PSScriptRoot APP_BUILD_SCRIPT=$PSScriptRoot/Android.mk NDK_APPLICATION_MK=$PSScriptRoot/Application.mk

Compress-Archive -Path "./libs/arm64-v8a/libRedBar_0_1_0.so", "./libs/arm64-v8a/libquestui.so", "./libs/arm64-v8a/libcustom-types.so", "./libs/arm64-v8a/libbeatsaber-hook_1_0_9.so", "./libs/arm64-v8a/libcodegen_0_5_3.so", "./bmbfmod.json" -DestinationPath "./RedBar_v1.3.0.zip" -Update
>>>>>>> 563ba0a5a0779655fd66c310aa8ddd4fd616c422