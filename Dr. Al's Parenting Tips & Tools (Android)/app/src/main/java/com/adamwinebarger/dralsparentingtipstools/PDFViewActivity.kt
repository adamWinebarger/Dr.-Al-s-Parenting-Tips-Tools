package com.adamwinebarger.dralsparentingtipstools

import android.graphics.Color
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.TextUtils
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_p_d_f_view.*

class PDFViewActivity() : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_p_d_f_view)

        val extras = intent.extras
        var pdfDestination = ""

        if (extras != null) {
            pdfDestination = extras.getString("pdfPath")!!
        }

        if(intent != null) {
            val viewType = intent.getStringExtra("ViewType")

            if(!TextUtils.isEmpty(viewType) || viewType != null) {
                if(viewType == ("assets")) {
                    pdf_view.fromAsset(pdfDestination)
                            .password(null)
                            .defaultPage(0)
                            .enableSwipe(true)
                            .swipeHorizontal(false)
                            .enableDoubletap(true)
                            .onDraw{canvas, pageWidth, pageHeight, displayedPage ->
                                //Enter Code here?
                            }.onDrawAll{canvas, pageWidth, pageHeight, displayedPage ->
                                //Enter code?
                            }.onPageChange { page, pageCount ->
                                //Enter code here?
                            }.onPageError{page, t ->
                                Toast.makeText(this@PDFViewActivity, "Error while opening page " + (page + 1), Toast.LENGTH_SHORT).show()

                            }
                            .onTap{false}
                            .onRender{nbPages, pageWidth, pageHeight ->
                                pdf_view.fitToWidth() //Fits to screen width
                            }
                            .enableAnnotationRendering(true)
                            .invalidPageColor(Color.RED)
                            .load()
                }
            }
        }

    }

}
