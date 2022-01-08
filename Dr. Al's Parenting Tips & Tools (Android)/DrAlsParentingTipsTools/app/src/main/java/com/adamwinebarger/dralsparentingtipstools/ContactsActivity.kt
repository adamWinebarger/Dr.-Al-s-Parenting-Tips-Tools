package com.adamwinebarger.dralsparentingtipstools

import android.Manifest
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.content.Intent
import androidx.core.app.ActivityCompat
import android.content.pm.PackageManager
import android.net.Uri
import android.view.View
import android.widget.Button

class ContactsActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_contacts)

        val addressButton = findViewById<Button>(R.id.addressButton)
        val phoneNumberButton = findViewById<Button>(R.id.phoneNumberButton)
        val websiteButton = findViewById<Button>(R.id.websiteButton)

//        //backButton.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                finish();
//            }
//        });

        //Actions once the website button is clicked
        websiteButton.setOnClickListener { go2URL() }

        //Actions once the phone number button is clicked
        phoneNumberButton.setOnClickListener(View.OnClickListener {
            //TODO: need to ensure that the request for call permissions is workign as it should
            val phoneIntent = Intent(Intent.ACTION_CALL)
            phoneIntent.data = Uri.parse("tel: 16168444140")
            if (ActivityCompat.checkSelfPermission(
                    this@ContactsActivity,
                    Manifest.permission.CALL_PHONE
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                return@OnClickListener
            }
            startActivity(phoneIntent)
        })

        //Actions once the address button is clicked
        addressButton.setOnClickListener { openInGoogleMaps() }
    }

    //URL retrieval from DocalWebsite Class
    private fun go2URL() {
        val uriURL = Uri.parse(K.docalsWebsite)
        val launchBrowser = Intent(Intent.ACTION_VIEW, uriURL)
        startActivity(launchBrowser)
    }

    //opens app in Google maps
    private fun openInGoogleMaps() {
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse("google.navigation:q=" + K.address))
        startActivity(intent)
    }
}