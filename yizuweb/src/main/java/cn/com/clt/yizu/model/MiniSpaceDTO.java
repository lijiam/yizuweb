package cn.com.clt.yizu.model;

import java.util.Arrays;

/**
 * @author ccj
 * @description
 * @time 2018-03-30-13:21
 */
public class MiniSpaceDTO {
    private String selectedSchool;
    private String selectedSpace;
    private String[] selectedCity;
    private String selectedActivity;
    private String selectedPeople;
    private String City;
    private String Province;

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getProvince() {
        return Province;
    }

    public void setProvince(String province) {
        Province = province;
    }

    public String getSelectedSchool() {
        return selectedSchool;
    }

    public void setSelectedSchool(String selectedSchool) {
        this.selectedSchool = selectedSchool;
    }

    public String getSelectedSpace() {
        return selectedSpace;
    }

    public void setSelectedSpace(String selectedSpace) {
        this.selectedSpace = selectedSpace;
    }

    public String[] getSelectedCity() {
        return selectedCity;
    }

    public void setSelectedCity(String[] selectedCity) {
        this.selectedCity = selectedCity;
    }

    public String getSelectedActivity() {
        return selectedActivity;
    }

    public void setSelectedActivity(String selectedActivity) {
        this.selectedActivity = selectedActivity;
    }

    public String getSelectedPeople() {
        return selectedPeople;
    }

    public void setSelectedPeople(String selectedPeople) {
        this.selectedPeople = selectedPeople;
    }

    @Override
    public String toString() {
        return "MiniSpaceDTO{" +
                "selectedSchool='" + selectedSchool + '\'' +
                ", selectedSpace='" + selectedSpace + '\'' +
                ", selectedCity=" + Arrays.toString(selectedCity) +
                ", selectedActivity='" + selectedActivity + '\'' +
                ", selectedPeople='" + selectedPeople + '\'' +
                ", City='" + City + '\'' +
                ", Province='" + Province + '\'' +
                '}';
    }
}
