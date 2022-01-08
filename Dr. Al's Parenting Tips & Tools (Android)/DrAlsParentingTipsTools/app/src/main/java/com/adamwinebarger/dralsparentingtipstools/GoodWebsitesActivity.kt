package com.adamwinebarger.dralsparentingtipstools

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.ArrayAdapter
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_good_websites.*

class GoodWebsitesActivity : AppCompatActivity() {

    private val websiteArray: Array<String> = K.buildArray(K.websiteArray, "Title")
    private val urlArray: Array<String> = K.buildArray(K.websiteArray, "Path")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_good_websites)

        val goodWebsitesAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, websiteArray)
        listView.adapter = goodWebsitesAdapter

        listView.setOnItemClickListener { adapterView, view, i, l ->
            go2URL(i)
        }
    }

    private fun go2URL(a: Int) {

        val uriURL = Uri.parse(urlArray[a])
        val launchBrowser = Intent(Intent.ACTION_VIEW, uriURL)
        startActivity(launchBrowser)
    }
}
