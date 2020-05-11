package com.example.result;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public static final String REQUEST_RESULT="REQUEST_RESULT";

    public void send(View view){
        Intent intent = new Intent(this,Activity2.class);
        startActivityForResult(intent,1);
    }
    @Override
    protected void onActivityResult(int requestCode,int resultCode,Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode==RESULT_OK);
        {
            Toast.makeText(this,Integer.toString(data.getIntExtra
                            (REQUEST_RESULT,10)), Toast.LENGTH_LONG).show();
        }
    }
}
