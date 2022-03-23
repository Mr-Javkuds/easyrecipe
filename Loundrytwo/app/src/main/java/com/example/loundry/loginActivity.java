package com.example.loundry;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class loginActivity extends AppCompatActivity {

    private EditText editEmail,editpassword;
    private Button btnLogin,btnRegister;
    private FirebaseAuth mAuth;
    private ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        editEmail =findViewById(R.id.email);
        editpassword =findViewById(R.id.password);
        btnLogin =findViewById(R.id.btn_login);
        btnRegister =findViewById(R.id.btn_Register);

        View decorView= getWindow().getDecorView();
        int uiOption= View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOption);

        if (getSupportActionBar()!=null){
            getSupportActionBar().hide();
        }


        mAuth = FirebaseAuth.getInstance();
        progressDialog =new ProgressDialog(loginActivity.this);
        progressDialog.setTitle("loading...");
        progressDialog.setMessage("silahkan Tunggu");
        progressDialog.setCancelable(false);

        btnRegister.setOnClickListener(view ->{
            startActivity(new Intent(getApplicationContext(),ReegisterActivity.class));
        });

        btnLogin.setOnClickListener(view -> {
            progressDialog.show();
            if (editEmail.getText().length()>0 && editpassword.getText().length()>0)
            {
               login(editEmail.getText().toString(),editpassword.getText().toString());
            }else{
                Toast.makeText(getApplicationContext(),"silahkan isi data",Toast.LENGTH_SHORT).show();
            }
        });
    }
    private  void login (String email,String password){
        mAuth.signInWithEmailAndPassword(email, password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
            if (task.isSuccessful() && task.getResult() !=null ){
                if (task.getResult().getUser()!=null){
                    reload();
                }else{
                    Toast.makeText(getApplicationContext(),"Login gagal",Toast.LENGTH_SHORT).show();
                }
            }else{
                Toast.makeText(getApplicationContext(),"Login gagal",Toast.LENGTH_SHORT).show();
            }

            }
        });
    }

    private void reload(){
        startActivity(new Intent(getApplicationContext(),MainActivity.class));
    }
    @Override
    public void onStart() {
        super.onStart();
        // Check if user is signed in (non-null) and update UI accordingly.
        FirebaseUser currentUser = mAuth.getCurrentUser();
        if(currentUser != null){
            reload();
        }
    }
}