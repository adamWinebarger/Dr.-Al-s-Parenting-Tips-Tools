package com.adamwinebarger.dralsparentingtipstools

import android.content.Context
import android.content.Intent
import android.content.Intent.ACTION_VIEW
import android.location.Address
import android.location.Geocoder
import android.net.Uri
import android.os.Bundle
import android.os.PersistableBundle
import android.widget.Button
import android.widget.FrameLayout
import androidx.appcompat.app.AppCompatActivity
import com.google.android.gms.maps.*
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.MarkerOptions
import java.io.IOException
import java.util.*


class LocationActivity : AppCompatActivity(), OnMapReadyCallback  {

    private lateinit var mMap : GoogleMap


    private val location = "509 Franklin ave. Grand Haven, MI, 49417"


    //TODO: Get mapview to populate/show map here

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_location)


        val addressButton : Button = findViewById(R.id.addressButton)
        addressButton.setOnClickListener {
            loadInGoogleMaps()
        }

        val mapFragment = supportFragmentManager
                .findFragmentById(R.id.map) as SupportMapFragment
        mapFragment.getMapAsync(this)

    }

    override fun onMapReady(googleMap: GoogleMap) {
        mMap = googleMap

        val loc = getLocationFromAddress(this, location) as LatLng

        // Add a marker in Sydney and move the camera
        val office = LatLng(loc.latitude, loc.longitude)
        mMap.addMarker(MarkerOptions().position(office).title(location))
        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(office, 15F))

    }

    private fun loadInGoogleMaps() {
        intent = Intent(ACTION_VIEW, Uri.parse("google.navigation:q=$location"))
        startActivity(intent)
    }

    private fun getLocationFromAddress(context: Context, strAddress : String) : LatLng? {
        val geocoder = Geocoder(this)
        var address : List<Address>
        var p1 : LatLng? = null

        try {
            address = geocoder.getFromLocationName(strAddress, 5)
            if (address == null) {
                return null
            }
            val loc = address[0]

            p1 = LatLng((loc.latitude), (loc.longitude))
        } catch (ex : IOException) {
            ex.printStackTrace()
        }
        return p1

    }

}