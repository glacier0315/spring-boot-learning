package com.glacier.limiter;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.context.expression.MethodBasedEvaluationContext;
import org.springframework.core.DefaultParameterNameDiscoverer;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.TypedValue;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.util.StringUtils;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * date 2024-01-16 22:45
 * key 解析
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class RateLimiterKeyProvider {
    public String getKey(JoinPoint joinPoint, RateLimiter rateLimiter) {
        Method method = getMethod(joinPoint);
        List<String> definitionKeys = getSpelDefinitionKey(rateLimiter.keys(), method, joinPoint.getArgs());
        List<String> keyList = new ArrayList<>(definitionKeys);
        return StringUtils.collectionToDelimitedString(keyList, ".", "", "");
    }

    private Method getMethod(JoinPoint joinPoint) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        if (method.getDeclaringClass().isInterface()) {
            try {
                method = joinPoint.getTarget().getClass().getDeclaredMethod(signature.getName(),
                        method.getParameterTypes());
            } catch (Exception e) {
                log.error(null, e);
            }
        }
        return method;
    }

    private List<String> getSpelDefinitionKey(String[] definitionKeys, Method method, Object[] parameterValues) {
        List<String> definitionKeyList = new ArrayList<>();
        SpelExpressionParser parser = new SpelExpressionParser();

        EvaluationContext context = new MethodBasedEvaluationContext(
                TypedValue.NULL,
                method,
                parameterValues,
                new DefaultParameterNameDiscoverer());

        for (String definitionKey : definitionKeys) {
            if (definitionKey != null && !definitionKey.isEmpty()) {
                String key = parser.parseExpression(definitionKey).getValue(context, String.class);
                definitionKeyList.add(key);
            }
        }
        return definitionKeyList;
    }
}
