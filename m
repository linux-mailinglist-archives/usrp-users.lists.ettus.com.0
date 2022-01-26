Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EE249C54A
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jan 2022 09:31:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C1F5384F3C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jan 2022 03:31:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="KnLiciYR";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id ADDB1384AB0
	for <usrp-users@lists.ettus.com>; Wed, 26 Jan 2022 03:30:10 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id k4so28240289qvt.6
        for <usrp-users@lists.ettus.com>; Wed, 26 Jan 2022 00:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:date:from:subject:thread-topic:in-reply-to:message-id
         :references:to:cc:content-transfer-encoding;
        bh=Exh//N0PYzIWfe4PzZshripyxzcFzOzvGqqRqty9Wbg=;
        b=KnLiciYRn4bhhoLp4XsKq5kGzxzNpbNBWGfzD8MUSOv/kNNOgfQbRHjZiTvWYDFREk
         7712wY1N7YA5LjqD/3i2rQZv+u7aSCJscGIt1C8brJXF1T7aB71lKjgKR6P6NuK0Rvmg
         aKw7IZjMH4lC9wuak8PWtAa/SeBaBu/M506SWZ1+3HZoSslKYTLOiy9bHibWc2+o/4tO
         YVGJV2wW/Nvl61yI/o3Sbsk0a3CcXTnO4BUI3kG1pTxfTlSrge13883hlcp2yz4+HzD8
         qccT2xUafyeZD68kEa1wBLLcvlefB/EXd1SzfhPL2nWGLQvJ6yvxm8ZEb3SK0TrrSD/R
         mzVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:from:subject:thread-topic
         :in-reply-to:message-id:references:to:cc:content-transfer-encoding;
        bh=Exh//N0PYzIWfe4PzZshripyxzcFzOzvGqqRqty9Wbg=;
        b=n0XRV5IP7CH96Z95lQAIYpqiQtwsZ+G0+R0E0sFQuJ0bEe3DxxNTPfHW/EqAWum27a
         5BzGfkWTNmnHc3wq1jY/G5vrecNKLz5HuA9mcILfLxq23YB8kRZFHgGxG+wxYUME/cV6
         9/YTSXRQk6bGzgoWPKQNjZA6oBHJxBIeuyX99oLhfUSzirveF1l3VPQj6oOG7ypABADp
         m30KAWYX/Z3/Sz2NP6Cnf9+ED2QoNRvNyz4cNNzcwjY4XpgX7KZ4Hu7GsTywyPPENgBP
         nnMfnjWqHgql5GLxkFUhv922qQxTb21WQ+XCU8/QK+Xi04yYOowNRWxC8qPSj/7FHHu4
         Wh6Q==
X-Gm-Message-State: AOAM532UneriYwxQ+iYJskB/hwca8u0X8dS8CKLtS3JJc4EJ98Byu1fj
	Hy+5I5rTEt/S0ipGs+iSEtQxbI7X/kXn7A==
X-Google-Smtp-Source: ABdhPJzxcSl6ocoEQBUGQ5xhQuWSXTLDNFl8fsTV3fsvuAtmC4zslPXru9IEhA0m2nNOaQ2slVnMww==
X-Received: by 2002:a05:6214:21e5:: with SMTP id p5mr5614328qvj.130.1643185809704;
        Wed, 26 Jan 2022 00:30:09 -0800 (PST)
Received: from Uvumilivu (2603-6080-9a01-a487-04c1-a855-a8a0-d846.res6.spectrum.com. [2603:6080:9a01:a487:4c1:a855:a8a0:d846])
        by smtp.gmail.com with ESMTPSA id n22sm10260604qka.46.2022.01.26.00.30.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jan 2022 00:30:09 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 26 Jan 2022 03:30:06 -0500
Thread-Topic: RE: [USRP-users] Re: Synchronization of two USRP x310s
In-Reply-To: <b2bb9131-5ea3-e152-49a1-8c400abdcbf3@gmail.com>
Message-ID: <C6114C28-BFA1-47A4-9800-CF6AC1F16A88@hxcore.ol>
References: 
 <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
 <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
 <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>,<b2bb9131-5ea3-e152-49a1-8c400abdcbf3@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZPEDHHJYYXQCQGSSVPBUIXQFI4L2YXBY
X-Message-ID-Hash: ZPEDHHJYYXQCQGSSVPBUIXQFI4L2YXBY
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPEDHHJYYXQCQGSSVPBUIXQFI4L2YXBY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============5532513213712233503=="

--===============5532513213712233503==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:677122390;
	mso-list-template-ids:-1;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3D"#954F72" style=3D=
'word-wrap:break-word'><div class=3DWordSection1><p class=3DMsoNormal>Is th=
ere a resource for synchronizing multiple USRP x310s without an external re=
ference clock?</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoN=
ormal>Also, would SBX-120 daughterboards perform better when using multiple=
 USRPs because of its phase sync feature?</p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal><span style=3D'color:#4472C4'>V/r <o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'color:#4472C4'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#4472C4'>LoyCur=
tis Smith<o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><d=
iv style=3D'mso-element:para-border-div;border:none;border-top:solid #E1E1E=
1 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=3D'border:non=
e;padding:0in'><b>From: </b><a href=3D"mailto:patchvonbraun@gmail.com">Marc=
us D. Leech</a><br><b>Sent: </b>Tuesday, January 25, 2022 11:14<br><b>To: <=
/b><a href=3D"mailto:ljsmith9@ncsu.edu">LoyCurtis Smith</a><br><b>Cc: </b><=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject: </b>Re: [USRP-users] Re: Synchronization of two USRP x310s<=
/p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNorma=
l>On 2022-01-25 11:12, LoyCurtis Smith wrote:<o:p></o:p></p></div><blockquo=
te style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal=
>Would their mechanism included UHD based code? <o:p></o:p></p></div></bloc=
kquote><p class=3DMsoNormal>Since UHD is the way ANY application talks to t=
he radios, yes.&nbsp; But I have no idea if OAI, as one of dozens and dozen=
s of different appilcations<br>&nbsp; &quot;out there&quot; has any way to =
support that functionality.<br><br><br><o:p></o:p></p><blockquote style=3D'=
margin-top:5.0pt;margin-bottom:5.0pt'><div><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p></div><div><p class=3DMsoNormal>Also, I assume that the only othe=
r option would be to purchase an Octoclock or some other clock distribution=
 module?<o:p></o:p></p></div></blockquote><p class=3DMsoNormal>Yes, you'd n=
eed some kind of shared 10MHz reference clock and 1PPS source, AND your app=
lication needs to be able to configure the radios to<br>&nbsp; use it.<br><=
br><br><br><o:p></o:p></p><blockquote style=3D'margin-top:5.0pt;margin-bott=
om:5.0pt'><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=
=3DMsoNormal>On Tue, Jan 25, 2022 at 10:40 Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<o:p><=
/o:p></p></div><blockquote style=3D'border:none;border-left:solid #CCCCCC 1=
.0pt;padding:0in 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-ri=
ght:0in;margin-bottom:5.0pt'><div><div><p class=3DMsoNormal style=3D'margin=
-left:81.6pt'>On 2022-01-24 20:53, LoyCurtis Smith via USRP-users wrote:<o:=
p></o:p></p></div><blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt=
'><div><div><p class=3DMsoNormal style=3D'margin-left:153.6pt'>My system se=
tup is as follows:&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:189.6pt=
;text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span sty=
le=3D'font-size:10.0pt;font-family:Symbol'><span style=3D'mso-list:Ignore'>=
=C2=B7<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>2 x USRP x310 with CBX-12=
0 daughterboard<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto;margin-left:189.6pt;text-indent:-.25in;=
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-size:10.0=
pt;font-family:Symbol'><span style=3D'mso-list:Ignore'>=C2=B7<span style=3D=
'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span></span></span><![endif]>2 x Ubuntu 18.04 workstation<o:p></o:p></p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;margin-left:189.6pt;text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !=
supportLists]><span style=3D'font-size:10.0pt;font-family:Symbol'><span sty=
le=3D'mso-list:Ignore'>=C2=B7<span style=3D'font:7.0pt "Times New Roman"'>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>2 =
x Taoglas 45.8113 antenna<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:189.6pt;text-inde=
nt:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font=
-size:10.0pt;font-family:Symbol'><span style=3D'mso-list:Ignore'>=C2=B7<spa=
n style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; </span></span></span><![endif]>2 x&nbsp; Internal Reference Clock =
(Master Clock set at 184.32 MHz)<o:p></o:p></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:189.6pt;=
text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span styl=
e=3D'font-size:10.0pt;font-family:Symbol'><span style=3D'mso-list:Ignore'>=
=C2=B7<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>2 x Internal Time source&=
nbsp;<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto;margin-left:189.6pt;text-indent:-.25in;mso-list:l=
0 level1 lfo1'><![if !supportLists]><span style=3D'font-size:10.0pt;font-fa=
mily:Symbol'><span style=3D'mso-list:Ignore'>=C2=B7<span style=3D'font:7.0p=
t "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]>2 x Connected via 1 Gig-E interfaces<o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o;margin-left:189.6pt;text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !su=
pportLists]><span style=3D'font-size:10.0pt;font-family:Symbol'><span style=
=3D'mso-list:Ignore'>=C2=B7<span style=3D'font:7.0pt "Times New Roman"'>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>2 x =
Using UHD 4.1<o:p></o:p></p><div><p class=3DMsoNormal style=3D'margin-left:=
153.6pt'>The devices have been in two setups: stacked and a few inches apar=
t.&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'margin-left=
:153.6pt'><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal style=3D'mar=
gin-left:153.6pt'>I am attempting to deploy a 5G network using the openairi=
nterface (OAI) software system. Both devices synchronize initially, then th=
ey fail. With openairinterface, I am using frequency offset compensation at=
 the UE. Its a useful parameter when running over the air and/or without an=
 external clock/time source (<a href=3D"https://gitlab.eurecom.fr/oai/opena=
irinterface5g/blob/develop/doc/RUNMODEM.md">https://gitlab.eurecom.fr/oai/o=
penairinterface5g/blob/develop/doc/RUNMODEM.md</a>)<o:p></o:p></p></div><di=
v><p class=3DMsoNormal style=3D'margin-left:153.6pt'><o:p>&nbsp;</o:p></p><=
/div><div><p class=3DMsoNormal style=3D'margin-left:153.6pt'>Is there a way=
 to synchronize the reference clock/timing of both USRP x310s over the air?=
 In the future, I will be attempting to connect a third USRP x310. My setup=
 will include one base station and two user devices.&nbsp;<o:p></o:p></p></=
div><div><div><div><div><div><p class=3DMsoNormal style=3D'margin-left:153.=
6pt'><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal style=3D'margin-l=
eft:153.6pt'><span style=3D'color:#073763'>V/r</span> <o:p></o:p></p><div><=
p class=3DMsoNormal style=3D'margin-left:153.6pt'><o:p>&nbsp;</o:p></p></di=
v><div><p class=3DMsoNormal style=3D'margin-left:153.6pt'><span style=3D'co=
lor:#073763;background:white'>LoyCurtis Smith</span><o:p></o:p></p></div></=
div></div></div></div></div></div></div><p class=3DMsoNormal style=3D'mso-m=
argin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;margin-left:153.6pt=
'><o:p>&nbsp;</o:p></p></blockquote></div><div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;margin-lef=
t:81.6pt'>Unless OAI provides some mechanism for that, the answer would be =
no.&nbsp; You need a shared reference clock.<br><br><br><o:p></o:p></p></di=
v><p class=3DMsoNormal style=3D'margin-left:81.6pt'>_______________________=
________________________<br>USRP-users mailing list -- <a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>To unsubscribe =
send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-u=
sers-leave@lists.ettus.com</a><o:p></o:p></p></blockquote></div></div><p cl=
ass=3DMsoNormal>-- <o:p></o:p></p><div><div><div><div><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal><span style=3D'color:#=
073763'>V/r</span> <o:p></o:p></p><div><p class=3DMsoNormal><o:p>&nbsp;</o:=
p></p></div><div><p class=3DMsoNormal><span style=3D'color:#073763;backgrou=
nd:white'>LoyCurtis Smith</span><o:p></o:p></p></div></div></div></div></di=
v></blockquote><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p></div></body></html>=

--===============5532513213712233503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5532513213712233503==--
