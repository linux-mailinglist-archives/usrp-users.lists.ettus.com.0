Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5408C21372
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2019 07:35:18 +0200 (CEST)
Received: from [::1] (port=34148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRVWQ-00071e-C4; Fri, 17 May 2019 01:35:10 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:38564)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sprager@usc.edu>) id 1hRVVt-0006tb-0z
 for usrp-users@lists.ettus.com; Fri, 17 May 2019 01:35:06 -0400
Received: by mail-ot1-f50.google.com with SMTP id s19so5657417otq.5
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 22:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usc-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version; bh=EXKXc8lUSXH5ty519932RmTwAxb3NL7E8vr0/a0Sfe0=;
 b=SS96mPMOQKEToedssULOcXjZ9wDo1iNtNI/yXCFA/UQI6oeUFk9VyD66/iAOB4NiWi
 rS3Be5YKx+BsFXRFfGlFpGOqwiDgWjjbcuigrzkLGHQDqVubJWwwOMP366T8jEUER02H
 C0l4S0zWMy07an0JVj+32F7qMqMAWM/GMBsa3R2oI6SrZVvDZ5yFPcF8sZpJnKh7D4dt
 dTKOfg4E5QBHcK2RuF8/xun/7UKLG4O0Nga6AlCUZm17dxInHmF/ZWi30AVs17t/DZPq
 uwovqTmBEQaTQ/nucog+i4biy9xOfzsWLfBqpWK3P8NH5KeJhO4JBl13EdFEKrltrzMw
 3/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version;
 bh=EXKXc8lUSXH5ty519932RmTwAxb3NL7E8vr0/a0Sfe0=;
 b=MARAQUzLQEH3s4Qpn3bfGhH+yaI97hT+4Uo4k/wwk3v5DRPTUFLiv97MT2asbNfjSR
 /vEdeU8sSz1FHWu8qxMQNb4x08Hk8knXizQYQAhSDQa6DJD0t51tXwqdyTmRU7wb7c8J
 NprqBOkN2uVyKgYPIyvVZfQWj8vxs32lNvjL2y0P6OzLj4iLGC7kMWFZhpgxAS5sfHex
 dmILXv7Hrp0+qn8tYlBm0I6UJ4+b+CBnu9+CGEuEum+120m3VwaLIBKMdnRNFo6M5Jph
 BnRkymAeZLVR4s6SLMyqxBhUZd9xJ0lle5AfSs9zNB77PZxkhOyTCKzTUdulmhA9dNsP
 uRMw==
X-Gm-Message-State: APjAAAUGUnsYBQ9R/TG2TfMhPCf2NTqtjQregzXCEsjXkE0DMUQ6bKLT
 GmQa8dkuZtVGXOM3IbPeNtfP29aNP3gtgw==
X-Google-Smtp-Source: APXvYqyOcF+GPYcGW9xkrsaK/FqkzI+glc/TtoNAA7+WybyFr92Qu6xbBbQy0QoHOG7KdwlcvccvzQ==
X-Received: by 2002:a9d:6758:: with SMTP id w24mr2428814otm.294.1558071236228; 
 Thu, 16 May 2019 22:33:56 -0700 (PDT)
Received: from [2600:1700:e200:2ac0:500::]
 ([2600:1700:e200:2ac0:b928:d95e:c1ec:932d])
 by smtp.gmail.com with ESMTPSA id c7sm1436636oia.47.2019.05.16.22.33.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 22:33:55 -0700 (PDT)
Date: Thu, 16 May 2019 22:31:00 -0700
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Message-ID: <045adbf1-6a87-4e46-a3d7-4e49aeed6e14@Spark>
In-Reply-To: <PN1PR01MB07204B747EB64638A392FDA8900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
 <5CDE312E.8040807@gmail.com>
 <PN1PR01MB07204B747EB64638A392FDA8900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
X-Readdle-Message-ID: 045adbf1-6a87-4e46-a3d7-4e49aeed6e14@Spark
MIME-Version: 1.0
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
From: Samuel Prager via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Samuel Prager <sprager@usc.edu>
Cc: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2799777102712734547=="
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

--===============2799777102712734547==
Content-Type: multipart/alternative; boundary="5cde47c1_327b23c6_4cce"

--5cde47c1_327b23c6_4cce
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

=46rom a cursory glance it looks like you are creating (hermetian) symmet=
ry in your data with phy =5Bwhatever=5D=5Bwhatever=5D

I would suggest reviewing the properties of the discrete =46ourier transf=
orm.
On May 16, 2019, 9:11 PM -0700, Koyel Das (Vehere) via USRP-users <usrp-u=
sers=40lists.ettus.com>, wrote:
> Hi Marcus,
>
> I emailed to=C2=A0fftw=40fftw.org=C2=A0but got no response so I thought=
 some=C2=A0USRP users might also be using this library and hence I may ge=
t a=C2=A0response. That is why.
>
> Regards,
> Koyel Das
> Senior =E2=80=93 Product Engineer
> Vehere =7C Proactive Communications Intelligence & Cyber Defence
> M: +919051132173=C2=A0=7C=C2=A0T: +91=C2=A033 40545454 =7C =46: +91=C2=A0=
33 40545455 =7C W:=C2=A0www.vehere.com
>
>
>
> Vehere is the proud recipient of the =46astest Growing Technology Compa=
ny Awards in India & Asia since 2012=21
>
> The content of this e-mail is confidential and intended solely for the =
use of the addressee. The text of this email (including any attachments) =
may contain information, which is proprietary and/or confidential or priv=
ileged in nature belonging to Vehere Interactive Pvt Ltd and/or its assoc=
iates/ group companies/ subsidiaries. If you are not the addressee, or th=
e person responsible for delivering it to the addressee, any disclosure, =
copying, distribution or any action taken or omitted to be taken in relia=
nce on it is prohibited and may be unlawful. If you have received this e-=
mail in error, please notify the sender and remove this communication ent=
irely from your system. The recipient acknowledges that no guarantee or a=
ny warranty is given as to completeness and accuracy of the content of th=
e email. The recipient further acknowledges that the views contained in t=
he email message are those of the sender and may not necessarily reflect =
those of Vehere Interactive Pvt Ltd. Before opening and accessing the att=
achment please check and scan for virus. WARNING: Computer viruses can be=
 transmitted via email. The recipient should check this email and any att=
achments for the presence of viruses. The company accepts no liability fo=
r any damage caused by any virus transmitted by this email.
> =46rom: USRP-users <usrp-users-bounces=40lists.ettus.com> on behalf of =
Marcus D. Leech via USRP-users <usrp-users=40lists.ettus.com>
> Sent: =46riday, May 17, 2019 9:27:34 AM
> To: usrp-users=40lists.ettus.com
> Subject: Re: =5BUSRP-users=5D problem with fftw=5Fplan=5Fdft=5F2d
>
> On 05/16/2019 11:52 PM, Koyel Das (Vehere) via USRP-users wrote:
> > Hi,
> >
> > =46ollowing is a snapshot of my code using=C2=A0fftw=5Fplan=5Fdft=5F2=
d. I am getting all zeros in the imaginary part of fft (in the=C2=A0print=
f command of the following code:last line). The real part is correct.Coul=
d you please tell where am I going wrong=3F
> >
> > =C2=A0fftw=5Fcomplex *imageOutputPlane=3DVDDSAlgorithm::imageOutPlane=
;
> > =C2=A0 =C2=A0 fftw=5Fcomplex *imageInputPlane=3DVDDSAlgorithm::imageI=
nputPlane;
> > =C2=A0 =C2=A0 unsigned char*imageData=3DVDDSAlgorithm::imageData;
> > =C2=A0 =C2=A0 unsigned char*imageData=46inal=3DVDDSAlgorithm::imageDa=
ta=46inal;
> >
> > =C2=A0 =C2=A0 memset(imageInputPlane,0x0,IMAGE=5FDIMENSION*IMAGE=5FDI=
MENSION*sizeof(fftw=5Fcomplex));
> > =C2=A0 =C2=A0 memset(imageOutputPlane,0x0,IMAGE=5FDIMENSION*IMAGE=5FD=
IMENSION*sizeof(fftw=5Fcomplex));
> > =C2=A0 =C2=A0 memset(imageData,0x0,IMAGE=5FDIMENSION*IMAGE=5FDIMENSIO=
N);
> >
> > =C2=A0 =C2=A0 for(size=5Ft count=3D0;count<TOTAL=5FBASE=5FLINE;count+=
+)=7B
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0imageInputPlane=5B(int)round(IMAGE=5FDIMEN=
SION/2+diffX=5Bcount=5D)*IMAGE=5FDIMENSION+(int)round(IMAGE=5FDIMENSION/2=
-diffY=5Bcount=5D)=5D=5B0=5D=3Dphy=5Bcount=5D=5B0=5D;
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0imageInputPlane=5B(int)round(IMAGE=5FDIMEN=
SION/2+diffX=5Bcount=5D)*IMAGE=5FDIMENSION+(int)round(IMAGE=5FDIMENSION/2=
-diffY=5Bcount=5D)=5D=5B1=5D=3D-(phy=5Bcount=5D=5B1=5D);
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0imageInputPlane=5B(int)round(IMAGE=5FDIMEN=
SION/2-diffX=5Bcount=5D)*IMAGE=5FDIMENSION+(int)round(IMAGE=5FDIMENSION/2=
+diffY=5Bcount=5D)=5D=5B0=5D=3Dphy=5Bcount=5D=5B0=5D;
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0imageInputPlane=5B(int)round(IMAGE=5FDIMEN=
SION/2-diffX=5Bcount=5D)*IMAGE=5FDIMENSION+(int)round(IMAGE=5FDIMENSION/2=
+diffY=5Bcount=5D)=5D=5B1=5D=3Dphy=5Bcount=5D=5B1=5D;
> > =C2=A0 =C2=A0 =7D
> >
> > =C2=A0 =C2=A0 fftLock.lock();
> > =C2=A0 =C2=A0 fftw=5Fplan =C2=A0planeX=3Dfftw=5Fplan=5Fdft=5F2d(IMAGE=
=5FDIMENSION,IMAGE=5FDIMENSION, imageInputPlane, imageOutputPlane, =46=46=
TW=5F=46ORWARD, =46=46TW=5FESTIMATE);
> > =C2=A0 =C2=A0 fftw=5Fexecute(planeX);
> > =C2=A0 =C2=A0 fftw=5Fdestroy=5Fplan(planeX);
> > =C2=A0 =C2=A0 fftLock.unlock();
> >
> >
> > =C2=A0 =C2=A0 double max=3D0;
> > =C2=A0 =C2=A0 for(size=5Ft row=3D0;row<IMAGE=5FDIMENSION;row++)=7B
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 for(size=5Ft col=3D0;col<IMAGE=5FDIMENSIO=
N;col++)=7B
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(col=3D=3D0)printf(=22=5C=
n=22);
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(col<100)=7B
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(=22(%l=
f,%lf)=22,imageOutputPlane=5Brow*IMAGE=5FDIMENSION+col=5D=5B0=5D,imageOut=
putPlane=5Brow*IMAGE=5FDIMENSION+col=5D=5B1=5D);
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =7D
> >
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =7D
> > =C2=A0 =C2=A0 =7D
> >
> > Regards,
> > Koyel Das
> > Senior =E2=80=93 Product Engineer
> > Vehere =7C Proactive Communications Intelligence & Cyber Defence
> > M: +919051132173=C2=A0=7C=C2=A0T: +91=C2=A033 40545454 =7C =46: +91=C2=
=A033 40545455 =7C W:=C2=A0www.vehere.com
> I'm having a hard time seeing how this is related to UHD and USRPs.
>
> There's probably a support forum for =46=46TW out there that would be m=
ore helpful than here.
>
>
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> USRP-users mailing list
> USRP-users=40lists.ettus.com
> https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ettus=
.com=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&d=3DDwICAg&c=
=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&r=3DopIuWAKmyw=46059tAs2=
i3Pg&m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z=5FVrjcI6hE&s=3Dv3PIq2NHPrK8xh=
yDNyIJd7OgWYtaTPic=46lzxjtAZTJU&e=3D

--5cde47c1_327b23c6_4cce
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>=46rom a cursory glance it looks lik=
e you are creating (hermetian) symmetry in your data with phy =5Bwhatever=
=5D=5Bwhatever=5D
<div><br /></div>
<div>I would suggest reviewing the properties of the discrete =46ourier t=
ransform.&=23160;</div>
</div>
<div name=3D=22messageReplySection=22>On May 16, 2019, 9:11 PM -0700, Koy=
el Das (Vehere) via USRP-users &lt;usrp-users=40lists.ettus.com&gt;, wrot=
e:<br />
<blockquote type=3D=22cite=22 style=3D=22margin: 5px 5px; padding-left: 1=
0px; border-left: thin solid =231abc9c;=22>
<div id=3D=22divtagdefaultwrapper=22 style=3D=22font-size:12pt;color:=230=
00000;font-family:Calibri,Helvetica,sans-serif;=22 dir=3D=22ltr=22>
<p style=3D=22margin-top:0;margin-bottom:0=22></p>
<p style=3D=22font-family: Calibri, Helvetica, sans-serif, Emoji=46ont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;=22>Hi Marcus,</p>
<p style=3D=22font-family: Calibri, Helvetica, sans-serif, Emoji=46ont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;=22><br /></p>
<p style=3D=22font-family: Calibri, Helvetica, sans-serif, Emoji=46ont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;=22>I emailed to&=23160;<a href=3D=22mailto:fftw=40fftw.org=
=22 target=3D=22=5Fblank=22 rel=3D=22noopener noreferrer=22 data-auth=3D=22=
NotApplicable=22 id=3D=22LPlnk140442=22 style=3D=22color: rgb(170, 0, 0);=
 font-family: &quot;Times New Roman&quot;;=22 previewremoved=3D=22true=22=
>fftw=40fftw.org</a>&=23160;but got no response so I thought some&=23160;=
USRP users might also be using this library and hence I may get a&=23160;=
response. That is why.</p>
<p style=3D=22font-family: Calibri, Helvetica, sans-serif, Emoji=46ont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;=22><br /></p>
<p style=3D=22font-family: Calibri, Helvetica, sans-serif, Emoji=46ont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;=22>Regards,</p>
<p></p>
<p style=3D=22margin-top:0;margin-bottom:0=22><span style=3D=22font-size:=
 9pt; font-family: Tahoma, serif;=22>Koyel Das&=23160; &=23160; &=23160; =
&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160;</s=
pan><br /></p>
<div id=3D=22Signature=22>
<div id=3D=22divtagdefaultwrapper=22 dir=3D=22ltr=22 style=3D=22font-size=
: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif,=
 Emoji=46ont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, =
NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, E=
mojiSymbols;=22>
<p style=3D=22font-family:Calibri,Helvetica,sans-serif,Emoji=46ont,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;S=
egoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16=
px; line-height:16px=22><font face=3D=22Tahoma,serif=22><font style=3D=22=
font-size:9pt=22>Senior =E2=80=93 Product Engineer</font></font></p>
<font face=3D=22Tahoma,serif=22 style=3D=22font-size:16px=22><font style=3D=
=22font-size:9pt=22>Vehere =7C Proactive Communications Intelligence &amp=
; Cyber Defence</font></font><font face=3D=22Tahoma,serif=22 style=3D=22f=
ont-size:16px=22><font style=3D=22font-size:9pt=22><br />
M: +919051132173&=23160;=7C&=23160;</font></font><font face=3D=22Tahoma,s=
erif=22 style=3D=22font-size:16px=22><font style=3D=22font-size:9pt=22>T:=
 +91&=23160;33 40545454 =7C =46: +91&=23160;33 40545455 =7C W:&=23160;<a =
href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Fwww=
.vehere.com=5F&amp;d=3DDwM=46-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8=
p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJ=
rDtf-lbPbX2g22z=5FVrjcI6hE&amp;s=3DiZCiVpP9=46-vIO8i9kvKmEOxr0v4DWyZhNbof=
tC1f=46zw&amp;e=3D=22 target=3D=22=5Fblank=22 rel=3D=22noopener noreferre=
r=22 id=3D=22LPNoLP=22>www.vehere.com</a></font></font><font face=3D=22Ta=
homa,serif=22 style=3D=22font-size:16px=22><font style=3D=22font-size:9pt=
=22><i><br /></i></font></font><br style=3D=22font-family:Calibri,Helveti=
ca,sans-serif,Emoji=46ont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&=
quot;,EmojiSymbols; font-size:16px=22 />
<font face=3D=22Tahoma,serif=22 style=3D=22font-size:16px=22><font style=3D=
=22font-size:9pt=22><i><a href=3D=22https://urldefense.proofpoint.com/v2/=
url=3Fu=3Dhttps-3A=5F=5Fwww.linkedin.com=5Fcompany=5Fvehere-2Dinteractive=
-2Dp-2Dltd&amp;d=3DDwM=46-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CS=
fnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf=
-lbPbX2g22z=5FVrjcI6hE&amp;s=3DvVjJUZ9f5=5F1YyXYaaEUe2Cd65eWLCqQe=5FtjnLn=
G16es&amp;e=3D=22 target=3D=22=5Fblank=22 rel=3D=22noopener noreferrer=22=
 id=3D=22LPNoLP=22><span style=3D=22color:rgb(34,34,34); font-size:9.5pt;=
 font-family:Arial,sans-serif,serif,Emoji=46ont; text-decoration-line:non=
e=22><img border=3D=220=22 alt=3D=22unnamed=22 style=3D=22width: 18pt; he=
ight: 18pt; user-select: none;=22 src=3D=22https://mail.google.com/mail/u=
/0/=3Fui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe8=
9&amp;attid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ=5Fcw8QOmJOuH5dOGgYLO=
xSybsCNVtf-NS=5FWwKXHuMOvYfeSER9hREJrjlPe=463OcG8GnDWaciM5m8KcKUu6kcoQwHm=
ym=46im1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245=
179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1=22 /></span></a><span s=
tyle=3D=22color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-se=
rif,serif,Emoji=46ont=22>&=23160;</span><a href=3D=22https://urldefense.p=
roofpoint.com/v2/url=3Fu=3Dhttps-3A=5F=5Ftwitter.com=5FVehereIndia&amp;d=3D=
DwM=46-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3Dop=
IuWAKmyw=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z=5FVrjcI=
6hE&amp;s=3Dy0xzq=5Fcb11Rg3=5FcRs8avpT0yRw9KdVe=5FPUcsUx0IaGc&amp;e=3D=22=
 target=3D=22=5Fblank=22 rel=3D=22noopener noreferrer=22 id=3D=22LPNoLP=22=
><span style=3D=22color:rgb(34,34,34); font-size:9.5pt; font-family:Arial=
,sans-serif,serif,Emoji=46ont; text-decoration-line:none=22><img border=3D=
=220=22 alt=3D=22unnamed (1)=22 style=3D=22width: 18pt; height: 18pt; use=
r-select: none;=22 src=3D=22https://mail.google.com/mail/u/0/=3Fui=3D2&am=
p;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0=
.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8=5F66KixMdVQ5nVZKUBvlRtQ=
=5FpTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aW=46dkAnUmOv3L6NAa=
CgYTaxHO=5F-lXX=46vlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D=
15cd46f4a213fe89&amp;zw&amp;atsh=3D1=22 /></span></a><span style=3D=22col=
or:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emo=
ji=46ont=22>&=23160;</span><a href=3D=22https://urldefense.proofpoint.com=
/v2/url=3Fu=3Dhttps-3A=5F=5Fwww.facebook.com=5FVehereIndia=5F&amp;d=3DDwM=
=46-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuW=
AKmyw=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z=5FVrjcI6hE=
&amp;s=3DiG-fGGkhjzHA7j39KWWV=5FBtvg0kbAysoz3t3A3IAW8g&amp;e=3D=22 target=
=3D=22=5Fblank=22 rel=3D=22noopener noreferrer=22 id=3D=22LPNoLP=22><span=
 style=3D=22color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-=
serif,serif,Emoji=46ont; text-decoration-line:none=22><img border=3D=220=22=
 alt=3D=22unnamed (2)=22 style=3D=22width: 18pt; height: 18pt; user-selec=
t: none;=22 src=3D=22https://mail.google.com/mail/u/0/=3Fui=3D2&amp;ik=3D=
c1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.3&amp;=
disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3Pfa=46GXC98=
wY0jrXYMynJ1=46l8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qo=
jICfael=5Fk&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a21=
3fe89&amp;zw&amp;atsh=3D1=22 /></span></a><span style=3D=22color:rgb(34,3=
4,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Emoji=46ont=22=
>&=23160;&=23160;</span><span style=3D=22color:rgb(34,34,34); font-family=
:Tahoma,sans-serif,serif,Emoji=46ont=22><br /></span><br />
Vehere is the proud recipient of the =46astest Growing Technology Company=
 Awards in India &amp; Asia since 2012=21</i></font></font><font face=3D=22=
Tahoma,serif=22 style=3D=22font-size:16px=22><font style=3D=22font-size:9=
pt=22><br />
<br />
The content of this e-mail is confidential and intended solely for the us=
e of the addressee. The text of this email (including any attachments) ma=
y contain information, which is proprietary and/or confidential or privil=
eged in nature belonging to Vehere Interactive Pvt Ltd and/or its associa=
tes/ group companies/ subsidiaries. If you are not the addressee, or the =
person responsible for delivering it to the addressee, any disclosure, co=
pying, distribution or any action taken or omitted to be taken in relianc=
e on it is prohibited and may be unlawful. If you have received this e-ma=
il in error, please notify the sender and remove this communication entir=
ely from your system. The recipient acknowledges that no guarantee or any=
 warranty is given as to completeness and accuracy of the content of the =
email. The recipient further acknowledges that the views contained in the=
 email message are those of the sender and may not necessarily reflect th=
ose of Vehere Interactive Pvt Ltd. Before opening and accessing the attac=
hment please check and scan for virus. WARNING: Computer viruses can be t=
ransmitted via email. The recipient should check this email and any attac=
hments for the presence of viruses. The company accepts no liability for =
any damage caused by any virus transmitted by this email.</font></font><b=
r />
<p></p>
</div>
</div>
</div>
<hr style=3D=22display:inline-block;width:98%=22 tabindex=3D=22-1=22 />
<div id=3D=22divRply=46wdMsg=22 dir=3D=22ltr=22><font face=3D=22Calibri, =
sans-serif=22 style=3D=22font-size:11pt=22 color=3D=22=23000000=22><b>=46=
rom:</b> USRP-users &lt;usrp-users-bounces=40lists.ettus.com&gt; on behal=
f of Marcus D. Leech via USRP-users &lt;usrp-users=40lists.ettus.com&gt;<=
br />
<b>Sent:</b> =46riday, May 17, 2019 9:27:34 AM<br />
<b>To:</b> usrp-users=40lists.ettus.com<br />
<b>Subject:</b> Re: =5BUSRP-users=5D problem with fftw=5Fplan=5Fdft=5F2d<=
/font>
<div>&=23160;</div>
</div>
<div style=3D=22background-color:=23=46=46=46=46=46=46=22>
<div class=3D=22x=5Fmoz-cite-prefix=22>On 05/16/2019 11:52 PM, Koyel Das =
(Vehere) via USRP-users wrote:<br /></div>
<blockquote type=3D=22cite=22 style=3D=22margin: 5px 5px; padding-left: 1=
0px; border-left: thin solid =23e67e22;=22>
<style type=3D=22text/css=22 style=3D=22display:none=22>
/*<=21=5BCDATA=5B*/
<=21--
p
        =7Bmargin-top:0;
        margin-bottom:0=7D
-->
/*=5D=5D>*/
</style>
<div id=3D=22x=5Fdivtagdefaultwrapper=22 dir=3D=22ltr=22 style=3D=22font-=
size:12pt; color:=23000000; font-family:Calibri,Helvetica,sans-serif=22>
<p style=3D=22=22>Hi,</p>
<p style=3D=22=22><br /></p>
<p style=3D=22=22>=46ollowing is a snapshot of my code using&=23160;<span=
 style=3D=22font-family:Calibri,Arial,Helvetica,sans-serif,serif,Emoji=46=
ont=22>fftw=5Fplan=5Fdft=5F2d</span>. I am getting all zeros in the imagi=
nary part of fft (in the&=23160;printf command of the following code:last=
 line). The real part is correct.Could you please tell where am I going w=
rong=3F</p>
<p style=3D=22=22><br /></p>
<p style=3D=22=22><span style=3D=22font-family:Calibri,Arial,Helvetica,sa=
ns-serif,serif,Emoji=46ont=22>&=23160;fftw=5Fcomplex *imageOutputPlane=3D=
VDDSAlgorithm::imageOutPlane;<br /></span> <span style=3D=22font-family:C=
alibri,Arial,Helvetica,sans-serif,serif,Emoji=46ont=22></span></p>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftw=5Fcomplex *imageInputPl=
ane=3DVDDSAlgorithm::imageInputPlane;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; unsigned char*imageData=3DVD=
DSAlgorithm::imageData;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; unsigned char*imageData=46in=
al=3DVDDSAlgorithm::imageData=46inal;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22><br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; memset(imageInputPlane,0x0,I=
MAGE=5FDIMENSION*IMAGE=5FDIMENSION*sizeof(fftw=5Fcomplex));<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; memset(imageOutputPlane,0x0,=
IMAGE=5FDIMENSION*IMAGE=5FDIMENSION*sizeof(fftw=5Fcomplex));<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; memset(imageData,0x0,IMAGE=5F=
DIMENSION*IMAGE=5FDIMENSION);<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22><br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; for(size=5Ft count=3D0;count=
&lt;TOTAL=5FBASE=5FLINE;count++)=7B<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160;imageInputP=
lane=5B(int)round(IMAGE=5FDIMENSION/2+diffX=5Bcount=5D)*IMAGE=5FDIMENSION=
+(int)round(IMAGE=5FDIMENSION/2-diffY=5Bcount=5D)=5D=5B0=5D=3Dphy=5Bcount=
=5D=5B0=5D;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160;imageInputP=
lane=5B(int)round(IMAGE=5FDIMENSION/2+diffX=5Bcount=5D)*IMAGE=5FDIMENSION=
+(int)round(IMAGE=5FDIMENSION/2-diffY=5Bcount=5D)=5D=5B1=5D=3D-(phy=5Bcou=
nt=5D=5B1=5D);<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160;imageInputP=
lane=5B(int)round(IMAGE=5FDIMENSION/2-diffX=5Bcount=5D)*IMAGE=5FDIMENSION=
+(int)round(IMAGE=5FDIMENSION/2+diffY=5Bcount=5D)=5D=5B0=5D=3Dphy=5Bcount=
=5D=5B0=5D;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160;imageInputP=
lane=5B(int)round(IMAGE=5FDIMENSION/2-diffX=5Bcount=5D)*IMAGE=5FDIMENSION=
+(int)round(IMAGE=5FDIMENSION/2+diffY=5Bcount=5D)=5D=5B1=5D=3Dphy=5Bcount=
=5D=5B1=5D;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; =7D<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22><br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftLock.lock();<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftw=5Fplan &=23160;planeX=3D=
fftw=5Fplan=5Fdft=5F2d(IMAGE=5FDIMENSION,IMAGE=5FDIMENSION, imageInputPla=
ne, imageOutputPlane, =46=46TW=5F=46ORWARD, =46=46TW=5FESTIMATE);<br /></=
div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftw=5Fexecute(planeX);<br /=
></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftw=5Fdestroy=5Fplan(planeX=
);<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; fftLock.unlock();<br /></div=
>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22><br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22><br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; double max=3D0;<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; for(size=5Ft row=3D0;row&lt;=
IMAGE=5FDIMENSION;row++)=7B<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; for(size=5F=
t col=3D0;col&lt;IMAGE=5FDIMENSION;col++)=7B<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; if(col=3D=3D0)printf(=22=5Cn=22);<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; if(col&lt;100)=7B<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; &=23160; &=23160; printf(=22(%lf,%lf)=22,imageOutputPlane=5Brow*I=
MAGE=5FDIMENSION+col=5D=5B0=5D,imageOutputPlane=5Brow*IMAGE=5FDIMENSION+c=
ol=5D=5B1=5D);<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; =7D<br /></div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160;</div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; &=23160; &=23160; =7D<br /><=
/div>
<div style=3D=22font-size:16px; font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,Emoji=46ont=22>&=23160; &=23160; =7D</div>
<br />
<p style=3D=22margin-top:0; margin-bottom:0=22>Regards,</p>
<div id=3D=22x=5FSignature=22>
<meta content=3D=22text/html; charset=3DUT=46-8=22 />
<div id=3D=22x=5Fdivtagdefaultwrapper=22 dir=3D=22ltr=22 style=3D=22=22>
<p style=3D=22=22><font face=3D=22Tahoma,serif=22><font style=3D=22font-s=
ize:9pt=22>Koyel Das &=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23=
160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=231=
60;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=2316=
0;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160;&=23160=
;&=23160;&=23160;<br />
Senior =E2=80=93 Product Engineer</font></font></p>
<font face=3D=22Tahoma,serif=22 style=3D=22font-size:16px=22><font style=3D=
=22font-size:9pt=22>Vehere =7C Proactive Communications Intelligence &amp=
; Cyber Defence</font></font><font face=3D=22Tahoma,serif=22 style=3D=22f=
ont-size:16px=22><font style=3D=22font-size:9pt=22><br />
M: +919051132173&=23160;=7C&=23160;</font></font><font face=3D=22Tahoma,s=
erif=22 style=3D=22font-size:16px=22><font style=3D=22font-size:9pt=22>T:=
 +91&=23160;33 40545454 =7C =46: +91&=23160;33 40545455 =7C W:&=23160;<a =
href=3D=22https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Fwww=
.vehere.com=5F&amp;d=3DDwM=46-g&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8=
p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJ=
rDtf-lbPbX2g22z=5FVrjcI6hE&amp;s=3DiZCiVpP9=46-vIO8i9kvKmEOxr0v4DWyZhNbof=
tC1f=46zw&amp;e=3D=22 target=3D=22=5Fblank=22 rel=3D=22noopener noreferre=
r=22 id=3D=22LPNoLP=22>www.vehere.com</a></font></font><font face=3D=22Ta=
homa,serif=22 style=3D=22font-size:16px=22><font style=3D=22font-size:9pt=
=22><i></i></font></font><br /></div>
</div>
</div>
</blockquote>
I'm having a hard time seeing how this is related to UHD and USRPs.<br />=

<br />
There's probably a support forum for =46=46TW out there that would be mor=
e helpful than here.<br />
<br />
<br /></div>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list<br />
USRP-users=40lists.ettus.com<br />
https://urldefense.proofpoint.com/v2/url=3Fu=3Dhttp-3A=5F=5Flists.ettus.c=
om=5Fmailman=5Flistinfo=5Fusrp-2Dusers-5=46lists.ettus.com&amp;d=3DDwICAg=
&amp;c=3DclK7kQUTWtAVEOVIgvi0NU5BOUHhpN0H8p7CSfnc=5FgI&amp;r=3DopIuWAKmyw=
=46059tAs2i3Pg&amp;m=3D-qnV50ad393nJaYxBSJrDtf-lbPbX2g22z=5FVrjcI6hE&amp;=
s=3Dv3PIq2NHPrK8xhyDNyIJd7OgWYtaTPic=46lzxjtAZTJU&amp;e=3D<br /></blockqu=
ote>
</div>
</body>
</html>

--5cde47c1_327b23c6_4cce--



--===============2799777102712734547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2799777102712734547==--


