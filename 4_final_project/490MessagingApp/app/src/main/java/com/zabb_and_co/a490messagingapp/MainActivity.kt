package com.zabb_and_co.a490messagingapp

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import java.net.Socket
import java.util.concurrent.Executors

class MainActivity : AppCompatActivity() {
    var counter = 0;
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

       findViewById<Button>(R.id.Sign_In_Button).setOnClickListener(){
           Log.d("MainActivity", "Pressed Sign in button")
           Executors.newSingleThreadExecutor().execute(){
               connect()
           }
       }

        findViewById<Button>(R.id.Register_Button).setOnClickListener(){
            Log.d("Main Activity", "Pressed Register Button")
            val intent = Intent(this, RegisterActivity::class.java)
            startActivity(intent)
        }

    }

    override fun onStart() {
        super.onStart()
    }

    fun connect(){
            val client = Socket("192.168.4.63", 5000)
            val message = "Hello from the client " + counter
            client.outputStream.write(message.toByteArray())
            counter++
            client.close()
        }

    }