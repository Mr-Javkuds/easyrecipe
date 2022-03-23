package com.example.loundry;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserProfileChangeRequest;


public class ReegisterActivity extends AppCompatActivity {
    private EditText editname,editpassword,editemail,editpasswordconf;
    private Button btnRegister,btnLogin;
    private ProgressDialog progressDialog;
    private FirebaseAuth mAuth;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reegister);
        editname =findViewById(R.id.name);
        editemail =findViewById(R.id.email);
        editpassword =findViewById(R.id.password);
        editpasswordconf =findViewById(R.id.password_conf);
        btnRegister=findViewById(R.id.btn_Register);
        btnLogin=findViewById(R.id.btn_login);

        View decorView= getWindow().getDecorView();
        int uiOption= View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOption);

        if (getSupportActionBar()!=null){
            getSupportActionBar().hide();
        }

        // Initialize Firebase Auth
        mAuth = FirebaseAuth.getInstance();
        progressDialog =new ProgressDialog(ReegisterActivity.this);
        progressDialog.setTitle("loading...");
        progressDialog.setMessage("silahkan Tunggu");
        progressDialog.setCancelable(false);

        btnLogin.setOnClickListener(v->{
            finish();
        });

        btnRegister.setOnClickListener(v->{
            if (editname.getText().length()>0 && editemail.getText().length()>0 && editpasswordconf.getText().length()>0 && editpassword.getText().length()>0){
                if (editpassword.getText().toString().equals(editpasswordconf.getText().toString())){
                    register(editemail.getText().toString(),editname.getText().toString(),editpassword.getText().toString());
                }
                else {
                    Toast.makeText(getApplicationContext(),"silahkan masukan password yang sama",Toast.LENGTH_SHORT).show();
                }
            }else {
                Toast.makeText(getApplicationContext(),"silahkan masukan semua data",Toast.LENGTH_SHORT).show();
            }
        });
    }
    private void register(String email,String name,String password){
        progressDialog.show();
        mAuth.createUserWithEmailAndPassword(email, password)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {

                        if (task.isSuccessful() && task.getResult().getUser()!=null) {
                            FirebaseUser firebaseUser = task.getResult().getUser();
                            if (firebaseUser!=null){
                            UserProfileChangeRequest request = new UserProfileChangeRequest.Builder()
                                    .setDisplayName(name)
                                    .build();

                            firebaseUser.updateProfile(request).addOnCompleteListener(new OnCompleteListener<Void>() {
                                @Override
                                public void onComplete(@NonNull Task<Void> task) {
                                        reload();
                                    }
                                });
                            }else{
                                Toast.makeText(getApplicationContext(),"Register gagal",Toast.LENGTH_SHORT).show();
                            }
                        } else {
                          Toast.makeText(getApplicationContext(),task.getException().getLocalizedMessage(),Toast.LENGTH_SHORT).show();
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