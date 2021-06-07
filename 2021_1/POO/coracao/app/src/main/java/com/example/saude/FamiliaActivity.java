package com.example.saude;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;

public class FamiliaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_familia);

    }

    public void Btn6(View view){
        Intent intent = new Intent(getApplicationContext(), ColesterolActivity.class);
        startActivity(intent);
    }

    public void onClickFml(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        int resultFml = 0;

        switch (view.getId()) {
            case R.id.Fml1:
                if (checked) {
                    resultFml = 1;
                }
                break;
            case R.id.Fml2:
                if (checked) {
                    resultFml = 2;
                }
                break;
            case R.id.Fml3:
                if (checked) {
                    resultFml = 3;
                }
                break;
            case R.id.Fml4:
                if (checked) {
                    resultFml = 4;
                }
                break;
            case R.id.Fml5:
                if (checked) {
                    resultFml = 6;
                }
                break;
            case R.id.Fml6:
                if (checked) {
                    resultFml = 8;
                }
                break;
        }
    }
}