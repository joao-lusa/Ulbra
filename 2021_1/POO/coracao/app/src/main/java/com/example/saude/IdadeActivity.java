package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;

public class IdadeActivity extends AppCompatActivity {

    public int resultIdade;
    Button Salvar1;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_idade);


    }

    public void onClickSalva(View view){
        Intent FinishActivity = new Intent(getApplicationContext(), FinishActivity.class);
        Bundle parametros = new Bundle();
        parametros.putInt("Idade", resultIdade);

        FinishActivity.putExtras(parametros);
    }

    public void onClickIdade(View view){
        boolean checked = ((RadioButton) view).isChecked();

        switch (view.getId()){
            case R.id.Idade1:
                if(checked) {
                    resultIdade = 1;
                }
            break;
            case R.id.Idade2:
                if(checked) {
                    resultIdade = 2;
                }
            break;
            case R.id.Idade3:
                if(checked) {
                    resultIdade = 3;
                }
            break;
            case R.id.Idade4:
                if(checked) {
                    resultIdade = 4;
                }
            break;
            case R.id.Idade5:
                if(checked) {
                    resultIdade = 6;
                }
            break;
            case R.id.Idade6:
                if(checked) {
                    resultIdade = 8;
                }
            break;
        }
    }
    public void Btn1(View view){
        Intent intent = new Intent(getApplicationContext(), SexoActivity.class);
        startActivity(intent);
    }
}