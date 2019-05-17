Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C54213D4
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2019 08:45:11 +0200 (CEST)
Received: from [::1] (port=41198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRWc7-0000yx-TY; Fri, 17 May 2019 02:45:07 -0400
Received: from mail-eopbgr1380091.outbound.protection.outlook.com
 ([40.107.138.91]:60730 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.91) (envelope-from <koyel.das@vehere.com>)
 id 1hRWbZ-0000rk-Ix
 for usrp-users@lists.ettus.com; Fri, 17 May 2019 02:45:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector1-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pxAXXIsL6mfxcMC5G6tF6kAPhS8Hp5Ey6RDok50kii4=;
 b=7lbwUzc/gMK8xRCvZ5/PI6qxLZ+5PfUFOvQ01da9pu1DV7oMc8c0tpwSW4pBbpqUq9pPN265Gmpjxvi+1p5Dd7qBSr9x/xEcJKXHTGYKy1oheJZ0A51NR4dj0lEsUr2nGCWcyRsAk2YiSfbKaMBIMCSJUrZ06RzM4sZWXt5yPQw=
Received: from PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM (10.174.145.145) by
 PN1PR01MB0671.INDPRD01.PROD.OUTLOOK.COM (10.174.145.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 06:43:49 +0000
Received: from PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2528:ef0f:b42e:c29d]) by PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::2528:ef0f:b42e:c29d%4]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 06:43:49 +0000
To: Samuel Prager <sprager@usc.edu>
Thread-Topic: [USRP-users] problem with fftw_plan_dft_2d
Thread-Index: AQHVDGP/ZQ4NjjVujk2QyAgKbkDW5KZusIgAgAADhWaAABaWAIAAFAFP
Date: Fri, 17 May 2019 06:43:49 +0000
Message-ID: <PN1PR01MB072053B3B8BE8A751B16090B900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
 <5CDE312E.8040807@gmail.com>
 <PN1PR01MB07204B747EB64638A392FDA8900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>,
 <045adbf1-6a87-4e46-a3d7-4e49aeed6e14@Spark>
In-Reply-To: <045adbf1-6a87-4e46-a3d7-4e49aeed6e14@Spark>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=koyel.das@vehere.com; 
x-originating-ip: [14.143.49.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a60ecb3-9c67-4190-816e-08d6da9304ce
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(7168020)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:PN1PR01MB0671; 
x-ms-traffictypediagnostic: PN1PR01MB0671:
x-ms-exchange-purlcount: 8
x-microsoft-antispam-prvs: <PN1PR01MB0671586F500F30E71C690B4F900B0@PN1PR01MB0671.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(39830400003)(376002)(366004)(396003)(199004)(365934003)(189003)(7736002)(9686003)(68736007)(236005)(6306002)(733005)(8676002)(81166006)(81156014)(6436002)(66066001)(76176011)(8936002)(102836004)(6916009)(7696005)(33656002)(316002)(55016002)(229853002)(966005)(186003)(19627405001)(26005)(508600001)(53546011)(99286004)(55236004)(73956011)(66946007)(66476007)(66556008)(64756008)(53936002)(2906002)(78486014)(6506007)(76116006)(6606003)(66446008)(2171002)(6246003)(91956017)(54896002)(71190400001)(476003)(71200400001)(11346002)(66574012)(5660300002)(446003)(52536014)(25786009)(14454004)(6116002)(3846002)(74316002)(5024004)(14444005)(256004)(4326008)(606006)(86362001)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PN1PR01MB0671;
 H:PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: vehere.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3ImlhmKs08gYvc/3kuoenOoJNDfIoaa0k7TNFtj70Qfe9KpQ66ChEyTFq3DA1+D1otv5DayOh36G0A1uSBLcFw7/huy+kZs6xYrrK/vAJHDnfirGpRnHaXi6zSeXlMeCKb/S28hbhj7aZ35hEdiwfSmFlT2fDZZdDfT2jex2UOAP3XKLN13AZryIfpFh7JAKbLm32Pj/aTcDPx1tO3acPQgSUkR4HdhO8Urj8p4FysF+itMEGpkSEjUFKgO/wwxjAEe2uQdUV8wwR1um4jmRvBqvTBq/yO0xS3GUpruX+YIiTTiS/XoHSM6dT0jk7ucJvQAFfwECszCzGnVmYlVT3kPz7wxnHwGSlqm7Z1BZ6wpWJlabBStY9ieq2wpcrcvIKgoadbVKb1mSLyIYU1nc2vKiJ94cE95qFmy0Y4b5Vjk=
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a60ecb3-9c67-4190-816e-08d6da9304ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 06:43:49.4163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0671
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
Cc: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2395926333089872302=="
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

--===============2395926333089872302==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB072053B3B8BE8A751B16090B900B0PN1PR01MB0720INDP_"

--_000_PN1PR01MB072053B3B8BE8A751B16090B900B0PN1PR01MB0720INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Samuel,


I have checked 2d FFT for the same data in MATLAB and there the imaginary a=
re non zero. So its not due to property of DFT.


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
From: Samuel Prager <sprager@usc.edu>
Sent: Friday, May 17, 2019 11:01:00 AM
To: Koyel Das (Vehere)
Cc: Marcus D. Leech via USRP-users
Subject: Re: [USRP-users] problem with fftw_plan_dft_2d

From a cursory glance it looks like you are creating (hermetian) symmetry i=
n your data with phy [whatever][whatever]

I would suggest reviewing the properties of the discrete Fourier transform.
On May 16, 2019, 9:11 PM -0700, Koyel Das (Vehere) via USRP-users <usrp-use=
rs@lists.ettus.com>, wrote:

Hi Marcus,


I emailed to fftw@fftw.org<mailto:fftw@fftw.org> but got no response so I t=
hought some USRP users might also be using this library and hence I may get=
 a response. That is why.


Regards,

Koyel Das

Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.vehere.com_&d=
=3DDwMF-g&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF05=
9tAs2i3Pg&m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&s=3DiZCiVpP9F-vIO=
8i9kvKmEOxr0v4DWyZhNboftC1fFzw&e=3D>

[unnamed]<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.linked=
in.com_company_vehere-2Dinteractive-2Dp-2Dltd&d=3DDwMF-g&c=3DclK7kQUTWtAVEO=
VIgvi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF059tAs2i3Pg&m=3D-qnV50ad393nJa=
YxBSJrDtf-lbPbX2g22z_VrjcI6hE&s=3DvVjJUZ9f5_1YyXYaaEUe2Cd65eWLCqQe_tjnLnG16=
es&e=3D> [unnamed (1)] <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__twitter.com_VehereIndia&d=3DDwMF-g&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H=
8p7CSfnc_gI&r=3DopIuWAKmywF059tAs2i3Pg&m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g2=
2z_VrjcI6hE&s=3Dy0xzq_cb11Rg3_cRs8avpT0yRw9KdVe_PUcsUx0IaGc&e=3D>  [unnamed=
 (2)] <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.facebook.=
com_VehereIndia_&d=3DDwMF-g&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI=
&r=3DopIuWAKmywF059tAs2i3Pg&m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE=
&s=3DiG-fGGkhjzHA7j39KWWV_Btvg0kbAysoz3t3A3IAW8g&e=3D>

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
com<https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.vehere.com_&d=
=3DDwMF-g&c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF05=
9tAs2i3Pg&m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&s=3DiZCiVpP9F-vIO=
8i9kvKmEOxr0v4DWyZhNboftC1fFzw&e=3D>
I'm having a hard time seeing how this is related to UHD and USRPs.

There's probably a support forum for FFTW out there that would be more help=
ful than here.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwICAg&c=3DclK7kQUTWtAVEOVIg=
vi0NU5BOUHhpN0H8p7CSfnc_gI&r=3DopIuWAKmywF059tAs2i3Pg&m=3D-qnV50ad393nJaYxB=
SJrDtf-lbPbX2g22z_VrjcI6hE&s=3Dv3PIq2NHPrK8xhyDNyIJd7OgWYtaTPicFlzxjtAZTJU&=
e=3D

--_000_PN1PR01MB072053B3B8BE8A751B16090B900B0PN1PR01MB0720INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Samuel,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I have checked 2d FFT for the sam=
e data in MATLAB and there the imaginary are non zero. So its not due to pr=
operty of DFT.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<div id=3D"Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px; line-h=
eight:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Samuel Prager &lt;spr=
ager@usc.edu&gt;<br>
<b>Sent:</b> Friday, May 17, 2019 11:01:00 AM<br>
<b>To:</b> Koyel Das (Vehere)<br>
<b>Cc:</b> Marcus D. Leech via USRP-users<br>
<b>Subject:</b> Re: [USRP-users] problem with fftw_plan_dft_2d</font>
<div>&nbsp;</div>
</div>
<div>
<div name=3D"x_messageBodySection">From a cursory glance it looks like you =
are creating (hermetian) symmetry in your data with phy [whatever][whatever=
]
<div><br>
</div>
<div>I would suggest reviewing the properties of the discrete Fourier trans=
form.&nbsp;</div>
</div>
<div name=3D"x_messageReplySection">On May 16, 2019, 9:11 PM -0700, Koyel D=
as (Vehere) via USRP-users &lt;usrp-users@lists.ettus.com&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"margin:5px 5px; padding-left:10px; borde=
r-left:thin solid #1abc9c">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Hi Marcus,</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
I emailed to&nbsp;<a href=3D"mailto:fftw@fftw.org" target=3D"_blank" rel=3D=
"noopener noreferrer" id=3D"LPlnk140442" style=3D"color:rgb(170,0,0); font-=
family:&quot;Times New Roman&quot;">fftw@fftw.org</a>&nbsp;but got no respo=
nse so I thought some&nbsp;USRP users might also be using this library
 and hence I may get a&nbsp;response. That is why.</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
Regards,</p>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-size:9pt; fo=
nt-family:Tahoma,serif">Koyel Das&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;</span><br>
</p>
<div id=3D"x_Signature">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
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
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"https://urldefen=
se.proofpoint.com/v2/url?u=3Dhttp-3A__www.vehere.com_&amp;d=3DDwMF-g&amp;c=
=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3=
Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3DiZCiVpP9F-vI=
O8i9kvKmEOxr0v4DWyZhNboftC1fFzw&amp;e=3D" target=3D"_blank" rel=3D"noopener=
 noreferrer" id=3D"LPNoLP">www.vehere.com</a></font></font><font face=3D"Ta=
homa,serif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A=
__www.linkedin.com_company_vehere-2Dinteractive-2Dp-2Dltd&amp;d=3DDwMF-g&am=
p;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs=
2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3DvVjJUZ9f5=
_1YyXYaaEUe2Cd65eWLCqQe_tjnLnG16es&amp;e=3D" target=3D"_blank" rel=3D"noope=
ner noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-size=
:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:=
none"><img border=3D"0" alt=3D"unnamed" style=3D"width:18pt; height:18pt" s=
rc=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=
=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=
=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8Gn=
DWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&am=
p;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span=
></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial=
,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://urldefense.pro=
ofpoint.com/v2/url?u=3Dhttps-3A__twitter.com_VehereIndia&amp;d=3DDwMF-g&amp=
;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2=
i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3Dy0xzq_cb11=
Rg3_cRs8avpT0yRw9KdVe_PUcsUx0IaGc&amp;e=3D" target=3D"_blank" rel=3D"noopen=
er noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:=
9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-line:n=
one"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:18pt=
" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;v=
iew=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;att=
bid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plE=
kGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48=
&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></s=
pan></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://urldefense.=
proofpoint.com/v2/url?u=3Dhttps-3A__www.facebook.com_VehereIndia_&amp;d=3DD=
wMF-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmy=
wF059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3Di=
G-fGGkhjzHA7j39KWWV_Btvg0kbAysoz3t3A3IAW8g&amp;e=3D" target=3D"_blank" rel=
=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); =
font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decorat=
ion-line:none"><img border=3D"0" alt=3D"unnamed (2)" style=3D"width:18pt; h=
eight:18pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534b=
b6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3De=
mb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1=
Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=
=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;ats=
h=3D1"></span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font=
-family:Arial,sans-serif,serif,EmojiFont">&nbsp;&nbsp;</span><span style=3D=
"color:rgb(34,34,34); font-family:Tahoma,sans-serif,serif,EmojiFont"><br>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, May 17, 2019 9:27:34 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] problem with fftw_plan_dft_2d</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 05/16/2019 11:52 PM, Koyel Das (Veher=
e) via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite" style=3D"margin:5px 5px; padding-left:10px; borde=
r-left:thin solid #e67e22">
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; c=
olor:#000000; font-family:Calibri,Helvetica,sans-serif">
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
<div id=3D"x_x_Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"">
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
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"https://urldefen=
se.proofpoint.com/v2/url?u=3Dhttp-3A__www.vehere.com_&amp;d=3DDwMF-g&amp;c=
=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3=
Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3DiZCiVpP9F-vI=
O8i9kvKmEOxr0v4DWyZhNboftC1fFzw&amp;e=3D" target=3D"_blank" rel=3D"noopener=
 noreferrer" id=3D"LPNoLP">www.vehere.com</a></font></font><font face=3D"Ta=
homa,serif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><i></i><=
/font></font><br>
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
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwICAg&amp;c=3DclK7kQUTW=
tAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc_gI&amp;r=3DopIuWAKmywF059tAs2i3Pg&amp;m=3D-=
qnV50ad393nJaYxBSJrDtf-lbPbX2g22z_VrjcI6hE&amp;s=3Dv3PIq2NHPrK8xhyDNyIJd7Og=
WYtaTPicFlzxjtAZTJU&amp;e=3D<br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_PN1PR01MB072053B3B8BE8A751B16090B900B0PN1PR01MB0720INDP_--


--===============2395926333089872302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2395926333089872302==--

