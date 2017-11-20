LOCAL_PATH := $(call my-dir)

$(info $(LOCAL_PATH) START >)

include $(CLEAR_VARS)

LOCAL_MODULE    := ffmpeg
LOCAL_SRC_FILES := ffmpeg.c ffmpeg_opt.c cmdutils.c ffmpeg_filter.c
LOCAL_LDLIBS := -llog
LOCAL_SHARED_LIBRARIES := libavformat \
                        libavcodec \
                        libswscale \
                        libavutil \
                        libswresample \
                        libavfilter

include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/ffmpeg-source/Android.mk
