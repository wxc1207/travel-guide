package com.chao.travel.guide.entity;

public class TravelNotesDetail {
    private Integer id;

    private Integer travelNotesId;

    private String title;

    private String detail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTravelNotesId() {
        return travelNotesId;
    }

    public void setTravelNotesId(Integer travelNotesId) {
        this.travelNotesId = travelNotesId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }
}