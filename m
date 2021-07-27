Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377A3D7907
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 16:51:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 595A9384060
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 10:51:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mJhkFBQA";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 022BD3818ED
	for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 10:50:27 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id o13so12551781qkk.9
        for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 07:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=sdpX1Sj8rVwNYk5lfgEJe/wxnLbV4Cu92xR11aYFaX4=;
        b=mJhkFBQAGQvj3LIqEpU2YwqFObc60jDNRP+VaciVjDwW5t/xuZw4GESVuQbaUmB4gE
         00QB1Uk6Pq3IVqZQFdYxK3vrj0itYWfiPvPn4gCCmZHZI4keL5Yv+Vi967z/ynlTgAW5
         EbTAUdbEiVB9Y8PkXXPNS2/b42DZ9BPVWI6gooqZt5GfgvFOWOh7f5GmkZFc538dpvXG
         OTAQDkHKxEIO+SB/gtxbP8/1p3/QMpwGowp/78W37f/D16U3H/4BbE4iyyVY9wmxIEmQ
         1IUEi3WmjYCHdXkgjLEv9KvSg7yDQppOJ+/vomGE1APaJHw3V+x+Bqf9pJ0wU+co4Gb/
         f65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=sdpX1Sj8rVwNYk5lfgEJe/wxnLbV4Cu92xR11aYFaX4=;
        b=FVDdUbAVbuZGHpt491Kt7SKoTWmjTKABOfWwfYRNy/NmaAEyRpl4+Y3JsvvGIeGa65
         1A3/FlLbdd4NlGHbQUAUHFKB14ESUEGwnjnCVs7jcLF/mTPqxAcfs2RiOyilyvUEJDgL
         3cqKQCGRGgw7gVVfoWcYS4V6wvBzvHpTPbMbBLmhemzxuC1/DlnO5uInyDoDsqig8akl
         E15KkUpMOk0S836TWOkz4pmVdSuvn3IZu+PTrue9IJLeuZfEgdz5l22B9Ivn6pxixjSK
         kxZSXa5BBxTS3EVSs0J5sufuUxTgdH3VayE2oF/cPV6G6yPEsymG2Hn8w6rg3KG8nlEX
         B3rg==
X-Gm-Message-State: AOAM532K1ntK+MZtqS5dSxhUFkH0GrL1RQ/ZE7NVi0qx3bFeYeHcFZaL
	/Wvtd1kDx1dgfsJx3reM0yjxMfv8944XtQ==
X-Google-Smtp-Source: ABdhPJzuFQzSdlrX1ZPUhhosp83uDPqvENqC9cWbA84sRWaMOUzCgcklOdk79sy2oeI5mfV+zpJvtQ==
X-Received: by 2002:a05:620a:13f3:: with SMTP id h19mr22828599qkl.164.1627397427192;
        Tue, 27 Jul 2021 07:50:27 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l29sm1711319qtn.8.2021.07.27.07.50.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:50:26 -0700 (PDT)
Message-ID: <61001D31.6010205@gmail.com>
Date: Tue, 27 Jul 2021 10:50:25 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99@BLAPR09MB7298.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99@BLAPR09MB7298.namprd09.prod.outlook.com>
Message-ID-Hash: SGI7WFJX2BO45WFYY2PVZ443VPLAHIF5
X-Message-ID-Hash: SGI7WFJX2BO45WFYY2PVZ443VPLAHIF5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Out of Tree Modules Logging
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGI7WFJX2BO45WFYY2PVZ443VPLAHIF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1544024249288229784=="

This is a multi-part message in MIME format.
--===============1544024249288229784==
Content-Type: multipart/alternative;
 boundary="------------030808050304030905090404"

This is a multi-part message in MIME format.
--------------030808050304030905090404
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/27/2021 10:45 AM, McNulty, Mike (Assoc) via USRP-users wrote:
>
> Hello everyone,
>
> I feel like this should be easy but I=92m struggling to implement=20
> logging for my OOT modules. This=20
> <https://wiki.gnuradio.org/index.php?title=3DLogging&direction=3Dnext&o=
ldid=3D4871>=20
> wiki outlines how to setup the root cmake file to provide logging.=20
> Unfortunately, when I add what I think should be added I get an error.
>
> The error indicates that the function =93GR_LOGGING()=94 does not exist=
.
>
> I=92m very new to cmake so I may be incorrectly implementing the loggin=
g=20
> requirements. Has anyone had recent success implementing logging?
>
>   * The wiki indicates that log4cpp needs to be copied to
>     cmake/modules in the OOT module. Which directory is log4cpp located=
?
>
> Last question. If I setup logging will errors automatically propagate=20
> to the top block? Currently, my blocks in the flowgraph will throw an=20
> error and not report it to the TB. What is the best method to handle=20
> OOT block errors?
>
> Thanks
>
> Mike
>
> System
>
> ------------
>
> Ubuntu 18.04
>
> GNU Radio 3.8.31
>
>
This question will get a better audience on the discuss-gnuradio mailing=20
list, even if you're using a USRP, general Gnu Radio questions like this
   (particularly about GR build tooling) should probably go there.



--------------030808050304030905090404
Content-Type: multipart/related;
 boundary="------------020200010700060600080805"


--------------020200010700060600080805
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/27/2021 10:45 AM, McNulty, Mike
      (Assoc) via USRP-users wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99@BLAPR09MB7298.namprd09=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
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
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
	{mso-list-id:611519048;
	mso-list-type:hybrid;
	mso-list-template-ids:-1268759056 1884447704 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
        <p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I feel like this should be easy but I=92m
          struggling to implement logging for my OOT modules.
          <a moz-do-not-send=3D"true"
href=3D"https://wiki.gnuradio.org/index.php?title=3DLogging&amp;direction=
=3Dnext&amp;oldid=3D4871">This</a>
          wiki outlines how to setup the root cmake file to provide
          logging. Unfortunately, when I add what I think should be
          added I get an error.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><img style=3D"width:5.2916in;height:2.125i=
n"
            id=3D"Picture_x0020_1"
            src=3D"cid:part2.08040900.02050004@gmail.com" border=3D"0"
            height=3D"204" width=3D"508"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">The error indicates that the function
          =93GR_LOGGING()=94 does not exist.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I=92m very new to cmake so I may be
          incorrectly implementing the logging requirements. Has anyone
          had recent success implementing logging?<o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:.25in;mso-list:l0 level1 lfo1">The wiki
            indicates that log4cpp needs to be copied to cmake/modules
            in the OOT module. Which directory is log4cpp located?<o:p></=
o:p></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Last question. If I setup logging will
          errors automatically propagate to the top block? Currently, my
          blocks in the flowgraph will throw an error and not report it
          to the TB. What is the best method to handle OOT block errors?<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks <o:p></o:p></p>
        <p class=3D"MsoNormal">Mike<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">System<o:p></o:p></p>
        <p class=3D"MsoNormal">------------<o:p></o:p></p>
        <p class=3D"MsoNormal">Ubuntu 18.04<o:p></o:p></p>
        <p class=3D"MsoNormal">GNU Radio 3.8.31<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    This question will get a better audience on the discuss-gnuradio
    mailing list, even if you're using a USRP, general Gnu Radio
    questions like this<br>
    =A0 (particularly about GR build tooling) should probably go there.<b=
r>
    <br>
    <br>
  </body>
</html>

--------------020200010700060600080805
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.08040900.02050004@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAnsAAAD/CAMAAAC+VOBCAAAAAXNSR0IArs4c6QAAAs1QTFRF
IhoPIhoeORoPORoeIhofIhoXIhoSIhomIho9IhosORosIjQdIiY7OSY7IikpIjgyIjJNOTJN
Ik0iIkJUOUBbOUBNImFnUBoPUBoeRBoPRBofRBoXUBosUCY7RDgyRCkpUDJNXkUrXkU8REk+
XUk+REkyUE1bUEBbUE1NXkVOUE1qXk1qXnduXmJgYBoPYRoPYRofYRoXYBo9YBomZiYPeTIP
ZiYeeTIedykPdykfdykXZjI7ZjA7ZiYseTIsYTgyYSkpeUAeeVs7eU0sZk07YVo+d0kyYVoy
d0k+YEJUZkBbZltNeU1NZltbeVtbZkBNYVpMd1pMZltqeU1qZk1qbE1qcFtqd2s+d2syeWdN
eWdbd2tMYHl3YHlneWdqYGFngxoPghoPgxo9iDgPiDgXiDgfiUAemUkXmVofmUkeiFofmE0s
iVs7mFs7iUA7iU0siUAsmE07iUAqh0UrnkUrh0U8mUkpg0JUiVtbiVtNiU1NmFtbmE1NmFtD
nkVOiVtqiHo+mXoymWspiHoymXo+mWs+gmMoiWdNmGdNmGdbiWdbiHpMmXpMmGdqg2FniWdq
g3l3g453g45nh4h6h4hunph6g46GnpiGpBoPoEIPpVofoEImoEI9sWEPsXkmsWE9sWEmsWIr
vXcrsWI8pXoypWsppXo+pWs+pHcysXlUoGFUsWJOpXpMoHlnoHl3sY49oI5UsY5nsZhgsaFU
sa93sa9noKF3saF3oKFnva96va9usaV6oKGGsa+Gva+GsaWGwDQP1U0PyHkmyHlU0449yI49
zIg81ZoowIoo1ZoywIoy045U05hOyI5nzIhg05hg06FUyKFUyK9nyK93069n0693yKF3yKFn
06F306VgzKVg0696zK96069uzKV6zK9uyK+G06+GyKGGzK+GzKWG6mMS6mMX93cX94od6poy
95oy95oo6poo6poi95oi9UxOtAAAAAlwSFlzAAASdAAAEnQB3mYfeAAAABl0RVh0U29mdHdh
cmUATWljcm9zb2Z0IE9mZmljZX/tNXEAACoxSURBVHhe7V2Lnx1XXb+bJiRLt8nK3m5ARUmj
xV770DapRUSkRKVANcYHpl1DoLJB05QiILWogGgbmi4Fq1sSCEhtwUcRFIiiDYUQqoCPUFqU
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
sLu+I1v0IDPrUeFGW99oZsOEsqTvyT41fZDR23Q/7J362q371l1Phq3ktLliu6yp86dz3qZH
ZrmiB5pZjwo32vpGM1M/OAwoy8pomnogGY/viAA8kNu6j4d/JaeJFzwqtMuaOn/aMsulzpVh
d5Wczlehkcx6VLjR1jeaWSOtr9YvZX3fNPd2io/9XvGe93/7neKCS06rh75BL/+Qps6dtszU
M1vqfBl6l/qmUPQgM+tR4UZb32hmw4SypO+bZh7lRw5X7N0R9rX0Dxu2ktNkE9lD62VLnTtt
mZWczt+VK3qQmfWocKOtbzSzYUJZ0vfNkw9zd0xcaXDyEl1qwXS35DSGAvDQehmrI0idO22Z
lZzO35UrepCZ9aiwXW6k9Y1mNkwoS1rfPPfU6NCqnYzz1LCVnCabyKNDvWypc6cts5LT+bty
RQ8ysx4VbrT1jWY2TChL+r557nmOjoAj4Ag4Ao6AI+AIOAKOgCPgCDgCjoAj4Ag4Ao6AI+AI
OAKOwFARWHvogffTZkivg8SB2Azp99h4Z4W7N975wH2QmNFOOLanV37wLncDB2+Tr/iw5pVm
tFM7grBmHOocvTHjPf7mDxWGWcaQkRSBtbPwLPbgqlSJN+KqHqxWSI5i7nX1qeHTEGlWno1U
aIXcC7f36H7l3sbfXK4/SuvSq7FVuNcrj4LuV4G0XtlED82mAlu29i3PLaTPMLhXzFnnXhEu
+ec2m2a0uGeaea2jVG4naVqedShjuzfd/814q2MrlH030ItFdlm5l7P05CHgZTU15SgCBNgz
/id7kOd+gIVZD8CD496M31CPYJmtI6khPSCiMiO/GAx1od1L77r/aete8iMPHGELnqswqkBV
3HSEzlOeKCNx3ehQbijeLGChWWYQsQnawyMRFMkM/6JB664nwXvqBrUBaAEe8p14l+CG1sY3
08sCDJA2Hu2il2OsmZQA0jZkxP9kj+CSs/Ba6xXhmJncjZpId7DNsipY8xQURvi+y9Yegpwd
/5iZUoykwvLSRR33FsXxkqFQaev933I9QEtGPERH0HIrwUFNX0eXWztRkNwANJJWo4ZrD+3j
1HJapNHkDzKZaiPUWOOyYJunpwgMNTNz3/oMr/1F64xi7uld38lFr7ueaLKPcshVuPWjlzGs
mwg8XELTEhdi3AslENEScDYR9lT5AIpmJmyhlFko110vHQRgtvJDdAS/b7zz/VdxFRRKcz5Z
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
--------------020200010700060600080805--

--------------030808050304030905090404--

--===============1544024249288229784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1544024249288229784==--
