package com.galcier.event;

import org.springframework.context.ApplicationEvent;
import org.springframework.core.ResolvableType;
import org.springframework.core.ResolvableTypeProvider;

/**
 * date 2023-12-16 13:10
 * 由于类型擦除,不是所有的事件类型都是相同的结构,为了保证事件监听能获取正确的实体类型
 *
 * @author glacier
 * @version 1.0
 */
public class CustomEvent<T> extends ApplicationEvent implements ResolvableTypeProvider {

    public CustomEvent(T entity) {
        super(entity);
    }

    @Override
    public ResolvableType getResolvableType() {
        return ResolvableType.forClassWithGenerics(getClass(), ResolvableType.forInstance(getSource()));
    }
}
