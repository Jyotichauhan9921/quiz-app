package com.example.cafecoffee;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;

import android.os.Bundle;

public class MainActivity2 extends AppCompatActivity {
    Button b1,b2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        b1 = (Button) findViewById(R.id.button3);
        b2 = (Button) findViewById(R.id.button4);

        Toast.makeText(getApplicationContext(),"IN ACT2",Toast.LENGTH_SHORT).show();
        String s1 = getIntent().getStringExtra("key1");  //took data from secondactivity
        Toast.makeText(getApplicationContext(),s1,Toast.LENGTH_LONG).show();

        b1.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (v == b1) {
                   /*Intent in=getIntent();
                   String s1 = in.getStringExtra("key1");  //took data from secondactivity*/

                    Intent intent=new Intent(MainActivity2.this,MainActivity3.class);
                     intent.putExtra("key2",s1) ;                                  //passing data to mainactivity3
                     startActivity(intent);


                }
            }
        });

        b2.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (v == b2) {
                     Intent intent=new Intent(MainActivity2.this,MainActivity.class);
                     startActivity(intent);

                }
            }
        });


    }
}