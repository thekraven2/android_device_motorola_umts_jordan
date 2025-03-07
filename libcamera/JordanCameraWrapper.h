#ifndef ANDROID_HARDWARE_JORDAN_CAMERA_WRAPPER_H
#define ANDROID_HARDWARE_JORDAN_CAMERA_WRAPPER_H

#include <camera/CameraHardwareInterface.h>

namespace android {

class JordanCameraWrapper : public CameraHardwareInterface {
public:
    virtual sp<IMemoryHeap> getPreviewHeap() const;
    virtual sp<IMemoryHeap> getRawHeap() const;

    virtual void        setCallbacks(notify_callback notify_cb,
                                     data_callback data_cb,
                                     data_callback_timestamp data_cb_timestamp,
                                     void *user);

    virtual void        enableMsgType(int32_t msgType);
    virtual void        disableMsgType(int32_t msgType);
    virtual bool        msgTypeEnabled(int32_t msgType);

    virtual status_t    startPreview();
    virtual bool        useOverlay();
    virtual status_t    setOverlay(const sp<Overlay> &overlay);
    virtual void        stopPreview();
    virtual bool        previewEnabled();

    virtual status_t    startRecording();
    virtual void        stopRecording();
    virtual bool        recordingEnabled();
    virtual void        releaseRecordingFrame(const sp<IMemory> &mem);

    virtual status_t    autoFocus();
    virtual status_t    cancelAutoFocus();
    virtual status_t    takePicture();
    virtual status_t    cancelPicture();
    virtual status_t    dump(int fd, const Vector<String16> &args) const;
    virtual status_t    setParameters(const CameraParameters& params);
    virtual CameraParameters  getParameters() const;
    virtual status_t    sendCommand(int32_t command, int32_t arg1,
                                    int32_t arg2);
    virtual void        release();

    static    sp<CameraHardwareInterface> createInstance(int cameraId);

private:
                        JordanCameraWrapper(int CameraId);
    virtual             ~JordanCameraWrapper();

    sp<CameraHardwareInterface> mMotoInterface;

    enum {
	CAM_UNKNOWN,
	CAM_SOC,
	CAM_BAYER
    } mCameraType;

    static wp<CameraHardwareInterface> singleton;
};

}; // namespace android

#endif
