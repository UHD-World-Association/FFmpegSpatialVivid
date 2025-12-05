CURRENT_PATH=`pwd`
PATH="$CURRENT_PATH/../bin:$PATH" PKG_CONFIG_PATH="$CURRENT_PATH/ffmpeg_build/lib/pkgconfig" ./configure \
	--prefix="$CURRENT_PATH/ffmpeg_build" \
	--pkg-config-flags="--static" \
	--extra-cflags="-I$CURRENT_PATH/ffmpeg_build/include " \
	--extra-ldflags="-L$CURRENT_PATH/ffmpeg_build/lib" \
	--extra-libs="-lpthread -lm " \
	--bindir="$CURRENT_PATH/../bin" \
	--enable-nonfree \
	--enable-gpl \
	--disable-asm \
	--enable-libfreetype  && \
	PATH="$CURRENT_PATH/bin:$PATH" make && \
	hash -r
