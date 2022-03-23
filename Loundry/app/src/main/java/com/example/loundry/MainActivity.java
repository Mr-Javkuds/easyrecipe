package com.example.loundry;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class MainActivity extends AppCompatActivity {

    private FirebaseUser firebaseUser;
    private TextView textName;
    private Button btnlogout;

    public MainActivity() {
    }

    @SuppressLint("SetTextI18n")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        View decorView= getWindow().getDecorView();
        int uiOption= View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOption);

        if (getSupportActionBar()!=null){
            getSupportActionBar().hide();
        }

        setContentView(R.layout.activity_main);
       textName = findViewById(R.id.name);
       firebaseUser = FirebaseAuth.getInstance().getCurrentUser();
       btnlogout =findViewById(R.id.btn_logout);

        if (firebaseUser!=null){
        textName.setText(firebaseUser.getDisplayName());
        }else{
            textName.setText("Login gagal");
        }
        btnlogout.setOnClickListener(view ->{
            FirebaseAuth.getInstance().signOut();
            startActivity(new Intent(getApplicationContext(),loginActivity.class));
            finish();
        });
    }
}