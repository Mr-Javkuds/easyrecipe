package com.example.intent;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);

        Button btnfirstActivity=findViewById(R.id.first_activity);
        btnfirstActivity.setOnClickListener(view -> {
            Intent intent=new Intent(SecondActivity.this,MainActivity.class);
            startActivity(intent);
        });


    }
}