package com.glacier.flux.service.impl;

import com.glacier.flux.domian.FileRecord;
import com.glacier.flux.repository.FileRecordRepository;
import com.glacier.flux.service.FileRecordService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

/**
 * date 2024-02-08 14:00
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class FileRecordServiceImpl implements FileRecordService {
    @Resource
    private FileRecordRepository fileRecordRepository;

    @Override
    public Mono<FileRecord> save(FileRecord fileRecord) {
        return fileRecordRepository.save(fileRecord);
    }

    @Override
    public Flux<FileRecord> findAll() {
        return fileRecordRepository.findAll();
    }

    @Override
    public Mono<FileRecord> findById(long id) {
        return fileRecordRepository.findById(id);
    }
}
