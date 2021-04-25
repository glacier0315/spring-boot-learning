package com.glacier.easyexcel.converter;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.CellData;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.property.ExcelContentProperty;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author glacier
 * @version 1.0
 * date 2020-09-06 19:49
 */
public class LocalDateTimeConverter implements Converter<LocalDateTime> {

    public static final String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";

    @Override
    public Class<LocalDateTime> supportJavaTypeKey() {
        return LocalDateTime.class;
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        return CellDataTypeEnum.STRING;
    }

    @Override
    public LocalDateTime convertToJavaData(
            CellData cellData,
            ExcelContentProperty contentProperty,
            GlobalConfiguration globalConfiguration) throws Exception {

        return LocalDateTime.parse(
                cellData.getStringValue(),
                DateTimeFormatter.ofPattern(
                        this.getFormat(contentProperty)));
    }

    @Override
    public CellData<?> convertToExcelData(
            LocalDateTime value,
            ExcelContentProperty contentProperty,
            GlobalConfiguration globalConfiguration) throws Exception {
        return new CellData<>(
                DateTimeFormatter.ofPattern(
                        this.getFormat(contentProperty)
                ).format(value));

    }

    private String getFormat(ExcelContentProperty contentProperty){
        if (contentProperty == null
                || contentProperty.getDateTimeFormatProperty() == null) {
            return YYYY_MM_DD_HH_MM_SS;
        }
        return contentProperty.getDateTimeFormatProperty()
                .getFormat();
    }
}
