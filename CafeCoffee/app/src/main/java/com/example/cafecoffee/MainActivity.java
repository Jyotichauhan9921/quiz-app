package com.example.cafecoffee;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Button;
import android.content.Intent;


public class MainActivity extends AppCompatActivity {
    TextView txt;
    Button bt;
    ImageView iv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txt = (TextView) findViewById(R.id.CafeCoffee);
        iv = (ImageView) findViewById(R.id.imageView3);
        bt = (Button) findViewById(R.id.button);

        bt.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (v == bt) {
                    Intent intent=new Intent(MainActivity.this,SecondActivity.class);
                    startActivity(intent);
                }
            }
        });

    }
}
