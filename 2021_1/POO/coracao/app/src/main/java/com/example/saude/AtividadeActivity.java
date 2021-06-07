package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class AtividadeActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_atividade);

    }

    public void Btn4(View view){
        Intent intent = new Intent(getApplicationContext(), FumoActivity.class);
        startActivity(intent);
    }

    public void onClickAtividade(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultAtividade = 0;

        switch (view.getId()) {
            case R.id.Atividade1:
                if (checked) {
                    resultAtividade = 1;
                }
            break;
            case R.id.Atividade2:
                if (checked) {
                    resultAtividade = 2;
                }
            break;
            case R.id.Atividade3:
                if (checked) {
                    resultAtividade = 3;
                }
            break;
            case R.id.Atividade4:
                if (checked) {
                    resultAtividade = 4;
                }
                break;
            case R.id.Atividade5:
                if (checked) {
                    resultAtividade = 6;
                }
            break;
            case R.id.Atividade6:
                if (checked) {
                    resultAtividade = 7;
                }
            break;
        }
    }
}