package com.example.flutter_native_sample

import TodoDataSource

class TodoRepository {
    private val dataSource = TodoDataSource.instance()

    suspend fun getTodo(id: Int) = dataSource.getTodo(id)
}