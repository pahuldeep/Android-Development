package com.example.activities;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void google(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse("http://google.com"));
        startActivity(intent);
    }
    public void Second(View view){
        Intent intent = new Intent(this,SecondActivity.class);
        startActivity(intent);
    }
    public void transfer(View view){
        EditText editText = findViewById(R.id.editText);
        String text = editText.getText().toString();
        Intent intent = new Intent(this,SecondActivity.class);
        intent.putExtra(Intent.EXTRA_TEXT,text);
        startActivity(intent);
    }
}
