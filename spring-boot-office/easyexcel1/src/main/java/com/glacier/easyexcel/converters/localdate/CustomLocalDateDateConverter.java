package com.glacier.easyexcel.converters.localdate;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;
import com.alibaba.excel.util.DateUtils;
import com.alibaba.excel.util.WorkBookUtil;

import java.time.LocalDate;

/**
 * date 2022-06-30 15:47
 *
 * @author glacier
 * @version 1.0
 */
public class CustomLocalDateDateConverter implements Converter<LocalDate> {
	
	@Override
	public Class<LocalDate> supportJavaTypeKey() {
		return LocalDate.class;
	}
	
	@Override
	public WriteCellData<?> convertToExcelData(
			LocalDate value, ExcelContentProperty contentProperty,
			GlobalConfiguration globalConfiguration) throws Exception {
		WriteCellData<?> cellData = new WriteCellData<>(value.atStartOfDay());
		String format = null;
		if (contentProperty != null && contentProperty.getDateTimeFormatProperty() != null) {
			format = contentProperty.getDateTimeFormatProperty().getFormat();
		}
		WorkBookUtil.fillDataFormat(cellData, format, DateUtils.DATE_FORMAT_10);
		return cellData;
	}
}
