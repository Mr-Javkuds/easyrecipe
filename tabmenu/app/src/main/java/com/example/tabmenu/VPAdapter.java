package com.example.tabmenu;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

@SuppressWarnings("deprecation")
public class VPAdapter extends FragmentPagerAdapter {
    public VPAdapter(@NonNull FragmentManager fm,int behavior) {
        super(fm, behavior);
    }

    @NonNull
    @Override
    public Fragment getItem(int position){
        return null;
    }
    @Override
    public int getCount(){
     return (0);
    }
}
