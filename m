Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E667B212C5
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2019 06:11:55 +0200 (CEST)
Received: from [::1] (port=54436 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRUDp-0004Aa-L3; Fri, 17 May 2019 00:11:53 -0400
Received: from mail-eopbgr1390128.outbound.protection.outlook.com
 ([40.107.139.128]:22808 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.91) (envelope-from <koyel.das@vehere.com>)
 id 1hRUDH-000423-JH
 for usrp-users@lists.ettus.com; Fri, 17 May 2019 00:11:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector1-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJo+ZUSPsBCtcuwbSwHVVOpiu9uSXSLME3+xo6J/tJE=;
 b=mIDD3/uq/vHBlf9hM4MQvj+bmujyguQWs3jwYI0CECmAIie0j7uLmkJvbh4JHTh0igs+SBAtct0P/ueZK81bBF4+q+vTgQ8tUY3Jgaziciu3fP4INh5A7mlspkKnEkrFDMbgzxXBBCLajy3Qc0Rcdom7Z7Py9EuGZD3KUPFSgwM=
Received: from PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM (10.174.145.145) by
 PN1PR01MB0832.INDPRD01.PROD.OUTLOOK.COM (10.174.146.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 04:10:36 +0000
Received: from PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2528:ef0f:b42e:c29d]) by PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2528:ef0f:b42e:c29d%4]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 04:10:36 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] problem with fftw_plan_dft_2d
Thread-Index: AQHVDGP/ZQ4NjjVujk2QyAgKbkDW5KZusIgAgAADhWY=
Date: Fri, 17 May 2019 04:10:36 +0000
Message-ID: <PN1PR01MB07204B747EB64638A392FDA8900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>,
 <5CDE312E.8040807@gmail.com>
In-Reply-To: <5CDE312E.8040807@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c52f746a-9f6b-4049-2336-08d6da7d9d4c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(7168020)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:PN1PR01MB0832; 
x-ms-traffictypediagnostic: PN1PR01MB0832:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <PN1PR01MB0832E1202611DE3F8E195F3E900B0@PN1PR01MB0832.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(39830400003)(366004)(396003)(136003)(365934003)(189003)(199004)(66446008)(73956011)(64756008)(5024004)(14444005)(91956017)(66556008)(66946007)(66476007)(76116006)(25786009)(6246003)(2906002)(71190400001)(6116002)(3846002)(7696005)(66574012)(76176011)(19627405001)(55236004)(78486014)(53546011)(99286004)(6506007)(256004)(102836004)(71200400001)(6916009)(33656002)(86362001)(7736002)(6606003)(6436002)(68736007)(5660300002)(74316002)(26005)(52536014)(186003)(733005)(55016002)(66066001)(486006)(53936002)(606006)(508600001)(229853002)(8936002)(81156014)(81166006)(316002)(54896002)(8676002)(236005)(14454004)(9686003)(446003)(476003)(6306002)(11346002)(491001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PN1PR01MB0832;
 H:PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rFMeA4SbNRj8WYAeDYT0Xj8W0u3LBFqyZ2cxuNqjPqzUZefjV91+6locxniNqCY6nJOel3HZuve/mAjLzMuPkFp14kKkoLE3zNplM2dwOHwd/Xk98mK8qKCV4WAJ724jSpI07f2puPhZEci6lh03pBMWdpFW0RBl2s7W00igRSgugy5X6peB6PaH6slk5j3VhMRbzXnZ9w9YJJjctAmHmZXPZ3JNyOm+tHb+kC5OdKpdeYY3PNIRbKZlafkU9d5r8UYfsMaRxH5NjKRwcnVtqIWCW/cidg2Mb3FqK7mttq3HWwN9j591p3SnbxxC1gY+0fgiIAwmAog2Yr6g1xGp9+Ex3mP+hFEzjNQUWS3UX7n96UuFp6UtTeGqcaw6EkMC8mTfmJFOgSOJ6K38OSXerf9bdQTIaE0hkXTOzjVDrFE=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c52f746a-9f6b-4049-2336-08d6da7d9d4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 04:10:36.3853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0832
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] problem with fftw_plan_dft_2d
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============6031696143474335244=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6031696143474335244==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB07204B747EB64638A392FDA8900B0PN1PR01MB0720INDP_"

--_000_PN1PR01MB07204B747EB64638A392FDA8900B0PN1PR01MB0720INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,


I emailed to fftw@fftw.org<mailto:fftw@fftw.org> but got no response so I t=
hought some USRP users might also be using this library and hence I may get=
 a response. That is why.


Regards,

Koyel Das

Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, May 17, 2019 9:27:34 AM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] problem with fftw_plan_dft_2d

On 05/16/2019 11:52 PM, Koyel Das (Vehere) via USRP-users wrote:

Hi,


Following is a snapshot of my code using fftw_plan_dft_2d. I am getting all=
 zeros in the imaginary part of fft (in the printf command of the following=
 code:last line). The real part is correct.Could you please tell where am I=
 going wrong?


 fftw_complex *imageOutputPlane=3DVDDSAlgorithm::imageOutPlane;

    fftw_complex *imageInputPlane=3DVDDSAlgorithm::imageInputPlane;
    unsigned char*imageData=3DVDDSAlgorithm::imageData;
    unsigned char*imageDataFinal=3DVDDSAlgorithm::imageDataFinal;

    memset(imageInputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw_=
complex));
    memset(imageOutputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw=
_complex));
    memset(imageData,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION);

    for(size_t count=3D0;count<TOTAL_BASE_LINE;count++){
       imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIM=
ENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][0]=3Dphy[count][0];
       imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIM=
ENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][1]=3D-(phy[count][1]);
       imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIM=
ENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][0]=3Dphy[count][0];
       imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIM=
ENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][1]=3Dphy[count][1];
    }

    fftLock.lock();
    fftw_plan  planeX=3Dfftw_plan_dft_2d(IMAGE_DIMENSION,IMAGE_DIMENSION, i=
mageInputPlane, imageOutputPlane, FFTW_FORWARD, FFTW_ESTIMATE);
    fftw_execute(planeX);
    fftw_destroy_plan(planeX);
    fftLock.unlock();


    double max=3D0;
    for(size_t row=3D0;row<IMAGE_DIMENSION;row++){
        for(size_t col=3D0;col<IMAGE_DIMENSION;col++){
            if(col=3D=3D0)printf("\n");
            if(col<100){
                printf("(%lf,%lf)",imageOutputPlane[row*IMAGE_DIMENSION+col=
][0],imageOutputPlane[row*IMAGE_DIMENSION+col][1]);
            }

        }
    }


Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>
I'm having a hard time seeing how this is related to UHD and USRPs.

There's probably a support forum for FFTW out there that would be more help=
ful than here.



--_000_PN1PR01MB07204B747EB64638A392FDA8900B0PN1PR01MB0720INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 1=
6px;">
Hi Marcus,</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 1=
6px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 1=
6px;">
I emailed to&nbsp;<a href=3D"mailto:fftw@fftw.org" target=3D"_blank" rel=3D=
"noopener noreferrer" data-auth=3D"NotApplicable" id=3D"LPlnk140442" style=
=3D"color: rgb(170, 0, 0); font-family: &quot;Times New Roman&quot;;" previ=
ewremoved=3D"true">fftw@fftw.org</a>&nbsp;but got no response so I
 thought some&nbsp;USRP users might also be using this library and hence I =
may get a&nbsp;response. That is why.</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 1=
6px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 1=
6px;">
Regards,</p>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-size: 9pt; fo=
nt-family: Tahoma, serif;">Koyel Das&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;</span><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px; line-h=
eight:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Senior =96 Produc=
t Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: &#43;919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" =
style=3D"font-size:16px"><font style=3D"font-size:9pt">T: &#43;91&nbsp;33 4=
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.veher=
e.com/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.veh=
ere.com</a></font></font><font face=3D"Tahoma,serif" style=3D"font-size:16p=
x"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed"=
 style=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mai=
l.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D=
15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJ=
OuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kc=
oQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D149821924=
5179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;</span><a href=3D"https://twitter.com/VehereIndia" targe=
t=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color=
:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFo=
nt; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (1)" style=
=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mail.goog=
le.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46=
f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_6=
6KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWF=
dkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&a=
mp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"col=
or:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emoji=
Font">&nbsp;</span><a href=3D"https://www.facebook.com/VehereIndia/" target=
=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:=
rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFon=
t; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (2)" style=
=3D"width: 18pt; height: 18pt; user-select: none;" src=3D"https://mail.goog=
le.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46=
f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmU=
lgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRH=
Aoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&a=
mp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"col=
or:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emoji=
Font">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-family:Ta=
homa,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p></p>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, May 17, 2019 9:27:34 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] problem with fftw_plan_dft_2d</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 05/16/2019 11:52 PM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"">Hi,</p>
<p style=3D""><br>
</p>
<p style=3D"">Following is a snapshot of my code using&nbsp;<span style=3D"=
font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont">fftw_plan_d=
ft_2d</span>. I am getting all zeros in the imaginary part of fft (in the&n=
bsp;printf command of the following code:last
 line). The real part is correct.Could you please tell where am I going wro=
ng?</p>
<p style=3D""><br>
</p>
<p style=3D""><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
,serif,EmojiFont">&nbsp;fftw_complex *imageOutputPlane=3DVDDSAlgorithm::ima=
geOutPlane;<br>
</span><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,serif,=
EmojiFont"></span></p>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftw_complex *imageInputPlane=3DVDDSAlgorithm::imageInputPlan=
e;<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; unsigned char*imageData=3DVDDSAlgorithm::imageData;<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; unsigned char*imageDataFinal=3DVDDSAlgorithm::imageDataFinal;=
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; memset(imageInputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*si=
zeof(fftw_complex));<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; memset(imageOutputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*s=
izeof(fftw_complex));<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; memset(imageData,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; for(size_t count=3D0;count&lt;TOTAL_BASE_LINE;count&#43;&#43;=
){<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp;imageInputPlane[(int)round(IMAGE_DIMENSION/2&#43=
;diffX[count])*IMAGE_DIMENSION&#43;(int)round(IMAGE_DIMENSION/2-diffY[count=
])][0]=3Dphy[count][0];<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp;imageInputPlane[(int)round(IMAGE_DIMENSION/2&#43=
;diffX[count])*IMAGE_DIMENSION&#43;(int)round(IMAGE_DIMENSION/2-diffY[count=
])][1]=3D-(phy[count][1]);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp;imageInputPlane[(int)round(IMAGE_DIMENSION/2-dif=
fX[count])*IMAGE_DIMENSION&#43;(int)round(IMAGE_DIMENSION/2&#43;diffY[count=
])][0]=3Dphy[count][0];<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp;imageInputPlane[(int)round(IMAGE_DIMENSION/2-dif=
fX[count])*IMAGE_DIMENSION&#43;(int)round(IMAGE_DIMENSION/2&#43;diffY[count=
])][1]=3Dphy[count][1];<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; }<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftLock.lock();<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftw_plan &nbsp;planeX=3Dfftw_plan_dft_2d(IMAGE_DIMENSION,IMA=
GE_DIMENSION, imageInputPlane, imageOutputPlane, FFTW_FORWARD, FFTW_ESTIMAT=
E);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftw_execute(planeX);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftw_destroy_plan(planeX);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; fftLock.unlock();<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; double max=3D0;<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; for(size_t row=3D0;row&lt;IMAGE_DIMENSION;row&#43;&#43;){<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; for(size_t col=3D0;col&lt;IMAGE_DIMENSION;col&#=
43;&#43;){<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if(col=3D=3D0)printf(&quot;\n&quo=
t;);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if(col&lt;100){<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; printf(&quot;(%lf,%=
lf)&quot;,imageOutputPlane[row*IMAGE_DIMENSION&#43;col][0],imageOutputPlane=
[row*IMAGE_DIMENSION&#43;col][1]);<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-size:16px; font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont">
&nbsp; &nbsp; }</div>
<br>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<div id=3D"x_Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"">
<p style=3D""><font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koy=
el Das &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b=
r>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: &#43;919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" =
style=3D"font-size:16px"><font style=3D"font-size:9pt">T: &#43;91&nbsp;33 4=
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.veher=
e.com/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.veh=
ere.com</a></font></font><font face=3D"Tahoma,serif" style=3D"font-size:16p=
x"><font style=3D"font-size:9pt"><i></i></font></font><br>
</div>
</div>
</div>
</blockquote>
I'm having a hard time seeing how this is related to UHD and USRPs.<br>
<br>
There's probably a support forum for FFTW out there that would be more help=
ful than here.<br>
<br>
<br>
</div>
</body>
</html>

--_000_PN1PR01MB07204B747EB64638A392FDA8900B0PN1PR01MB0720INDP_--


--===============6031696143474335244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6031696143474335244==--

