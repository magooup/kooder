/**
 * Copyright (c) 2021, OSChina (oschina.net@gmail.com).
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.gitee.kooder.models;

/**
 * Code Line
 * used to show results of code search
 * @author Winter Lau<javayou@gmail.com>
 */
public class CodeLine {

    private int line;       //Line num
    private String code;    //Code

    public CodeLine(int line, String code) {
        this.code = code;
        this.line = line;
    }

    public int getLine() {
        return line;
    }

    public void setLine(int line) {
        this.line = line;
    }

    public StringBuffer getCode() {
        return new StringBuffer(code);
    }

    public void setCode(String code) {
        this.code = code;
    }
}
