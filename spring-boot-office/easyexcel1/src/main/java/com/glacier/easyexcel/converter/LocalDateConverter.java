package com.glacier.easyexcel.converter;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 * @author glacier
 * @version 1.0
 * date 2020-09-06 19:49
 */
public class LocalDateConverter implements Converter<LocalDate> {

    public static final String YYYY_MM_DD = "yyyy-MM-dd";

    @Override
    public Class<LocalDate> supportJavaTypeKey() {
        return LocalDate.class;
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        return CellDataTypeEnum.STRING;
    }
	
	@Override
	public LocalDate convertToJavaData(ReadCellData<?> cellData, ExcelContentProperty contentProperty, GlobalConfiguration globalConfiguration) throws Exception {
		return LocalDate.parse(
				cellData.getStringValue(),
				DateTimeFormatter.ofPattern(
						this.getFormat(contentProperty)));
	}
	
	@Override
	public WriteCellData<?> convertToExcelData(LocalDate value, ExcelContentProperty contentProperty, GlobalConfiguration globalConfiguration) throws Exception {
		return new WriteCellData<>(
				DateTimeFormatter.ofPattern(
						this.getFormat(contentProperty)
				).format(value));
	}

    private String getFormat(ExcelContentProperty contentProperty){
        if (contentProperty == null
                || contentProperty.getDateTimeFormatProperty() == null) {
            return YYYY_MM_DD;
        }
        return contentProperty.getDateTimeFormatProperty()
                .getFormat();
    }
}
