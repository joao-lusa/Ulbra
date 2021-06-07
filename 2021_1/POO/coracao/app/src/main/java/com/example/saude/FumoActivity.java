package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class FumoActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fumo);
    }

    public void Btn5(View view){
        Intent intent = new Intent(getApplicationContext(), PressaoActivity.class);
        startActivity(intent);
    }

    public void onClickFumo(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultFumo = 0;

        switch (view.getId()) {
            case R.id.Fumo1:
                if (checked) {
                    resultFumo = 0;
                }
                break;
            case R.id.Fumo2:
                if (checked) {
                    resultFumo = 1;
                }
                break;
            case R.id.Fumo3:
                if (checked) {
                    resultFumo = 2;
                }
                break;
            case R.id.Fumo4:
                if (checked) {
                    resultFumo = 4;
                }
                break;
            case R.id.Fumo5:
                if (checked) {
                    resultFumo = 6;
                }
                break;
            case R.id.Fumo6:
                if (checked) {
                    resultFumo = 10;
                }
                break;
        }
    }
}