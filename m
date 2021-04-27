Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA7536CA73
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 19:37:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6D67383BE4
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 13:37:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TxUKoEMU";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EF77F383AF3
	for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 13:36:41 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id f12so44726839qtf.2
        for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 10:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=vtkBE9NKGlHmUFK1amW49LVwzwxl1sXjR5wqupf28e8=;
        b=TxUKoEMU5pDNSBiuDX+FmIbD9k9LjB/+xlZPrBikROltYExlzPJiBkLISsvZ9OwdkX
         wYWKlW2bLxheVWyK9C6bZ2CdXQJDVAMW5KEBFB2T839Px2xAuqHjFp/4+lamJ+UVXDw4
         KxWg2G16pTXJ3Pt4g5OmIvLs4KGIqsBoF7xZoYuV+8rNHpMhGaeudVzQ3gex5xWdbpSa
         4z4e8oOcIPI1CwGoQGeM2eqvGsMlaV+zuHiNwH6wLSRmBUiqfvHllKHKcUwEKvd/qYS3
         KGCJiVKEx+tnXjAnATX0anCtR4RQ8llIsVcbQTthODWM8t06TJB4qS5Dsg3dVorkq5Ww
         k94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=vtkBE9NKGlHmUFK1amW49LVwzwxl1sXjR5wqupf28e8=;
        b=EX04V6hX9ebE6TbxwqiRJDm3WqiJCd+rsrYo7h7VnbwjNJ/V3UTXI0qwLAT0vjIEEu
         IKK8HMs9Kr6+C7QMPU8yVKGtNoAJiIqeFPQ5xC814umx2POtSeIS6hYGug0D+QlseVU2
         ZNsTDyCWNohpH0VabmQIKk17hsCSvABjDpvSLa/JCbI+hxqn/oWeyTb51pDcxaSsZOhI
         njLUBPLZRsCeY/LgRvBsDZkWE5aksHSX1aY5+hpQwh1WLBAxD7yvoP7s2Zr2IGkOVjld
         l9+qIznqj4xWSXOh0J6cAA4N6XIdU9K0+Sx+xo3WoNrvgAXpXZktzxYNL9Hrv7SALe+N
         jr4Q==
X-Gm-Message-State: AOAM532tfwQA+pKRiaJx/zu/s59xoI6aLGbVc8BiiqQoA0B/rzaEgYRq
	PHJwdlrx1q2JjUXz6K9m//F7Wb5AdgeE6g==
X-Google-Smtp-Source: ABdhPJxkcG5hYN10eSH26G4HNJyRJXXL5UV+rby+EV1V0UG3w3QugjEG3VAYyV0l2CWPlBPIMgrtMQ==
X-Received: by 2002:ac8:578c:: with SMTP id v12mr6417974qta.154.1619545001085;
        Tue, 27 Apr 2021 10:36:41 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id t5sm3192151qkh.92.2021.04.27.10.36.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:36:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 27 Apr 2021 13:36:39 -0400
Message-Id: <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com>
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com>
In-Reply-To: <cc4faee36fb84e0d83669253db7e636f@boeing.com>
To: "Hirst (US), Stephen" <stephen.hirst@boeing.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 2GKDKVRBLND3EBQ4XGZUTLC3EJXHBCWI
X-Message-ID-Hash: 2GKDKVRBLND3EBQ4XGZUTLC3EJXHBCWI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GKDKVRBLND3EBQ4XGZUTLC3EJXHBCWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0189867912997840876=="


--===============0189867912997840876==
Content-Type: multipart/alternative; boundary=Apple-Mail-F7106906-871C-4959-8FB0-A51EDF050246
Content-Transfer-Encoding: 7bit


--Apple-Mail-F7106906-871C-4959-8FB0-A51EDF050246
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If you just use the rx_samples_to_file utility that comes with UHD what are y=
our results

Can you share your GNuRadio flow graph with us? What type of USRP do you hav=
e? There are about a dozen different models of USRP out there.=20


Sent from my iPhone

> On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen <stephen.hirst@boeing.com=
> wrote:
>=20
> =EF=BB=BF
> Hi Guys,
> =20
> I appreciate you all and thank you for the great community that is this ma=
iling list! Continue on!
> =20
> I, however, am a complete N00B and require assistance on some seemingly mi=
nor tasks that I believe you could help me out on. :)
> =20
> With that being said, I find myself with the Ubuntu 20.04LTS install on a r=
ather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down below.)
> -          8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache, 1.9=
GHz,15W, vPro)
> -          16GB, 2x8GB, 2666MHz DDR4 Non-ECC
> -          M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid State=
 Drive
> =20
> I have fiddled around with an online install on the laptop but I haven=E2=80=
=99t gotten the overflows and underflows to cooperate. And to be more specif=
ic, I can record a sample rate of 2Mhz and 0.2Mhz bandwidth without issue, b=
ut I can=E2=80=99t get a SR or BW greater than those to work without Under/O=
verflows developing. (I have been using UHD 3.15.0.02build5 with GNURadio 3.=
8.1.0 (Python 3.8.2) (grc and grc-uhd) and installed everything with =E2=80=9C=
apt=E2=80=9D. The first line in my grc python output labels =E2=80=9CLinux G=
NU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D, U=
SB3.0). Any ideas? I tried both the num_recv_frame size stuff and setting hi=
gh priority with no joy, but then again, I am a N00b, so I may not have done=
 that correctly as well=E2=80=A6
> =20
> Also if anyone has experience with GRC specifically, I have had success re=
cording what I wanted to with a file with the 2MHz Sample Rate with a 0.2 MH=
z BW, but the files are pretty huge. We=E2=80=99re talking 1GB/min=E2=80=A6 A=
ny idea how to make the GRC record to a less-fine resolution so I can free u=
p some HDD space?
> =20
> Thanks guys!
> Ya Boi Steve
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F7106906-871C-4959-8FB0-A51EDF050246
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If you just use the rx_samples_to_file util=
ity that comes with UHD what are your results<div><br></div><div>Can you sha=
re your GNuRadio flow graph with us? What type of USRP do you have? There ar=
e about a dozen different models of USRP out there.&nbsp;</div><div><br></di=
v><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><b=
lockquote type=3D"cite">On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen &lt=
;stephen.hirst@boeing.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cordia New";
	panose-1:2 11 3 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Roboto-Regular;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1872723768;
	mso-list-type:hybrid;
	mso-list-template-ids:-1755407046 -315950238 67698691 67698693 6769=
8689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:13;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Roboto-Regular;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I appreciate you all and thank you for the great comm=
unity that is this mailing list! Continue on!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I, however, am a complete N00B and require assistance=
 on some seemingly minor tasks that I believe you could help me out on. :)<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With that being said, I find myself with the Ubuntu 2=
0.04LTS install on a rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down b=
elow.)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><!--[if !supportLists]--><span style=3D"font-family:Roboto-Regular;co=
lor:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><!--[endif]--><span style=3D"font-family:Roboto-Regular=
;color:#444444">8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache, 1=
.9GHz,15W, vPro)<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><!--[if !supportLists]--><span style=3D"font-family:Roboto-Regular;co=
lor:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><!--[endif]--><span style=3D"color:#444444">16GB, 2x8GB=
, 2666MHz DDR4 Non-ECC</span><span style=3D"font-family:Roboto-Regular;color=
:#444444"><o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><!--[if !supportLists]--><span style=3D"font-family:Roboto-Regular;co=
lor:#444444"><span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
</span></span></span><!--[endif]--><span style=3D"font-family:Roboto-Regular=
;color:#444444">M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid St=
ate Drive<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Roboto-Regular;color:#4444=
44"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I have fiddled around with an online install on the l=
aptop but I haven=E2=80=99t gotten the overflows and underflows to cooperate=
. And to be more specific, I can record a sample rate of 2Mhz and 0.2Mhz ban=
dwidth without issue, but I can=E2=80=99t get a
 SR or BW greater than those to work without Under/Overflows developing. (I h=
ave been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2) (grc=
 and grc-uhd) and installed everything with =E2=80=9Capt=E2=80=9D. The first=
 line in my grc python output labels =E2=80=9CLinux
 GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D=
, USB3.0). Any ideas? I tried both the num_recv_frame size stuff and setting=
 high priority with no joy, but then again, I am a N00b, so I may not have d=
one that correctly as well=E2=80=A6<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Also if anyone has experience with GRC specifically, I=
 have had success recording what I wanted to with a file with the 2MHz Sampl=
e Rate with a 0.2 MHz BW, but the files are pretty huge. We=E2=80=99re talki=
ng 1GB/min=E2=80=A6 Any idea how to make the GRC
 record to a less-fine resolution so I can free up some HDD space?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks guys!<o:p></o:p></p>
<p class=3D"MsoNormal">Ya Boi Steve<o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-F7106906-871C-4959-8FB0-A51EDF050246--

--===============0189867912997840876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0189867912997840876==--
