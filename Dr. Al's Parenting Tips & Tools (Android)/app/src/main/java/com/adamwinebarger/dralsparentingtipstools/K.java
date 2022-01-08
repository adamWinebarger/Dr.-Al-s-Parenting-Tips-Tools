package com.adamwinebarger.dralsparentingtipstools;

public class K {

    public static final String docalsWebsite = "http://www.attentiondoc.com/Welcome.html",
        phoneNumber = "(616)844-4140",
        address = "509 Franklin ave. Grand Haven, MI, 49417";

    public static final String pdfFolder = "ADHDTipsPDFs/",
        pdfFileType = ".pdf";

    //PDF/Web chunks to store the filepaths and titles for each pdf
    private static final PDFOrWebChunk adhaExplained = new PDFOrWebChunk("ADHD Explained", "ADHDexplained"),
        adhdAssessment = new PDFOrWebChunk("ADHD Assessment Components Brief", "ADHDassessment"),
        treatment4ADHD = new PDFOrWebChunk("ADHD Treatment", "treatment4ADHD"),
        keys2HealthyDiscipline = new PDFOrWebChunk("The Keys to Healthy Discipline", "Keys2HealthyDiscipline"),
        ways2HelpKidsWADHD = new PDFOrWebChunk("21 Ways to Help Kids With ADD/ADHD", "21WaysToHelpKidsWithADD"),
        barriers2Discipline = new PDFOrWebChunk("Barriers to Discipline", "Barriers2Discipline"),
        stressManagement4Parents = new PDFOrWebChunk("Stress Management For Parents", "StressManagement4Parents"),
        makingClearRequests = new PDFOrWebChunk("Making Clear Requests - 8 Steps to Slowing Kids Down", "MakingClearRequests"),
        clearRequestsExplained = new PDFOrWebChunk("Clear Requests Explained", "ClearRequestsExplained"),
        timeoutStepByStep = new PDFOrWebChunk("Timeout Step-by-Step Guide", "TimeoutStepByStep"),
        timeoutFactsAndMyths = new PDFOrWebChunk("Timeout - Some Facts & Myths", "TimeoutFactsAndMyths"),
        pointChartExplained = new PDFOrWebChunk("Point Charts Explained", "PointChart"),
        pointChartExample = new PDFOrWebChunk("Point Chart Examples", "appendix2");


    //Array for the ADD/ADHD Parenting tips and tools table
    public static final PDFOrWebChunk[] addADHDPDFArray = {
            adhaExplained,
            adhdAssessment,
            treatment4ADHD,
            keys2HealthyDiscipline,
            ways2HelpKidsWADHD,
            barriers2Discipline,
            stressManagement4Parents,
            makingClearRequests,
            clearRequestsExplained,
            timeoutStepByStep,
            timeoutFactsAndMyths,
            pointChartExplained,
            pointChartExample
    };

    //Array for the Regular Tips Parenting TableView
    public static final PDFOrWebChunk[] tipsPDFArray = {
            stressManagement4Parents,
            keys2HealthyDiscipline,
            barriers2Discipline,
            makingClearRequests,
            clearRequestsExplained,
            timeoutStepByStep,
            timeoutFactsAndMyths,
            pointChartExplained,
            pointChartExample
    };

    //URLs for the goodWebsites Viewer
    private static final String chaddURL = "https://chadd.org",
        adhdAssessmentURL = "https://www.umass.edu/psc/assessment",
        adaaURL = "https://adaa.org/living-with-anxiety/children",
        depressionResources4KidsURL = "https://www.parentbooks.ca/Depression_Resources_for_Kids_&_Teens.html",
        substanceAndMentalHealthServicesURL = "https://www.samhsa.gov/find-help/national-helpline",
        nimhURL = "https://www.nimh.nih.gov/health/publications/bipolar-disorder-in-children-and-teens/index.shtml",
        parentingStressURL = "https://www.parentingscience.com/parenting-stress-evidence-based-tips.html",
        pathway2SuccessURL = "https://www.thepathway2success.com/free-social-emotional-learning-resources",
        blendedFamilyURL = "https://www.helpguide.org/articles/parenting-family/step-parenting-blended-families.htm",
        stopBullyingURL = "https://www.stopbullying.gov",
        sevenPrinciplesURL = "https://www.gottman.com/product/the-seven-principles-for-making-marriage-work",
        teenSuicidePreventionURL = "https://suicidepreventionlifeline.org/help-yourself/youth";

    //PDF/Web Chunks for each webpage
    private static final PDFOrWebChunk addADHDAssessment = new PDFOrWebChunk("ADHD Assessment Center", adhdAssessmentURL),
        adaa = new PDFOrWebChunk("Anxiety & Depression Association of America", adaaURL),
        blendedFam = new PDFOrWebChunk("Blended Family & Parenting Tips", blendedFamilyURL),
        stopBullying = new PDFOrWebChunk("Bullying: What not to do", stopBullyingURL),
        chadd = new PDFOrWebChunk("CHADD -- National Resource on ADHD", chaddURL),
        depressionResources4Kids = new PDFOrWebChunk("Depression Resources for Kids & Teens", depressionResources4KidsURL),
        nimh = new PDFOrWebChunk("National Institute of Mental Health: Bipolar Disorder in Children & Teens", nimhURL),
        teenSuicidePrevention = new PDFOrWebChunk("National Teen Suicide Prevention Lifeline", teenSuicidePreventionURL),
        parentingStress = new PDFOrWebChunk("Parenting Stress: 10 evidence-based tips for making life better", parentingStressURL),
        pathway2Success = new PDFOrWebChunk("Pathway2Success-List of Social Skills Resources for Kids Who Struggle with friendships", pathway2SuccessURL),
        sevenPrinciples = new PDFOrWebChunk("The Seven Principles for Making Marriage Work", sevenPrinciplesURL),
        samhsa = new PDFOrWebChunk("Substance Abuse and Mental Health Service Administration National Helpline, 1-800-662-HELP (4357), (BIPOLAR DISORDER)", substanceAndMentalHealthServicesURL);

    //Array of websites for ease-of-use on the good websites activity
    public static final PDFOrWebChunk[] websiteArray = {
            addADHDAssessment,
            adaa,
            blendedFam,
            stopBullying,
            chadd,
            depressionResources4Kids,
            nimh,
            teenSuicidePrevention,
            parentingStress,
            pathway2Success,
            sevenPrinciples,
            samhsa
    };

    public static String[] buildArray(PDFOrWebChunk[] whichArray, String which) {

        String[] newArray = new String[whichArray.length];

        for (int i = 0; i < whichArray.length; i++) {
            if (which.equals("Title"))
                newArray[i] = whichArray[i].getTitle();
            else
                newArray[i] = whichArray[i].getPath();
        }

        return newArray;

    }
}
