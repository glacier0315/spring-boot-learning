package com.glacier.flux.repository;

import com.glacier.flux.domian.FileRecord;
import org.springframework.data.r2dbc.repository.R2dbcRepository;
import org.springframework.stereotype.Repository;

/**
 * date 2024-02-08 13:15
 *
 * @author glacier
 * @version 1.0
 */
@Repository
public interface FileRecordRepository extends R2dbcRepository<FileRecord, Long> {
}
