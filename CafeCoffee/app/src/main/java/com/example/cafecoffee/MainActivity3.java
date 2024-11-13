package com.example.cafecoffee;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;


public class MainActivity3 extends AppCompatActivity {

    EditText et;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        et=(EditText) findViewById(R.id.editTextTextMultiLine);
        String st=getIntent().getStringExtra("key2");
        et.setText(st);
    }
}