package com.example.cafecoffee;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Button;
import android.widget.Toast;
import android.widget.ViewFlipper;
import android.widget.ImageView;
import android.content.Intent;



import android.os.Bundle;

public class SecondActivity extends AppCompatActivity {
    TextView tview;
    Button proceed;
    Button prev,next;
    ViewFlipper vf;
    ImageView i1,i2,i3;
    int sum=0;
    String oname="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        tview=(TextView)findViewById(R.id.textView);
        proceed=(Button)findViewById(R.id.button2);
        vf=(ViewFlipper) findViewById(R.id.viewFlipper);
        i1=(ImageView)findViewById(R.id.iv1);
        i2=(ImageView)findViewById(R.id.iv2);
        i3=(ImageView)findViewById(R.id.iv3);
        prev=(Button)findViewById(R.id.prev);
        next=(Button)findViewById(R.id.next);


        proceed.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (v == proceed) {

                    Intent intent=new Intent(SecondActivity.this,MainActivity2.class);
                    intent.putExtra("key1",oname);
                   // Toast.makeText(getApplicationContext(),oname,Toast.LENGTH_LONG).show();
                     startActivity(intent);
                }
            }
        });

        prev.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (v == prev) {
                          vf.showPrevious();
                }
            }
        });

        next.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (v == next) {
                      vf.showNext();
                }
            }
        });

        i1.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"CAPUCHINO FOR Rs.200",Toast.LENGTH_LONG).show();
                sum=200;
                oname="CAPUCHINO";
            }
        });

        i2.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"AMERICANO FOR Rs.250",Toast.LENGTH_LONG).show();
                sum=250;
                oname="AMERICANO";
            }
        });

        i3.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"LATTE FOR Rs.280",Toast.LENGTH_SHORT).show();
                sum=280;
                oname="LATTE";
            }
        });



    }
}
