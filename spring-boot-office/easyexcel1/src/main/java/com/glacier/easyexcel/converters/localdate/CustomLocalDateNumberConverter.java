package com.glacier.easyexcel.converters.localdate;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;
import org.apache.poi.ss.usermodel.DateUtil;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * date 2022-06-30 15:47
 *
 * @author glacier
 * @version 1.0
 */
public class CustomLocalDateNumberConverter implements Converter<LocalDate> {
	
	@Override
	public Class<?> supportJavaTypeKey() {
		return LocalDate.class;
	}
	
	@Override
	public CellDataTypeEnum supportExcelTypeKey() {
		return CellDataTypeEnum.NUMBER;
	}
	
	@Override
	public LocalDate convertToJavaData(
			ReadCellData<?> cellData, ExcelContentProperty contentProperty,
			GlobalConfiguration globalConfiguration) {
		return DateUtil.getLocalDateTime(cellData.getNumberValue().doubleValue(),
						this.getUse1904windowing(contentProperty, globalConfiguration))
				.toLocalDate();
	}
	
	@Override
	public WriteCellData<?> convertToExcelData(
			LocalDate value, ExcelContentProperty contentProperty,
			GlobalConfiguration globalConfiguration) {
		return new WriteCellData<>(BigDecimal.valueOf(
				DateUtil.getExcelDate(value, this.getUse1904windowing(contentProperty, globalConfiguration))));
	}
	
	private boolean getUse1904windowing(ExcelContentProperty contentProperty, GlobalConfiguration globalConfiguration) {
		if (contentProperty == null
				|| contentProperty.getDateTimeFormatProperty() == null) {
			return globalConfiguration.getUse1904windowing();
		}
		return contentProperty.getDateTimeFormatProperty()
				.getUse1904windowing();
	}
}
