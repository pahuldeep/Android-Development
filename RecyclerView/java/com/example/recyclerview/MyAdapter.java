package com.example.recyclerview;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;

import java.util.List;

class MyAdapter extends Adapter<MyAdapter.MyViewHolder> {
    private List<String> nameList;

    public MyAdapter(List<String> list){
        nameList = list;
    }
    @Override
    public MyAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View view = inflater.inflate(R.layout.item,parent,false);
        MyViewHolder myviewholder = new MyViewHolder(view);
        return myviewholder;
    }
    public void remove(int position){
        nameList.remove(position);
        notifyItemRemoved(position);
    }

    @Override
    public void onBindViewHolder(@NonNull MyAdapter.MyViewHolder holder, final int position) {
        final String name = nameList.get(position);
        holder.textView.setText(name);
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                remove(position);
            }
        });
    }
    @Override
    public int getItemCount() {
        if(nameList == null){
            return 0;
        }
        else{
            return nameList.size();
        }
    }
    public class MyViewHolder extends RecyclerView.ViewHolder {

        public TextView textView;

         public MyViewHolder(View itemView) {
            super(itemView);
            textView = itemView.findViewById(R.id.textView);
        }
    }
}
