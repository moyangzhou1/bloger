package com.myz.bloger.domain;

import java.util.Objects;

/**
 * @author: mr.mo
 * @description
 * @date: 2018/9/10
 */

public class User {

    private String flag;
    private String name;

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(flag, user.flag) &&
                Objects.equals(name, user.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(flag, name);
    }
}
