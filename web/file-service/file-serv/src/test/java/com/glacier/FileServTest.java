package com.glacier;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/**
 * date 2024-01-02 15:56
 *
 * @author glacier
 * @version 1.0
 */
class FileServTest {

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void downloadFile1() {
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://localhost:8080/download1?text=" + System.currentTimeMillis();
        ResponseEntity<Resource> entity = restTemplate.postForEntity(url, null, Resource.class);
        try (InputStream in = Objects.requireNonNull(entity.getBody()).getInputStream();) {
            String s = new String(in.readAllBytes());
            System.out.println(s);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    //    @Test
    void downloadFile2() {
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://localhost:8080/download1?text=" + System.currentTimeMillis();
        // resource 接受流
        ResponseEntity<Resource> entity = restTemplate.exchange(url,
                HttpMethod.POST, HttpEntity.EMPTY, Resource.class);
        try (InputStream in = Objects.requireNonNull(entity.getBody()).getInputStream();) {
            String s = new String(in.readAllBytes());
            System.out.println(s);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
