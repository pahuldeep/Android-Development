package com.example.activities;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        TextView textView = findViewById(R.id.textView);
        if(getIntent() != null && getIntent().hasExtra(Intent.EXTRA_TEXT))
        {
            textView.setText(getIntent().getStringExtra(Intent.EXTRA_TEXT));
        }

    }
    public void Exit(View view){
        finish();
    }
}
