FROM 999eagle/docker-godot-build-env

RUN	cd /build/godot-src/src && \
	scons platform=server target=release_debug tools=yes bits=64 module_mono_enabled=yes mono_glue=no && \
	bin/godot_server.server.opt.tools.64.mono --generate-mono-glue modules/mono/glue
