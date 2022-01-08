package com.adamwinebarger.dralsparentingtipstools

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import kotlinx.android.synthetic.main.activity_a_d_d_a_d_h_d_tips.*

class ADDADHDTipsActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_a_d_d_a_d_h_d_tips)

        val pdfTitleArray = K.buildArray(
            K.addADHDPDFArray, "Title")
        val pdfArray = K.buildArray(
            K.addADHDPDFArray, "Path")

        val addADHDTipsAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, pdfTitleArray)
        addADHDPDFListView.adapter = addADHDTipsAdapter

        addADHDPDFListView.setOnItemClickListener {adapterView, view, i, l ->
            val pdfFile = K.pdfFolder + pdfArray[i] + K.pdfFileType
            val intent = Intent (this@ADDADHDTipsActivity, PDFViewActivity::class.java)
            intent.putExtra("pdfPath", pdfFile)
            intent.putExtra("ViewType", "assets")
            startActivity(intent)

        }
    }
}
