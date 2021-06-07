package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class FinishActivity extends AppCompatActivity {

    TextView test;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_finish);


    }
    public void onClick(View view){

        test = findViewById(R.id.teste);

        Intent intentRecebe = getIntent();
        Bundle parametros = intentRecebe.getExtras();

        int resultIdade = parametros.getInt("Idade");

        test.setText(resultIdade);

    }
}
