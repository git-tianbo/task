package com.mb.enity;

import org.springframework.stereotype.Component;

@Component
public class profession {
    private Integer id;

    private String img;

    private String professionName;

    private String introduce;

    private Byte entryBarriers;

    private Byte difficulty;

    private Byte periodOne;

    private Byte periodTwo;

    private Long sarcity;

    private String salaryOne;

    private String salaryTwo;

    private String salaryThree;

    private String prompt;

    private String pullIntroduce;

    private Integer deveId;

    private String developmentDirect;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getDevelopmentDirect() {
        return developmentDirect;
    }

    public void setDevelopmentDirect(String developmentDirect) {
        this.developmentDirect = developmentDirect;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName == null ? null : professionName.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public Byte getEntryBarriers() {
        return entryBarriers;
    }

    public void setEntryBarriers(Byte entryBarriers) {
        this.entryBarriers = entryBarriers;
    }

    public Byte getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Byte difficulty) {
        this.difficulty = difficulty;
    }

    public Byte getPeriodOne() {
        return periodOne;
    }

    public void setPeriodOne(Byte periodOne) {
        this.periodOne = periodOne;
    }

    public Byte getPeriodTwo() {
        return periodTwo;
    }

    public void setPeriodTwo(Byte periodTwo) {
        this.periodTwo = periodTwo;
    }

    public Long getSarcity() {
        return sarcity;
    }

    public void setSarcity(Long sarcity) {
        this.sarcity = sarcity;
    }

    public String getSalaryOne() {
        return salaryOne;
    }

    public void setSalaryOne(String salaryOne) {
        this.salaryOne = salaryOne;
    }

    public String getSalaryTwo() {
        return salaryTwo;
    }

    public void setSalaryTwo(String salaryTwo) {
        this.salaryTwo = salaryTwo;
    }

    public String getSalaryThree() {
        return salaryThree;
    }

    public void setSalaryThree(String salaryThree) {
        this.salaryThree = salaryThree;
    }

    public String getPrompt() {
        return prompt;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt == null ? null : prompt.trim();
    }


    public String getPullIntroduce() {
        return pullIntroduce;
    }

    public void setPullIntroduce(String pullIntroduce) {
        this.pullIntroduce = pullIntroduce;
    }

    public Integer getDeveId() {
        return deveId;
    }

    public void setDeveId(Integer deveId) {
        this.deveId = deveId;
    }
}