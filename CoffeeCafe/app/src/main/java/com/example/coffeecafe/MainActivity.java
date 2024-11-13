package com.example.coffeecafe;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Button;
import android.content.Intent;

public class MainActivity extends AppCompatActivity {

      TextView txt;
      Button bt;
     //ImageButton ib;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txt=(TextView)findViewById(R.id.heading);
       // ib=(ImageButton)findViewById(R.id.imageButton);
        bt=(Button)findViewById(R.id.button);

        bt.setOnClickListener((OnClickListener) this);
    }

    public void onClick(View v)
    {
        if(v == bt)
        {
             Intent intent=new Intent(MainActivity.this,SecondActivity.class);
             startActivity(intent);
        }
    }
}