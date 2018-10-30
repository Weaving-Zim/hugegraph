/*
 * Copyright 2017 HugeGraph Authors
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements. See the NOTICE file distributed with this
 * work for additional information regarding copyright ownership. The ASF
 * licenses this file to You under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package com.baidu.hugegraph.backend.store;

public class BackendMetrics {

    public static final String BACKEND = "backend";

    // Memory related metrics
    public static final String MEM_USED = "mem_used";
    public static final String MEM_COMMITED = "mem_commited";
    public static final String MEM_MAX = "mem_max";
    public static final String MEM_UNIT = "mem_unit";

    // Data load related metrics
    public static final String DATA_SIZE = "data_size";

    public static final String EXCEPTION = "exception";
}