UWA 3DGS glb encapsulation/decapsulation tools v0.2 release:

The following 3 files are used to test UWA 3DGS tools which can encapsulate/decapsulate 
UWA 3DGS glb files into/from mp4 and heic stream files.

1.input.mp4    2408767 bytes  5eabb7183d2249c654f16accd3b3ad0a
2.input.heic     42283 bytes  5760ad68f197952951b3bf55244e3779
3.encoded.glb  2427360 bytes  0f991cf56ce12814abd7e109f38e86f2

Test commands:
1).encapsulation command:
$ ./ffmpeg -y -i input.mp4 -glb_filename encoded.glb -c:v copy out.mp4
$ ./ffmpeg_g -y -i input.heic -glb_filename encoded.glb  -c:v copy out.heic

2).decapsulation command:
$ ./ffprobe -show_format out.mp4
$ ./ffprobe -show_format out.heic  


Note 1: The 3 test files can be downloaded via: https://theuwa.com/tech/UWA_3DGS_test_files/UWA3DGS_test_files_v0.2.tar.gz
        if you can't download it, please write to support@theuwa.com
Note 2: The extracted glb file name is "out_last_idat.glb" which should be identical to original encoded.glb file.
