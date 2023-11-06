/*
 * Copyright yxt.com
 *
 */
package com.gitee.kooder.utils;

import com.gitee.kooder.core.Constants;
import com.gitee.kooder.core.KooderConfig;
import org.apache.commons.lang3.math.NumberUtils;

/**
 * <Description>
 *
 * @author mazhiyong on 2023/8/25
 * @author <others>
 */
public class SourceFieldUtils {

    // 源码字段数量（source_0,source_1,source_2这样拼接），支持的源码文件大小为 num*32766
    public static int getSourceFieldNumber() {
        return NumberUtils.toInt(KooderConfig.getProperty("source.field.number"),  10);
    }


    public static String getSourceFieldName(int index) {
        return Constants.FIELD_SOURCE + "_" + index;
    }
}
