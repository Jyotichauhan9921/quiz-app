package com.example.coffeecafe;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.content.Intent;
import android.widget.TextView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ViewFlipper;
import android.os.Bundle;

public class SecondActivity extends AppCompatActivity {
    TextView tview;
    Button proceed;
    Button prev,next;
    ViewFlipper vf;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        tview=(TextView)findViewById(R.id.textView);
        vf=(ViewFlipper) findViewById(R.id.ViewFlipper);
       proceed=(Button)findViewById(R.id.button2);
       prev=(Button)findViewById(R.id.button7);
        next=(Button)findViewById(R.id.button8);

        proceed.setOnClickListener((OnClickListener) this);
       prev.setOnClickListener((OnClickListener) this);
        next.setOnClickListener((OnClickListener) this);
    }
    public void onClick(View v) {
       if(v == proceed)
        {
            //Intent intent=new Intent(SecondActivity.this,ThirdActivity.class);
            //startActivity(intent);
        }else if(v == prev)
        {
            vf.showPrevious();
        }else if(v == next)
        {
            vf.showNext();
        }

    }
}