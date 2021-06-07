package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class ColesterolActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_colesterol);

    }

    public void Btn7(View view){
        Intent intent = new Intent(getApplicationContext(), FinishActivity.class);
        startActivity(intent);
    }

    public void onClickColesterol(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultColesterol = 0;

        switch (view.getId()) {
            case R.id.Colesterol1:
                if (checked) {
                    resultColesterol = 1;
                }
                break;
            case R.id.Colesterol2:
                if (checked) {
                    resultColesterol = 2;
                }
                break;
            case R.id.Colesterol3:
                if (checked) {
                    resultColesterol = 3;
                }
                break;
            case R.id.Colesterol4:
                if (checked) {
                    resultColesterol = 4;
                }
                break;
            case R.id.Colesterol5:
                if (checked) {
                    resultColesterol = 6;
                }
                break;
            case R.id.Colesterol6:
                if (checked) {
                    resultColesterol = 8;
                }
                break;
        }
    }
}