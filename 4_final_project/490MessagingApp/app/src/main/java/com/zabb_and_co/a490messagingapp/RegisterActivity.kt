package com.zabb_and_co.a490messagingapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*
import java.net.Socket
import java.util.concurrent.Executors

class RegisterActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_register)

//        findViewById<EditText>(R.id.RegisterName).setOnClickListener(){
//            val name = findViewById<EditText>(R.id.RegisterName)
//            name.setText("")
//        }

        findViewById<Button>(R.id.registerUserButton).setOnClickListener(){
            val name = findViewById<EditText>(R.id.RegisterName)
            val password = findViewById<EditText>(R.id.RegisterPassword)
            if(name.text.toString().equals("") || password.text.toString().equals("")){
                Log.d("RegisterActivity","This is happening")
                Toast.makeText(applicationContext,"Make sure name and password aren't blank!", Toast.LENGTH_LONG).show()
            }
            else{
                Executors.newSingleThreadExecutor().execute(){
                    val client = Socket("192.168.4.63", 5000)
                    var message = name.text.toString()
                    client.outputStream.write(message.toByteArray())
                    client.close()
                }

            }
        }
    }
}