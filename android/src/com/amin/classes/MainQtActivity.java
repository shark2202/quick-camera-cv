package com.amin.classes;

//
public class MainQtActivity extends org.qtproject.qt5.android.bindings.QtActivity{
//    /**
//    *打开系统相机拍照并返回相片
//    */
//    public static void openSystemCamera(QtActivity activity){
//        try {
//                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");//开始拍照
//                m_instance.mPhotoPath = m_instance.getSDPath()+"/AirLink/"+ m_instance.getPhotoFileName();//设置图片文件路径，getSDPath()和getPhotoFileName()具体实现在下面

//                m_instance.mPhotoFile = new File(m_instance.mPhotoPath);
//                if (!m_instance.mPhotoFile.exists()) {
//                        m_instance.mPhotoFile.createNewFile();//创建新文件
//                }
//                intent.putExtra(MediaStore.EXTRA_OUTPUT,//Intent有了图片的信息
//                                Uri.fromFile(m_instance.mPhotoFile));
//                activity.startActivityForResult(intent, CAMERA_RESULT);//跳转界面传回拍照所得数据

//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//    public String getSDPath(){
//        File sdDir = null;
//        boolean sdCardExist = Environment.getExternalStorageState()
//                        .equals(android.os.Environment.MEDIA_MOUNTED);   //判断sd卡是否存在
//        if(sdCardExist)
//        {
//                sdDir = Environment.getExternalStorageDirectory();//获取目录
//        }
//        return sdDir.toString();

//    }

//    private String getPhotoFileName() {
//        Date date = new Date(System.currentTimeMillis());
//        SimpleDateFormat dateFormat = new SimpleDateFormat(
//                        "'IMG'_yyyyMMdd_HHmmss");
//        return dateFormat.format(date)  +".jpg";
//    }

//  @Override
//  protected void onActivityResult(int requestCode, int resultCode, Intent data) {
//      if (requestCode == CAMERA_RESULT) {
//            if(resultCode != RESULT_OK){
//                return;
//            }
////                makeToast(mPhotoPath);
//            //m_transImageToQt.OpenCameraGetImgPath(mPhotoPath);
//        }
//  }
}
