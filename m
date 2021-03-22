Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51298343DB4
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 11:25:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F1AE38386A
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 06:25:44 -0400 (EDT)
Received: from smtp-3.sys.kth.se (smtp-3.sys.kth.se [130.237.48.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 36B42383863
	for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 06:24:52 -0400 (EDT)
Received: from smtp-3.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-3.sys.kth.se (Postfix) with ESMTP id 53F145880;
	Mon, 22 Mar 2021 11:24:50 +0100 (CET)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-3.sys.kth.se ([127.0.0.1])
	by smtp-3.sys.kth.se (smtp-3.sys.kth.se [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id NjqMNNih2Fav; Mon, 22 Mar 2021 11:24:49 +0100 (CET)
Received: from exdb6.ug.kth.se (exdb6.ug.kth.se [192.168.32.61])
	by smtp-3.sys.kth.se (Postfix) with ESMTPS id DC17436A2;
	Mon, 22 Mar 2021 11:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1616408689; bh=KviKm79FqDR9UqenGhL7pFpq/3Tm96+1WIAv42YTOyY=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=fvgSNVBPGDoEQ/BNLEKH7M7kKj1lN2vQsBsNLVMCvpTo6A6YHb8sn0rVGD6HesRKd
	 0MtHCHySbTNivWE49Hs3AzKv9hjAuygAlBS5PNbjnJZ2IWAAb1IFZ9wwkpFHZReevV
	 kveZ85sOfRE2jHw5JZENuNM0s0YhZDvo7ym8JXt8=
Received: from exdb4.ug.kth.se (192.168.32.59) by exdb6.ug.kth.se
 (192.168.32.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3; Mon, 22 Mar 2021
 11:24:46 +0100
Received: from exdb4.ug.kth.se ([192.168.32.59]) by exdb4.ug.kth.se
 ([192.168.32.59]) with mapi id 15.02.0792.010; Mon, 22 Mar 2021 11:24:46
 +0100
From: Seyed Samie Mostafavi <ssmos@kth.se>
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: USRP E320
Thread-Index: AQHXF1ACIqLSBOdn3k2/5dkvJ3E15qqNR8AAgAKN/JU=
Date: Mon, 22 Mar 2021 10:24:46 +0000
Message-ID: <bfd102e8d81e49298be0b47a29b8d52c@kth.se>
References: <8b9169b13f17449cbd494459bf943fdb@kth.se>,<db60037f-0a46-7553-086a-97338b0e8279@ettus.com>
In-Reply-To: <db60037f-0a46-7553-086a-97338b0e8279@ettus.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
Message-ID-Hash: RAFKWKWYPIQLLHANISSCNKQXPCUH4UGK
X-Message-ID-Hash: RAFKWKWYPIQLLHANISSCNKQXPCUH4UGK
X-MailFrom: ssmos@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAFKWKWYPIQLLHANISSCNKQXPCUH4UGK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5271101981149152586=="

--===============5271101981149152586==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bfd102e8d81e49298be0b47a29b8d52ckthse_"

--_000_bfd102e8d81e49298be0b47a29b8d52ckthse_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,


Thanks for your answer. Of course it is overkill but we are aware of that. =
We chose E320 because MangoComm 802.11 MAC/PHY design (successor of Warp pr=
oject) supports this device and we aim to be able to run 802.11 and LTE/5G =
with the same SDR. Does that make sense?


Best,

Samie

________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Saturday, March 20, 2021 8:59:44 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: USRP E320

Hi Seyed,


the E320 is probably not the device you want: While you attach B210 and X31=
0 to a powerful
PC, which would then run OAI on the samples gotten from the USRP, the real =
strength of the
E320 is being an embedded system, especially for people who want to develop=
 FPGA logic and
embedded software to run on the Zynq *inside* the E320. As far as I can tel=
l, OAI is far
far *far* too CPU-hungry to run it on the 800 MHz dual-core ARM inside the =
E320.

You can indeed also use the SFP+ to stream samples to a PC, but then just b=
e buying a
pretty expensive to the B210 with no added benefits.


Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 12.03.21 15:57, Seyed Samie Mostafavi wrote:
> Hi everyone,
>
> We are starting a project and we want to buy a batch of E320s and our goa=
l is to run
> Openaireinterface 5G on them.
> These cellular communication softwares like Openaireinterface and srsLTE =
they recommend
> USRP devices such as B210 or X310 and not E320. I wanted to ask if anyone=
 has tried E320
> with srsLTE or OAI or not.
> I guess since OAI works with UHD driver and the RF chip is AD9361 like B2=
10, there
> should be no difference. However I am not sure.
> Do you see any major difference in the drivers or capabilities of E320 an=
d B210 or X310
> such that it could become a roadblock for us?
>
> Best,
> Samie
>
> -------------------------------------------------------------------------=
-----------------
> Kth Logo
>
> Seyed Samie Mostafavi
> Doctoral Student
> KTH
> /School of electrical engineering and computer science (EECS)/
> /Department of information systems and engineering (ISE)/
> Malvinas v=E4g 10, 100 44 Stockholm
> ssmos@kth.se
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_bfd102e8d81e49298be0b47a29b8d52ckthse_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Dear Marcus,</p>
<p><br>
</p>
<p>Thanks for your answer. Of course it is overkill but&nbsp;we are aware o=
f that. We&nbsp;chose E320&nbsp;because&nbsp;MangoComm
<span>802.11 MAC/PHY design</span>&nbsp;(<span>successor of Warp project) s=
upports this device and we aim to be able to&nbsp;run&nbsp;802.11 and LTE/5=
G with the same SDR. Does that make sense?</span></p>
<p><span><br>
</span></p>
<p><span>Best,</span></p>
<p><span>Samie</span></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus M=FCller &lt=
;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Saturday, March 20, 2021 8:59:44 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: USRP E320</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Seyed,<br>
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
You can indeed also use the SFP&#43; to stream samples to a PC, but then ju=
st be buying a<br>
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
<a href=3D"https://www.ettus.com/sdr-software/licenses/">https://www.ettus.=
com/sdr-software/licenses/</a>.<br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license
 requirement column of Supplement No. 4 to Part 744, U.S. Export Administra=
tion Regulations and (ii) such a company is not a party to the transaction.=
&nbsp; If our understanding is incorrect, please notify us immediately beca=
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
&gt; These&nbsp;cellular communication&nbsp;softwares like&nbsp;Openaireint=
erface and srsLTE they recommend<br>
&gt; USRP devices such as&nbsp;B210 or X310 and not E320. I wanted to ask i=
f anyone has tried E320<br>
&gt; with srsLTE or OAI or not.<br>
&gt; I guess since OAI works with UHD driver and the RF chip is AD9361 like=
 B210, there<br>
&gt; should be no difference. However I am not sure.<br>
&gt; Do you see any major difference in the drivers or capabilities of E320=
 and B210 or X310<br>
&gt; such that it could&nbsp;become a roadblock for us?<br>
&gt;<br>
&gt; Best,<br>
&gt; Samie<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
--------------------<br>
&gt; Kth Logo<br>
&gt; &nbsp;<br>
&gt; Seyed Samie Mostafavi<br>
&gt; Doctoral Student<br>
&gt; KTH<br>
&gt; /School of electrical engineering and computer science (EECS)/<br>
&gt; /Department of information systems and engineering (ISE)/<br>
&gt; Malvinas v=E4g 10, 100 44 Stockholm<br>
&gt; ssmos@kth.se<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font>
</body>
</html>

--_000_bfd102e8d81e49298be0b47a29b8d52ckthse_--

--===============5271101981149152586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5271101981149152586==--
