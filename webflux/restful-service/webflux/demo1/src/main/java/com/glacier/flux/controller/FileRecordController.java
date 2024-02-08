package com.glacier.flux.controller;

import com.glacier.flux.domian.FileRecord;
import com.glacier.flux.service.FileRecordService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.codec.multipart.FilePart;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

/**
 * date 2024-02-08 13:15
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestController
public class FileRecordController {
    @Resource
    private FileRecordService fileRecordService;

    @PostMapping("/upload-files")
    public Mono<String> uploadFileWithoutEntity(@RequestPart("files") Flux<FilePart> filePartFlux) {
        return filePartFlux.flatMap(file -> file.transferTo(Paths.get(file.filename())))
                .then(Mono.just("OK"))
                .onErrorResume(error -> Mono.just("Error uploading files"));
    }

    @PostMapping("/upload-files-entity")
    public Mono<String> uploadFileWithEntity(@RequestPart("files") Flux<FilePart> filePartFlux) {
        return filePartFlux.flatMap(file -> {
                    String filename = "./tmp/" + System.currentTimeMillis() + "_" + file.filename();
                    return file.transferTo(Paths.get(filename))
                            .then(Mono.just(filename));
                })
                .collect(Collectors.toList())
                .flatMapMany(list -> fileRecordService.save(new FileRecord().setFilenames(list)))
                .then(Mono.just("OK"))
                .onErrorResume(error -> Mono.just("Error uploading files"));
    }

    @PostMapping("/add")
    public Mono<FileRecord> add(@RequestBody List<String> filenames) {
        FileRecord fileRecord = new FileRecord();
        fileRecord.setFilenames(filenames);
        return fileRecordService.save(fileRecord);
    }

    @GetMapping("/findAll")
    public Flux<FileRecord> findAll() {
        return fileRecordService.findAll();
    }

    @GetMapping("/findById/{id}")
    public Mono<FileRecord> findById(@PathVariable("id") long id) {
        return fileRecordService.findById(id)
                .onErrorResume(Mono::error);
    }

    @GetMapping("/print")
    public String print() {
        fileRecordService.findAll()
                .doOnNext((r) -> {
                    System.out.println("list" + r);
                })
                .subscribe();
        return "print";
    }
}
