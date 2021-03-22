Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 226C0343E08
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 11:35:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DCD4383872
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 06:35:41 -0400 (EDT)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AEAA383864
	for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 06:34:50 -0400 (EDT)
Received: by mail-pl1-f174.google.com with SMTP id g1so6313839plg.7
        for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 03:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7nX005PzoBl/u2EDofMu9A5KNsOCXOE1h4cmT4UoD5A=;
        b=jp8H878rNs+Dm8Rs/QUUP/vcJw0jkpsInDnK4Gm4TTJTMBq5Xra8PVVHwD/NraRlYh
         zfMq3TpgJIRGbPb2P4nyfQbQrtGry4nD+aBFN9GdZCTNBSuLAwuaufUdXgpXifJEf1lU
         d4b35GS9H1Dopm+D/5q/hjH1Uws5Mo2v5A+SlSwvvIuBWxTDpcEvi62/i0GXArag+fbR
         4urhVYJNL0UvBDz8DRgPVlnrsQtsYN2AQKsn3IjeCjfF/K66T5buFd101rDbV5q1wPtQ
         7S72po7oeCSwM9I356DOqsNpBg3TT4p7pboHiqHvDRQJYoRb89zboK8vQeH6xK+7jxmO
         YR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7nX005PzoBl/u2EDofMu9A5KNsOCXOE1h4cmT4UoD5A=;
        b=L2B2eeuajl393o+QssYDy0rGA08JtoQtPWIyltWH4GLSRO7X8PXXeyhr04Kesbl7q/
         EOVRTbdXxxrlRGDS0eIjS7BBNoDFHCLGcKw3q+QX5KlN09XsnGDEHq2etJ2ZXrDp+IEP
         9JSg8pdr/1MMO0TIm2tvX8D6tGaLPipdGiMc2+jkbtftr5Fda+fK0poDdw8PB5DLQvL7
         CsoA/bBew91Z7brt0GBSkkPeE22W/HorLT3EndpudmcxUtlp/FHgm8ceLruJgFQrqg9L
         BTeJwx7wF0SIGpuP3B3usI3AOPHlNjWhQ8SqhYLnVu45hQX6JtrRyI5q9MfLDS4rhOWr
         F6rQ==
X-Gm-Message-State: AOAM533uTxlpXFPlSyUb7Au17DEGNRU9jINd4rAeRutE8xzztlQ2QxdH
	qek/FEHTOTwUwmOTAal90qkM9Y6KLe4Cm8eGrfM=
X-Google-Smtp-Source: ABdhPJyU2imGG2DfMSCVgXfIooSWz8gBliRA+GHmxnLXHixnJWQdEAwPM/8yK5yVtaGbvLtCyvc+QlUYW+56VBCpF/A=
X-Received: by 2002:a17:90a:1f49:: with SMTP id y9mr13230416pjy.69.1616409289212;
 Mon, 22 Mar 2021 03:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <8b9169b13f17449cbd494459bf943fdb@kth.se> <db60037f-0a46-7553-086a-97338b0e8279@ettus.com>
 <bfd102e8d81e49298be0b47a29b8d52c@kth.se>
In-Reply-To: <bfd102e8d81e49298be0b47a29b8d52c@kth.se>
From: Tuan Hoang Dinh <tuanmcx58@gmail.com>
Date: Mon, 22 Mar 2021 19:34:38 +0900
Message-ID: <CAJZBg9VHVu=qRGdV5VVCZaR9HeJBnNxy1ZbwZVLqYG8GEFkddA@mail.gmail.com>
To: Seyed Samie Mostafavi <ssmos@kth.se>
Message-ID-Hash: U4SFOUQG445GDCMYIMMBJ6CTKCDAFLVV
X-Message-ID-Hash: U4SFOUQG445GDCMYIMMBJ6CTKCDAFLVV
X-MailFrom: tuanmcx58@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U4SFOUQG445GDCMYIMMBJ6CTKCDAFLVV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9156262925448221830=="

--===============9156262925448221830==
Content-Type: multipart/alternative; boundary="0000000000007ec82805be1d9d1e"

--0000000000007ec82805be1d9d1e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Samie,

Good to know you are working on PHY/MAC layer of OFDM signal like LTE and
wifi on the USRP.
I'm also want to deploy the PHY layer of LTE on USRP but trying to use
RFNoC. I got a little bit confused about the PHY layer of WARP project
targets on Wifi, 802.11 standard rather than LTE. Could you tell me can I
use the same PHY layer from WARP to process the LTE signal? Because some
different points between OFDMA and OFDM like cyclic prefix length, FFT
length....
Thanks for your help.

Regards,
Tuan

V=C3=A0o Th 2, 22 thg 3, 2021 va=CC=80o lu=CC=81c 19:25 Seyed Samie Mostafa=
vi <ssmos@kth.se>
=C4=91=C3=A3 vi=E1=BA=BFt:

> Dear Marcus,
>
>
> Thanks for your answer. Of course it is overkill but we are aware of that=
.
> We chose E320 because MangoComm 802.11 MAC/PHY design (successor of Warp
> project) supports this device and we aim to be able to run 802.11 and
> LTE/5G with the same SDR. Does that make sense?
>
>
> Best,
>
> Samie
> ------------------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* Saturday, March 20, 2021 8:59:44 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: USRP E320
>
> Hi Seyed,
>
>
> the E320 is probably not the device you want: While you attach B210 and
> X310 to a powerful
> PC, which would then run OAI on the samples gotten from the USRP, the rea=
l
> strength of the
> E320 is being an embedded system, especially for people who want to
> develop FPGA logic and
> embedded software to run on the Zynq *inside* the E320. As far as I can
> tell, OAI is far
> far *far* too CPU-hungry to run it on the 800 MHz dual-core ARM inside th=
e
> E320.
>
> You can indeed also use the SFP+ to stream samples to a PC, but then just
> be buying a
> pretty expensive to the B210 with no added benefits.
>
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 12.03.21 15:57, Seyed Samie Mostafavi wrote:
> > Hi everyone,
> >
> > We are starting a project and we want to buy a batch of E320s and our
> goal is to run
> > Openaireinterface 5G on them.
> > These cellular communication softwares like Openaireinterface and srsLT=
E
> they recommend
> > USRP devices such as B210 or X310 and not E320. I wanted to ask if
> anyone has tried E320
> > with srsLTE or OAI or not.
> > I guess since OAI works with UHD driver and the RF chip is AD9361 like
> B210, there
> > should be no difference. However I am not sure.
> > Do you see any major difference in the drivers or capabilities of E320
> and B210 or X310
> > such that it could become a roadblock for us?
> >
> > Best,
> > Samie
> >
> >
> -------------------------------------------------------------------------=
-----------------
> > Kth Logo
> >
> > Seyed Samie Mostafavi
> > Doctoral Student
> > KTH
> > /School of electrical engineering and computer science (EECS)/
> > /Department of information systems and engineering (ISE)/
> > Malvinas v=C3=A4g 10, 100 44 Stockholm
> > ssmos@kth.se
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007ec82805be1d9d1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Samie,<div><br></div><div>Good to know you are workin=
g on PHY/MAC layer of OFDM signal like LTE and wifi on the USRP.</div><div>=
I&#39;m also want to deploy=C2=A0the PHY layer of LTE on USRP but trying to=
 use RFNoC. I got a little=C2=A0bit confused about the PHY layer of WARP pr=
oject targets on Wifi, 802.11 standard=C2=A0rather than LTE. Could you tell=
 me can I use the same PHY layer from WARP to process the LTE signal? Becau=
se some different points between OFDMA and OFDM like cyclic prefix length, =
FFT length....=C2=A0</div><div>Thanks for your help.</div><div><br></div><d=
iv>Regards,</div><div>Tuan</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">V=C3=A0o Th 2, 22 thg 3, 2021 va=CC=80o lu=
=CC=81c 19:25 Seyed Samie Mostafavi &lt;<a href=3D"mailto:ssmos@kth.se">ssm=
os@kth.se</a>&gt; =C4=91=C3=A3 vi=E1=BA=BFt:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">





<div>


<div dir=3D"ltr">
<div id=3D"gmail-m_-4339287869404567591x_divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans=
-serif">
<p>Dear Marcus,</p>
<p><br>
</p>
<p>Thanks for your answer. Of course it is overkill but=C2=A0we are aware o=
f that. We=C2=A0chose E320=C2=A0because=C2=A0MangoComm
<span>802.11 MAC/PHY design</span>=C2=A0(<span>successor of Warp project) s=
upports this device and we aim to be able to=C2=A0run=C2=A0802.11 and LTE/5=
G with the same SDR. Does that make sense?</span></p>
<p><span><br>
</span></p>
<p><span>Best,</span></p>
<p><span>Samie</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4339287869404567591x_divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com"=
 target=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>
<b>Sent:</b> Saturday, March 20, 2021 8:59:44 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: USRP E320</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>Hi Seyed,<br>
<br>
<br>
the E320 is probably not the device you want: While you attach B210 and X31=
0 to a powerful<br>
PC, which would then run OAI on the samples gotten from the USRP, the real =
strength of the<br>
E320 is being an embedded system, especially for people who want to develop=
 FPGA logic and<br>
embedded software to run on the Zynq *inside* the E320. As far as I can tel=
l, OAI is far<br>
far *far* too CPU-hungry to run it on the 800 MHz dual-core ARM inside the =
E320.<br>
<br>
You can indeed also use the SFP+ to stream samples to a PC, but then just b=
e buying a<br>
pretty expensive to the B210 with no added benefits.<br>
<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms
 of the licenses to the UHD or RFNoC code with which the Code is used. Stan=
dard licenses to UHD and RFNoC can be found at
<a href=3D"https://www.ettus.com/sdr-software/licenses/" target=3D"_blank">=
https://www.ettus.com/sdr-software/licenses/</a>.<br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license
 requirement column of Supplement No. 4 to Part 744, U.S. Export Administra=
tion Regulations and (ii) such a company is not a party to the transaction.=
=C2=A0 If our understanding is incorrect, please notify us immediately beca=
use a specific authorization may be required
 from the U.S. Commerce Department before the transaction may proceed furth=
er.<br>
<br>
On 12.03.21 15:57, Seyed Samie Mostafavi wrote:<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; We are starting a project and we want to buy a batch of E320s and our =
goal is to run<br>
&gt; Openaireinterface 5G on them.<br>
&gt; These=C2=A0cellular communication=C2=A0softwares like=C2=A0Openaireint=
erface and srsLTE they recommend<br>
&gt; USRP devices such as=C2=A0B210 or X310 and not E320. I wanted to ask i=
f anyone has tried E320<br>
&gt; with srsLTE or OAI or not.<br>
&gt; I guess since OAI works with UHD driver and the RF chip is AD9361 like=
 B210, there<br>
&gt; should be no difference. However I am not sure.<br>
&gt; Do you see any major difference in the drivers or capabilities of E320=
 and B210 or X310<br>
&gt; such that it could=C2=A0become a roadblock for us?<br>
&gt;<br>
&gt; Best,<br>
&gt; Samie<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
--------------------<br>
&gt; Kth Logo<br>
&gt; =C2=A0<br>
&gt; Seyed Samie Mostafavi<br>
&gt; Doctoral Student<br>
&gt; KTH<br>
&gt; /School of electrical engineering and computer science (EECS)/<br>
&gt; /Department of information systems and engineering (ISE)/<br>
&gt; Malvinas v=C3=A4g 10, 100 44 Stockholm<br>
&gt; <a href=3D"mailto:ssmos@kth.se" target=3D"_blank">ssmos@kth.se</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div>
</span></font>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007ec82805be1d9d1e--

--===============9156262925448221830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9156262925448221830==--
