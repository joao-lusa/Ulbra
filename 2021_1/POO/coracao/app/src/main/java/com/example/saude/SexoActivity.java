package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class SexoActivity extends AppCompatActivity {

    View Btn2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sexo);
    }

    public void Btn2(View view){
        Intent intent = new Intent(getApplicationContext(), PesoActivity.class);
        startActivity(intent);
    }


    public void onClickSexo(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultSexo = 0;

        switch (view.getId()) {
            case R.id.Peso1:
                if (checked) {
                    resultSexo = 1;
                }
                break;
            case R.id.Sexo2:
                if (checked) {
                    resultSexo = 2;
                }
                break;
            case R.id.Sexo3:
                if (checked) {
                    resultSexo = 3;
                }
                break;
            case R.id.Sexo4:
                if (checked) {
                    resultSexo = 4;
                }
                break;
            case R.id.Sexo5:
                if (checked) {
                    resultSexo = 6;
                }
                break;
            case R.id.Sexo6:
                if (checked) {
                    resultSexo = 7;
                }
                break;
        }
    }
}