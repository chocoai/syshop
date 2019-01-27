package com.sy.shop.commons.interfaces;

import org.springframework.beans.factory.annotation.Autowired;

public abstract class ControllerInterface<S> {

    @Autowired
    protected S service;

}
