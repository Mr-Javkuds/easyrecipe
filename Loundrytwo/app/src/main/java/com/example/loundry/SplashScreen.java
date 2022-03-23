package com.example.loundry;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;

public class SplashScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);

        View decorView= getWindow().getDecorView();
        int uiOption= View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOption);

        if (getSupportActionBar()!=null){
            getSupportActionBar().hide();
        }

        new Handler().postDelayed(() -> startActivity(new Intent(SplashScreen.this,loginActivity.class)),1500);

    }
}