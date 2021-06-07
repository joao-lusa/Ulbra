package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class PressaoActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pressao);

    }

    public void Btn6(View view){
        Intent intent = new Intent(getApplicationContext(), FamiliaActivity.class);
        startActivity(intent);
    }

    public void onClickPressao(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultPressao = 0;

        switch (view.getId()) {
            case R.id.Pressao1:
                if (checked) {
                    resultPressao = 1;
                }
                break;
            case R.id.Pressao2:
                if (checked) {
                    resultPressao = 2;
                }
                break;
            case R.id.Pressao3:
                if (checked) {
                    resultPressao = 3;
                }
                break;
            case R.id.Pressao4:
                if (checked) {
                    resultPressao = 4;
                }
                break;
            case R.id.Pressao5:
                if (checked) {
                    resultPressao = 6;
                }
                break;
            case R.id.Pressao6:
                if (checked) {
                    resultPressao = 8;
                }
                break;
        }
    }
}