package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class PesoActivity extends AppCompatActivity {

    View Btn3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_peso);
    }

    public void Btn3(View view){
        Intent intent = new Intent(getApplicationContext(), AtividadeActivity.class);
        startActivity(intent);
    }

    public void onClickPeso(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultPeso = 0;

        switch (view.getId()) {
            case R.id.Peso1:
                if (checked) {
                    resultPeso = 0;
                }
                break;
            case R.id.Peso2:
                if (checked) {
                    resultPeso = 1;
                }
                break;
            case R.id.Peso3:
                if (checked) {
                    resultPeso = 2;
                }
                break;
            case R.id.Peso4:
                if (checked) {
                    resultPeso = 3;
                }
                break;
            case R.id.Peso5:
                if (checked) {
                    resultPeso = 5;
                }
                break;
            case R.id.Peso6:
                if (checked) {
                    resultPeso = 7;
                }
                break;
        }
    }
}