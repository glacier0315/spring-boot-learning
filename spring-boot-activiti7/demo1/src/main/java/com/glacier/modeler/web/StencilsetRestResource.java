/* Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.glacier.modeler.web;

import org.activiti.engine.ActivitiException;
import org.apache.commons.io.IOUtils;
import org.springframework.web.bind.annotation.*;

import java.io.InputStream;

/**
 * date 2021-10-02 12:18
 * 获取编辑器组件及配置项信息
 * @author glacier
 * @version 1.0
 */
@RequestMapping(value = "/service")
@RestController
public class StencilsetRestResource {
	
	@GetMapping(value = "/editor/stencilset", produces = "application/json;charset=utf-8")
	public @ResponseBody
	String getStencilset() {
		String name = "stencilset_zh_CN.json";
		try (InputStream stencilsetStream = this.getClass().getClassLoader().getResourceAsStream(name)) {
			return IOUtils.toString(stencilsetStream, "utf-8");
		} catch (Exception e) {
			throw new ActivitiException("Error while loading stencil set", e);
		}
	}
}
