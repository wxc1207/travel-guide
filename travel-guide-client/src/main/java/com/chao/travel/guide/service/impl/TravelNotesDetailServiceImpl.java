package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.entity.TravelNotesDetail;
import com.chao.travel.guide.mapper.TravelNotesDetailMapper;
import com.chao.travel.guide.service.TravelNotesDetailService;
import com.chao.travel.guide.service.TravelNotesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 11:01
 * desc    :-
 */
@Service
public class TravelNotesDetailServiceImpl implements TravelNotesDetailService {
    @Autowired
    private TravelNotesDetailMapper travelNotesDetailMapper;

    @Override
    public List<TravelNotesDetail> getByTravelNotesId(Integer id) {


        return travelNotesDetailMapper.getByTravelNotesId(id);
    }

    @Override
    public List<TravelNotes> listTravelNotesByPraiseCount(Integer limitNum) {
        return null;
    }

    @Override
    public List<TravelNotes> listTravelNotesByWatchCount(Integer limitNum) {
        return null;
    }


}
