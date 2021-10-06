//
//  Constants.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 2/9/21.
//  Copyright © 2021 adam Winebarger. All rights reserved.
//

struct Constants {
    
    //TableView Cell Identifiers
    static let tipCell = "tipCell", websiteCell = "websiteCell"
    
    //Close button image address
    static let closeButton = "CloseButton"
    
    //Attention doc Website URL
    static let docalsWebsite = "http://www.attentiondoc.com/Welcome.html"
    
    //Segues
    static let go2ContactsSegue = "goToContacts",
               go2LocationSegue = "goToLocation",
               go2ADHDTipsSegue = "goToADDADHDTips",
               go2TipsSegue = "goToTipSheet",
               go2WebsiteSegue = "goToWebsites",
               newPatientSegue = "goToNewPatient",
               add2PDFView = "add2PDFView",
               tips2PDFView = "tips2PDFView"
               
    
    /*Contact info/Location*/
    
    //Phone number string
    static let phoneNumberString = "(616)844-4140"
    
    //Hours block text
    static let hoursBlockText = "Hours:\n Mon:\n    9:00am - 9:00pm \n" +
        " Tues:\n    9:00am - 9:00pm\n" +
        " Wed:\n    9:00am - 9:00pm\n" +
        " Thurs:\n    9:00am - 9:00pm\n" +
        " Fri:\n    9:00am - 5:00pm \n" +
        " Sat: Closed\n" +
        " Sun: Closed"
    
    //Address and URL with which to open googl/apple maps.
    static let mapsAddress = "509+Franklin+Ave,+Grand+Haven,+MI+49417"
    static let openMapsURL = "http://maps.apple.com/?address=\(mapsAddress)"
    
    //address string for GLLocator
    static let addressString = "509 Franklin st. Grand Haven, MI, 49417"
    
    /*ADD/ADHD Tips Stuff*/
    
    //Directory that houses all of the PDFs
    static let pdfFolder = "ADDADHDTipsPDFs"

    //Structs to store the cell titles and filepaths for the PDFs
    static let adhdExplained = PDForWebChunk(title: "ADHD Explained", address: "ADHDexplained"),
               adhdAssessment = PDForWebChunk(title: "ADHD Assessment Components Brief", address: "ADHDassessment"),
               treatment4ADHD = PDForWebChunk(title: "ADHD Treatment", address: "treatment4ADHD"),
               keys2HealthyDiscipline = PDForWebChunk(title: "The Keys to Healthy Discipline", address: "Keys2HealthyDiscipline"),
               ways2HelpKidsWADHD = PDForWebChunk(title: "21 Ways to Help Kids With ADD/ADHD", address: "21WaysToHelpKidsWithADD"),
               barriers2Discipline = PDForWebChunk(title: "Barriers to Discipline", address: "Barriers2Discipline"),
               stressManagement4Parents = PDForWebChunk(title: "Stress Management For Parents", address: "StressManagement4Parents"),
               makingClearRequests = PDForWebChunk(title: "Making Clear Requests - 8 Steps to Slowing Kids Down", address: "MakingClearRequests"),
               clearRequestsExplained = PDForWebChunk(title: "Clear Requests Explained", address: "ClearRequestsExplained"),
               timeoutStepByStep = PDForWebChunk(title: "Timeout Step-by-step Guide", address: "TimeoutStepByStep"),
               timeoutFactsAndMyths = PDForWebChunk(title: "Timeout - Some Facts & Myths", address: "TimeoutFactsAndMyths"),
               pointChartExplained = PDForWebChunk(title: "Point Charts Explained", address: "PointChart"),
               pointChartExample = PDForWebChunk(title: "Point Chart Examples", address: "appendix2")
    
    //Array for the add/ADHD tips & tools PDFs
    static let addADHDPDFArray2 = [adhdExplained,
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
                                   pointChartExample]

    
    /*Regular Tips Stuff*/
    
    //Array for the tips sheet pdfs
    static let tipsPDFArray2 = [stressManagement4Parents,
                                keys2HealthyDiscipline,
                                barriers2Discipline,
                                makingClearRequests,
                                clearRequestsExplained,
                                timeoutStepByStep,
                                timeoutFactsAndMyths,
                                pointChartExplained,
                                pointChartExample]
    
    
    /*Stuff for the good websites viewer*/
    
    //URL's...This seemed like an easier way of doing web addresses.
    static let chaddURL = "https://chadd.org",
               adhdAssessmentURL = "https://www.umass.edu/psc/assessment",
               adaaURL = "https://adaa.org/living-with-anxiety/children",
               depressionResources4KidsURL =  "https://www.parentbooks.ca/Depression_Resources_for_Kids_&_Teens.html",
               substanceAbuseAndMentalHealthServicesURL = "https://www.samhsa.gov/find-help/national-helpline",
               nimhURL = "https://www.nimh.nih.gov/health/publications/bipolar-disorder-in-children-and-teens/index.shtml",
               parentingStressURL = "https://www.parentingscience.com/parenting-stress-evidence-based-tips.html",
               pathway2SuccessURL = "https://www.thepathway2success.com/free-social-emotional-learning-resources",
               blendedFamilyURL = "https://www.helpguide.org/articles/parenting-family/step-parenting-blended-families.htm",
               stopBullyingURL = "https://www.stopbullying.gov",
               sevenPrinciplesURL = "https://www.gottman.com/product/the-seven-principles-for-making-marriage-work",
               teenSuicidePreventionURL = "https://suicidepreventionlifeline.org/help-yourself/youth"
    
    
    //Structs holding webpage titles and URL's
    static let addADHDAssessment = PDForWebChunk(title: "ADHD Assessment Center", address: adhdAssessmentURL),
               adaa = PDForWebChunk(title: "Anxiety and Depression Association of America", address: adaaURL),
               blendedFAM = PDForWebChunk(title: "Blended Family and Step Parenting Tips", address: blendedFamilyURL),
               stopBullying = PDForWebChunk(title: "Bullying: what to Do", address: stopBullyingURL),
               chadd = PDForWebChunk(title: "CHADD -- National Resource on ADHD", address: chaddURL),
               depressionResources4Kids = PDForWebChunk(title: "Depression Resources for Kids & Teens", address: depressionResources4KidsURL),
               nimh = PDForWebChunk(title: "National Institute of Mental Health Bipolar Disorder in Children and Teens", address: nimhURL),
               teenSuicidePrevention = PDForWebChunk(title: "National Teen Suicide Prevention Lifeline", address: teenSuicidePreventionURL),
               parentingStress = PDForWebChunk(title: "Parenting Stress: 10 evidence-based tips for making life better", address: parentingStressURL),
               pathway2Success = PDForWebChunk(title: "Pathway2Success-list of social skills resources for kids who struggle with friendships", address: pathway2SuccessURL),
               sevenPrinciples = PDForWebChunk(title: "The Seven Principles for Making Marriage Work", address: sevenPrinciplesURL),
               substanceAbuseServices = PDForWebChunk(title: "Substance Abuse and Mental Health Service Administration National Helpline, 1-800-662-HELP (4357), (BIPOLAR DISORDER)", address: substanceAbuseAndMentalHealthServicesURL)
    
    //An array of our website structs for ease of use on the front-end.
    static let websiteArray = [addADHDAssessment,
                               adaa,
                               blendedFAM,
                               stopBullying,
                               chadd,
                               depressionResources4Kids,
                               nimh,
                               teenSuicidePrevention,
                               parentingStress,
                               pathway2Success,
                               sevenPrinciples,
                               substanceAbuseServices]
    
    //Custom cell stuff
    static let pdfCellNIBName = "PDFTitleCell",
               pdfIcon = "pdfIcon",
               webIcon = "safari1"
    
    
}
