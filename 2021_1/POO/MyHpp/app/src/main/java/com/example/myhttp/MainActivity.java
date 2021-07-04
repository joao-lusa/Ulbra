package com.example.myhttp;

import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.myhtpp.R;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ArrayList<Currencies> mCurrencies;
    ArrayAdapter<Currencies> mAdapter;

    ArrayList<Stocks> mStocks;
    ArrayAdapter<Stocks> mStocksAdapter;

    ListView mListCurrencies;
    ListView mListStocks;
    CurrenciesTask mTask;
    StocksTask mStocksTask;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mListCurrencies = findViewById(R.id.ListaCurrencies);
        mListStocks = findViewById(R.id.ListaStocks);


        buscar();
    }
    private void buscar(){
        if(mCurrencies==null && mStocks==null){
            mCurrencies= new ArrayList<Currencies>();
            mStocks = new ArrayList<Stocks>();
        }
        mAdapter= new CurrenciesAdapter(getApplicationContext(),mCurrencies);
        mListCurrencies.setAdapter(mAdapter);
        mStocksAdapter= new StocksAdapter(getApplicationContext(),mStocks);
        mListStocks.setAdapter(mStocksAdapter);

        if(mTask==null && mStocksTask==null){
            if (CurrenciesHttp.hasConexao(this)|| StocksHttp.hasConexao(this)){
                start();
            }else{
                Toast.makeText(getApplicationContext(),"Erro a buscar....",Toast.LENGTH_SHORT).show();
            }
        }else if(mTask.getStatus()==AsyncTask.Status.RUNNING||mStocksTask.getStatus()==AsyncTask.Status.RUNNING){
            Toast.makeText(getApplicationContext(),"....",Toast.LENGTH_SHORT).show();
        }

    }

    public void start(){
        if(mTask == null || mTask.getStatus()!= AsyncTask.Status.RUNNING && mStocksTask == null || mStocksTask.getStatus()!= AsyncTask.Status.RUNNING){
            mTask = new CurrenciesTask();
            mTask.execute();
            mStocksTask = new StocksTask();
            mStocksTask.execute();
        }
    }

    class StocksTask extends AsyncTask<Void,Void, ArrayList<Stocks>>{

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            Toast.makeText(getApplicationContext(),"Pronto....",Toast.LENGTH_SHORT).show();
        }

        @Override
        protected ArrayList<Stocks> doInBackground(Void... voids) {
            ArrayList<Stocks> financialList= StocksHttp.loadStocks();
            return financialList;
        }

        @Override
        protected void onPostExecute(ArrayList<Stocks> stocks) {
            super.onPostExecute(stocks);
            if (stocks!=null){
                mStocks.clear();
                mStocks.addAll(stocks);
                mStocksAdapter.notifyDataSetChanged();
            }else{
                Toast.makeText(getApplicationContext(),"Buscando...", Toast.LENGTH_LONG).show();
            }
        }
    }

    class CurrenciesTask extends AsyncTask<Void,Void, ArrayList<Currencies>>{

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            Toast.makeText(getApplicationContext(),"Pronto....",Toast.LENGTH_SHORT).show();
        }

        @Override
        protected ArrayList<Currencies> doInBackground(Void... voids) {
            ArrayList<Currencies> coinsList= CurrenciesHttp.loadCurrencies();
            return coinsList;
        }

        @Override
        protected void onPostExecute(ArrayList<Currencies> currencies) {
            super.onPostExecute(currencies);
            if (currencies!=null){
                mCurrencies.clear();
                mCurrencies.addAll(currencies);
                mAdapter.notifyDataSetChanged();
            }else{
                Toast.makeText(getApplicationContext(),"Buscando...", Toast.LENGTH_LONG).show();
            }
        }
    }



}