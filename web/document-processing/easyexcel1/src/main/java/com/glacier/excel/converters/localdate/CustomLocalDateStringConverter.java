package com.glacier.excel.converters.localdate;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;
import com.alibaba.excel.util.DateUtils;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.ZoneId;

/**
 * date 2022-06-30 15:47
 *
 * @author glacier
 * @version 1.0
 */
public class CustomLocalDateStringConverter implements Converter<LocalDate> {
	@Override
	public Class<?> supportJavaTypeKey() {
		return LocalDate.class;
	}
	
	@Override
	public CellDataTypeEnum supportExcelTypeKey() {
		return CellDataTypeEnum.STRING;
	}
	
	@Override
	public LocalDate convertToJavaData(
			ReadCellData<?> cellData, ExcelContentProperty contentProperty,
			GlobalConfiguration globalConfiguration) throws ParseException {
		return DateUtils.parseDate(cellData.getStringValue(),
						this.getDateFormat(contentProperty))
				.toInstant()
				.atZone(ZoneId.systemDefault())
				.toLocalDate();
	}
	
	@Override
	public WriteCellData<?> convertToExcelData(
			LocalDate value, ExcelContentProperty contentProperty,
			GlobalConfiguration globalConfiguration) {
		return new WriteCellData<>(
				DateUtils.format(value.atStartOfDay(),
						this.getDateFormat(contentProperty),
						globalConfiguration.getLocale()));
	}
	
	private String getDateFormat(ExcelContentProperty contentProperty) {
		if (contentProperty == null
				|| contentProperty.getDateTimeFormatProperty() == null) {
			return DateUtils.DATE_FORMAT_10;
		}
		return contentProperty.getDateTimeFormatProperty()
				.getFormat();
	}
}
