package com.amin.classes;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;



public class FirstActivity extends Activity {
   String msg = "Android : ";

   /** 当活动第一次被创建时调用 */
   @Override
   public void onCreate(Bundle savedInstanceState) {
      super.onCreate(savedInstanceState);
      //setContentView(R.layout.activity_main);
      Log.d(msg, "The onCreate() event");

      handler.sendEmptyMessageDelayed(0,3000);
   }

    private Handler handler = new Handler() {
      @Override
      public void handleMessage(Message msg) {
        getHome();
        super.handleMessage(msg);
      }
    };

    public void getHome(){
      Intent intent = new Intent(FirstActivity.this, MainQtActivity.class);
      startActivity(intent);
      finish();
    }

   /** 当活动即将可见时调用 */
   @Override
   protected void onStart() {
      super.onStart();
      Log.d(msg, "The onStart() event");
   }

   /** 当活动可见时调用 */
   @Override
   protected void onResume() {
      super.onResume();
      Log.d(msg, "The onResume() event");
   }

   /** 当其他活动获得焦点时调用 */
   @Override
   protected void onPause() {
      super.onPause();
      Log.d(msg, "The onPause() event");
   }

   /** 当活动不再可见时调用 */
   @Override
   protected void onStop() {
      super.onStop();
      Log.d(msg, "The onStop() event");
   }

   /** 当活动将被销毁时调用 */
   @Override
   public void onDestroy() {
      super.onDestroy();
      Log.d(msg, "The onDestroy() event");
   }
}
