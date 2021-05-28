package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.entity.TravelNotesDetail;
import com.chao.travel.guide.entity.View;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 11:00
 * desc    :-
 */
public interface TravelNotesDetailService {
    List<TravelNotesDetail> getByTravelNotesId(Integer id);

    List<TravelNotes> listTravelNotesByPraiseCount(Integer limitNum);

    List<TravelNotes> listTravelNotesByWatchCount(Integer limitNum);


}
