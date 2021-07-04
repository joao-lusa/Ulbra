    package com.example.myhttp;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.example.myhtpp.R;

import java.util.List;


public class StocksAdapter extends ArrayAdapter<Stocks>{

    public StocksAdapter(@NonNull Context context,  @NonNull List<Stocks> objects) {
        super(context, 0, objects);
    }


    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        Stocks financial = getItem(position);
        View listaStocks=convertView;
        if(convertView==null){
            listaStocks= LayoutInflater.from(getContext()).inflate(R.layout.stocks_item,null);
        }
        TextView name = listaStocks.findViewById(R.id.txtStock);
        TextView txtLocation = listaStocks.findViewById(R.id.txtLocation);
        TextView txtPoint = listaStocks.findViewById(R.id.txtPoint);
        TextView variacao = listaStocks.findViewById(R.id.txtVariacao);
        name.setText(financial.getName());
        txtLocation.setText(financial.getLocation());
        txtPoint.setText(financial.getPoints());
        variacao.setText(financial.getVariation());


        return listaStocks;
    }

}
