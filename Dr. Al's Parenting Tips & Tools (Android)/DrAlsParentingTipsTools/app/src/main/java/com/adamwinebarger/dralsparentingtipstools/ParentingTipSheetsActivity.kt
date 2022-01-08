package com.adamwinebarger.dralsparentingtipstools

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import kotlinx.android.synthetic.main.activity_parenting_tip_sheets.*

class ParentingTipSheetsActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_parenting_tip_sheets)

        val pdfTitleArray = K.buildArray(K.tipsPDFArray, "Title")
        val pdfArray = K.buildArray(K.tipsPDFArray, "Path")


        val parentingTipsAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, pdfTitleArray)
        parentingTipsListView.adapter = parentingTipsAdapter

        parentingTipsListView.setOnItemClickListener { adapterView, view, i, l ->
            val pdfFile = K.pdfFolder + pdfArray[i] + K.pdfFileType
            val intent = Intent (this@ParentingTipSheetsActivity, PDFViewActivity::class.java)
            intent.putExtra("pdfPath", pdfFile)
            intent.putExtra("ViewType", "assets")
            startActivity(intent)
        }
    }
}
