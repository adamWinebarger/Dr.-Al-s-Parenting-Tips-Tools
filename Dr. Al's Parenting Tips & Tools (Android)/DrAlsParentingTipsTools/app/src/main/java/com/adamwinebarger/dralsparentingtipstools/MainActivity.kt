package com.adamwinebarger.dralsparentingtipstools

import android.Manifest
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.adamwinebarger.dralsparentingtipstools.R
import android.widget.ImageButton
import com.adamwinebarger.dralsparentingtipstools.K
import com.adamwinebarger.dralsparentingtipstools.MainActivity
import androidx.core.content.ContextCompat
import android.content.pm.PackageManager
import androidx.core.app.ActivityCompat
import android.content.Intent
import android.net.Uri
import com.adamwinebarger.dralsparentingtipstools.ContactsActivity
import com.adamwinebarger.dralsparentingtipstools.LocationActivity
import com.adamwinebarger.dralsparentingtipstools.ADDADHDTipsActivity
import com.adamwinebarger.dralsparentingtipstools.ParentingTipSheetsActivity
import com.adamwinebarger.dralsparentingtipstools.GoodWebsitesActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val drAlsWebsiteButton = findViewById<ImageButton>(R.id.drAlsWebsiteButton)
        val contactsButton = findViewById<ImageButton>(R.id.contactsButton)
        val locationButton = findViewById<ImageButton>(R.id.locationButton)
        val addADHDTipSheetButton = findViewById<ImageButton>(R.id.addADHDTipSheetButton)
        val parentingTipSheetButton = findViewById<ImageButton>(R.id.parentingTipSheetButton)
        val goodWebsitesButton = findViewById<ImageButton>(R.id.goodWebsitesButton)
        val newPAtientFormButton = findViewById<ImageButton>(R.id.newPatientFormButton)

        //Button Clicked: "Dr. Al's Website"
        drAlsWebsiteButton.setOnClickListener {
            go2URL(K.docalsWebsite) //Accesses website
        }

        //Button Clicked: "Contacts"
        contactsButton.setOnClickListener { openNewActivity(1) }

        //Button Clicked: "Location"
        locationButton.setOnClickListener { openNewActivity(2) }

        //Button Clicked: "ADD/ADHD Tip Sheets"
        //TODO: Figure out if a PDF Viewer would be easier to build in Java or Kotlin
        addADHDTipSheetButton.setOnClickListener { openNewActivity(3) }

        //Button Clicked: "Parenting Tips Sheets"
        //TODO: Figure out if a PDF Viewer would be easier to build in Java or Kotlin
        parentingTipSheetButton.setOnClickListener { openNewActivity(4) }

        //Button Clicked: "Good Websites"
        goodWebsitesButton.setOnClickListener { openNewActivity(5) }

        //Button Clicked: "New Patient Forms"
        newPAtientFormButton.setOnClickListener() { }
        //This one actually doesn't need anything, and may get deleted later.
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        checkPermission(Manifest.permission.CALL_PHONE, PHONE_PERMISSION_CODE)
        checkPermission(Manifest.permission.ACCESS_FINE_LOCATION, FINE_LOCATION_PERMISSION_CODE)
        checkPermission(Manifest.permission.INTERNET, INTERNET_PERMISSION_CODE)
        checkPermission(
            Manifest.permission.ACCESS_NETWORK_STATE,
            ACESS_NETWORK_STATE_PERMISSION_CODE
        )
    }

    fun checkPermission(permission: String, requestCode: Int) {
        //Check to see if permission has been granted
        if (ContextCompat.checkSelfPermission(
                this@MainActivity,
                permission
            ) == PackageManager.PERMISSION_DENIED
        ) {
            ActivityCompat.requestPermissions(this@MainActivity, arrayOf(permission), requestCode)
        } else {
        }
    }

    private fun go2URL(url: String) {
        //Remember to build a similar method to this in the 'Good Websites' Activity
        val uriURL = Uri.parse(url)
        val launchBrowser = Intent(Intent.ACTION_VIEW, uriURL)
        startActivity(launchBrowser)
    }

    fun openNewActivity(a: Int) {

//        Intent openNewActivity = new Intent(this, ContactsActivity.class);
//        startActivity(openNewActivity);
        when (a) {
            1 -> startActivity(Intent(this, ContactsActivity::class.java))
            2 -> startActivity(Intent(this, LocationActivity::class.java))
            3 ->                 //Opens ADD/ADHD tip sheets
                startActivity(Intent(this, ADDADHDTipsActivity::class.java))
            4 ->                 //Opens Parenting Tip Sheets
                startActivity(Intent(this, ParentingTipSheetsActivity::class.java))
            5 -> startActivity(Intent(this, GoodWebsitesActivity::class.java))
            6 -> {}
            else ->                 //Standard error message. Figure out a way to make it show as an alert
                println("Error: We have no idea how you managed to get this meassage.\nBut please don't do it again")
        }
    }

    companion object {
        private const val PHONE_PERMISSION_CODE = 100
        private const val FINE_LOCATION_PERMISSION_CODE = 101
        private const val INTERNET_PERMISSION_CODE = 102
        private const val ACESS_NETWORK_STATE_PERMISSION_CODE = 104
    }
}