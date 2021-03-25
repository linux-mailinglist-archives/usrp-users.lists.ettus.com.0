Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4D834967D
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 17:13:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DEC7384231
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 12:13:48 -0400 (EDT)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D8166384054
	for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 12:12:53 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id g8so1455539qvx.1
        for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 09:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=oA3ciwZJAm2aGgGMXzpZCub6PLHSCMTFXjQcTPi3vZQ=;
        b=sy/KFGrzj+3g55Pj22F69GoCPVJFKB9gGheVkNceSuwIOudNm+nBbYW4z/sPsSoH8a
         1vgAxPFNCor3qSxVOgWCpCuCKfFF1QLznHAFAlIViqxxf3IWUQXz16tyafyXamDYy0EC
         +b0sJZijZq9SxwmqgvQXSpQym7R9c6aOdA9wMXppk0R7GUYfsR/6VABcNIYgn06IpYKC
         Mpt/Ja6VWcbOYyuNdcW3TwZGhFXYoHNQOZgrimit58JvvoyHKfdwFHjj/ugXVpFEd75F
         O12tMVxeu78ZOZ2tgrAGmOJuV6xk3kwuGANwXmnEaPh/kbeAWO2cLD7Av2vfkncfFctY
         F5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=oA3ciwZJAm2aGgGMXzpZCub6PLHSCMTFXjQcTPi3vZQ=;
        b=kN+rxV7d7PWQ8FHzcfHE5QTQ7ElUYi4O/coGvDs3n9zsiq2u4FmlDOLNJ4L5lJMHKi
         S6t5n9udU5loiHMbIyi/yxFM00jJJ6IZ//xJUhYFSZONYv4PG3EnZpB6b4vc6bqhhSAI
         1w8jeVAVqudX1goMLbMxnAt68cAodSc73DuNDnyJ+0t6fxYZeVupQDxRTY528tmnA6op
         iLyRW7yfbGIV4ZPKJqS3spegLwhJXGW1UUjTsHqGyqb8GTDFiPosWiazhq6m5AbnR8yY
         dxv/WYJNaHF+5zlLmjoNhp71CrHjBSf7diDwVOUp9YKspjE4vSdlxjKRJ082IfuoL/SM
         /OUQ==
X-Gm-Message-State: AOAM533D05bJuklr6otcaCS4/EoNqU7smLtGcKc4hGniGGNztx3jeK+2
	V30CjSLBFZfYZBz7bhz/1Z0tkJvL7aM=
X-Google-Smtp-Source: ABdhPJyopQZN5Uy1VxG4VIdALkV2ToUekj4AeYZbV8tVJsRSlmTmL7zkea6hUb+1iPckJxYSU7sLZA==
X-Received: by 2002:ad4:56e1:: with SMTP id cr1mr8986925qvb.25.1616688773212;
        Thu, 25 Mar 2021 09:12:53 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id p7sm4477638qkc.75.2021.03.25.09.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 09:12:52 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 25 Mar 2021 12:12:51 -0400
Message-Id: <330C91D5-8F0D-420D-944F-DDA4525C9FF3@gmail.com>
References: <EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu>
In-Reply-To: <EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: 6EPHJG5YBG23K3QBFTGCM55GMVRC667D
X-Message-ID-Hash: 6EPHJG5YBG23K3QBFTGCM55GMVRC667D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N300 - Set RX bandwidth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6EPHJG5YBG23K3QBFTGCM55GMVRC667D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1578770619393209739=="


--===============1578770619393209739==
Content-Type: multipart/alternative; boundary=Apple-Mail-0DA9EB2A-C227-4F7B-89E1-80AEC1CE7D30
Content-Transfer-Encoding: 7bit


--Apple-Mail-0DA9EB2A-C227-4F7B-89E1-80AEC1CE7D30
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If you do t specify bandwidth at all, and rely on the automatic analog bandw=
idth setting what happens?

Normally UHD will set an analog bandwidth that is appropriate for the select=
ed sample rate.



Sent from my iPhone

> On Mar 25, 2021, at 12:07 PM, Minutolo, Lorenzo <minutolo@caltech.edu> wro=
te:
>=20
> =EF=BB=BF This is very interesting. I am trying to set the rx bandwidth on=
 a N321 for a while now.
>=20
> Is there any workaround? Our bandwidth seems stuck at 8MHz while our appli=
cation needs much more.=20
>=20
> Thanks
>=20
> Lorenzo
>=20
>>> On Feb 25, 2021, at 10:32 AM, Marcus D. Leech via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>>>=20
>> =EF=BB=BF
>>> On 02/25/2021 11:30 AM, Puertas Blanco, Roberto via USRP-users wrote:
>>> Hello,
>>> =20
>>> I noticed that RX bandwidth is fixed to 100MHz, although the AD9371 data=
sheet specifies an adjustable range of 8 to 100MHz. Why is this parameter fi=
xed?
>>> =20
>>> double magnesium_radio_control_impl::set_rx_bandwidth(
>>>     const double bandwidth, const size_t chan)
>>> {
>>>     std::lock_guard<std::recursive_mutex> l(_set_lock);
>>>     _ad9371->set_bandwidth(bandwidth, chan, RX_DIRECTION);
>>>     // FIXME: setting analog bandwidth on AD9371 take no effect.
>>>     // Remove this warning when ADI can confirm that it works.
>>>     RFNOC_LOG_WARNING("set_rx_bandwidth take no effect on AD9371. "
>>>                      "Default analog bandwidth is 100MHz");
>>>     return AD9371_RX_MAX_BANDWIDTH;
>>> }
>>> =20
>>> Best regards,
>>> Roberto
>>>=20
>> Because despite what the *datasheet* for the AD9371 says, the published i=
nterface to change the analog RX bandwidth has no effect.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-0DA9EB2A-C227-4F7B-89E1-80AEC1CE7D30
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If you do t specify bandwidth at all, and r=
ely on the automatic analog bandwidth setting what happens?<div><br></div><d=
iv>Normally UHD will set an analog bandwidth that is appropriate for the sel=
ected sample rate.</div><div><br></div><div><br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 25, 2=
021, at 12:07 PM, Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt; wrote:<br><=
br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">


This is very interesting. I am trying to set the rx bandwidth on a N321 for a=
 while now.
<div><br>
</div>
<div>Is there any workaround? Our bandwidth seems stuck at 8MHz while our ap=
plication needs much more.&nbsp;</div>
<div><br>
</div>
<div>Thanks<br>
<br>
<div dir=3D"ltr">Lorenzo</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Feb 25, 2021, at 10:32 AM, Marcus D. Leech via U=
SRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div class=3D"moz-cite-prefix">On 02/25/2021 11:30 AM, Puertas Blanco, Rober=
to via USRP-users wrote:<br>
</div>
<blockquote cite=3D"mid:AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308=
.EURP193.PROD.OUTLOOK.COM" type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I noticed that RX bandwidth is f=
ixed to 100MHz, although the AD9371 datasheet specifies an adjustable range o=
f 8 to 100MHz. Why is this parameter fixed?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">double magnesium_radio_control_i=
mpl::set_rx_bandwidth(<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; const double b=
andwidth, const size_t chan)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; std::lock_gua=
rd&lt;std::recursive_mutex&gt; l(_set_lock);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; _ad9371-&gt;s=
et_bandwidth(bandwidth, chan, RX_DIRECTION);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; <span style=3D=
"background:yellow;mso-highlight:yellow">
// FIXME: setting analog bandwidth on AD9371 take no effect.<o:p></o:p></spa=
n></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yellow=
" lang=3D"EN-US">&nbsp;&nbsp;&nbsp; // Remove this warning when ADI can conf=
irm that it works.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yellow=
" lang=3D"EN-US">&nbsp;&nbsp;&nbsp; RFNOC_LOG_WARNING("set_rx_bandwidth take=
 no effect on AD9371. "<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yellow=
" lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Default a=
nalog bandwidth is 100MHz");</span><span lang=3D"EN-US"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; return AD9371=
_RX_MAX_BANDWIDTH;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Roberto<o:p></o:p></span></p>
<br>
</div>
</blockquote>
Because despite what the *datasheet* for the AD9371 says, the published inte=
rface to change the analog RX bandwidth has no effect.<br>
<br>
<br>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list</span><br>
<span>USRP-users@lists.ettus.com</span><br>
<span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</sp=
an><br>
</div>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-0DA9EB2A-C227-4F7B-89E1-80AEC1CE7D30--

--===============1578770619393209739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1578770619393209739==--
