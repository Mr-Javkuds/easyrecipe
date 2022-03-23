package com.example.intent;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btnSecondActivity=findViewById(R.id.Button_Second_Activity);
         btnSecondActivity.setOnClickListener(view -> {
             Intent intent=new Intent(MainActivity.this,SecondActivity.class);
             startActivity(intent);
         });
    }
}