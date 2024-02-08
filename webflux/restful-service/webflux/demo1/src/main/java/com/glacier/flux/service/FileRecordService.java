package com.glacier.flux.service;

import com.glacier.flux.domian.FileRecord;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

/**
 * date 2024-02-08 14:00
 *
 * @author glacier
 * @version 1.0
 */
public interface FileRecordService {
    Mono<FileRecord> save(FileRecord fileRecord);

    Flux<FileRecord> findAll();

    Mono<FileRecord> findById(long id);
}
