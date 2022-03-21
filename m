Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA324E305F
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 20:00:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 233CE385460
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 15:00:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MuTe+7n3";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D4EB43848D4
	for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 14:59:54 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id b189so12374320qkf.11
        for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 11:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=A76sYlkguZ1KEGSapEk4w0ZoEDm6qEAHH1We/nGCQZM=;
        b=MuTe+7n3gcydonJyRA7O3lXi501xgGT9VomWIsFrZsAK3svA+E1YMphTgoEWaHCAgA
         xyQzQ41etZaXu0irJyUAEHThAvB5RLF6WOtdYMmcroNDwXGdaselYj7PqsdqQwgTAVQ5
         B9HRjRzrIRP0RoDXD981h2dJqmvH9bFtjRidINGe1V8Q6md897pebdY2qkdA5KpdAJDn
         1xl/rGaiJXIJtbDzpoVImpECU/DeGHZ8lkf+6rLrQIZmfrNCxwvIBie/NT7zcB5pO6UF
         qOXixtQuLrS2pRmTIPVMz+uarmGxFLKsCbYMj9J8ixnO/j/xSPLGccJcgaCkQtOhm+GB
         HY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=A76sYlkguZ1KEGSapEk4w0ZoEDm6qEAHH1We/nGCQZM=;
        b=cSfZBkcFapI0ttOOsr4ozrUoWLEx0NMumfGa14eVIxDzikFzTUO/Q3uEcd232k2ouO
         TaH1xTnDQVmVPkCK93dmsyRyLaGYrMSU/jsFBad2WqS3hHYDxcGBH2hR4dbnaUpsaAs2
         W1OUrTtqlOZJE+jXM03hWAjtNbh6DVVoX/J9k6YceXNJULlpwjXQ1s+fQHe76qq4BIVx
         vO4tRhao+WIljGg/pZGvUuq3LYEPuWzUkAF7+WGpUweYGHItuzvUnzkafCke6uw/qL0S
         xHO9QO9d3BK4AR5aFOqnKXlR7MVO9zxwSsfyZm8sVUfCRokFu0xygQkUT/6r3K+qm9Da
         cEwA==
X-Gm-Message-State: AOAM530K+GqBzAKU74jnhJOK3kOyF6shB4qYO+5PCGP8yCte2f7F44ve
	I8TQS36woqys1aYBXBbYAMhIVBGj/gg=
X-Google-Smtp-Source: ABdhPJxwPN52c1rtRM2FGwB9uDJfv219b5WBrO91pEA6Jn6gVT5Lc1XVCtUq2k1teJVOQujl4ypWbg==
X-Received: by 2002:a05:620a:298c:b0:67d:9779:7503 with SMTP id r12-20020a05620a298c00b0067d97797503mr13880964qkp.622.1647889194225;
        Mon, 21 Mar 2022 11:59:54 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id p14-20020a05622a13ce00b002e1fd7e0e3bsm8974442qtk.14.2022.03.21.11.59.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 11:59:53 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 21 Mar 2022 14:59:52 -0400
Message-Id: <E319DE84-E73B-49B3-9E70-A4EB2DE4056E@gmail.com>
References: <BN6PR03MB3137F5CCAACE6824D0756891C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
In-Reply-To: <BN6PR03MB3137F5CCAACE6824D0756891C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
To: Abby Mize <abby@lunasonde.com>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: KGATMRUNLZCQYQCOOJJD3BGOKFQ6FU5K
X-Message-ID-Hash: KGATMRUNLZCQYQCOOJJD3BGOKFQ6FU5K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini QPSK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KGATMRUNLZCQYQCOOJJD3BGOKFQ6FU5K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8622534498884131320=="


--===============8622534498884131320==
Content-Type: multipart/alternative; boundary=Apple-Mail-3F693E20-753D-45EF-B322-61322F10DD42
Content-Transfer-Encoding: 7bit


--Apple-Mail-3F693E20-753D-45EF-B322-61322F10DD42
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The UHD API is strictly a device driver interface. It has no DSP functions.=20=


You might consider GNu Radio but their are other DSP libraries out there lik=
e liquid-dsp.=20

Sent from my iPhone

> On Mar 21, 2022, at 2:57 PM, Abby Mize <abby@lunasonde.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I am looking into using the B200mini-i for QPSK modulation, using Python a=
nd a Raspberry Pi platform. Is that built-in to the API?  What other modulat=
ion schemes are easiest to integrate?=20
> =20
> Thank you,
> =20
> Abby Mize
> Senior Embedded Systems Engineer
>=20
> +1 505 504 3611
> www.lunasonde.com
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-3F693E20-753D-45EF-B322-61322F10DD42
Content-Type: multipart/related;
	type="text/html";
	boundary=Apple-Mail-6CD20134-8925-4B1D-A96A-18DA3F264329
Content-Transfer-Encoding: 7bit


--Apple-Mail-6CD20134-8925-4B1D-A96A-18DA3F264329
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The UHD API is strictly a device driver int=
erface. It has no DSP functions.&nbsp;<div><br></div><div>You might consider=
 GNu Radio but their are other DSP libraries out there like liquid-dsp.&nbsp=
;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On Mar 21, 2022, at 2:57 PM, Abby Mize &lt;abby@lunaso=
nde.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@Malgun Gothic";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking into using the B200mini-i for QPSK modul=
ation, using Python and a Raspberry Pi platform. Is that built-in to the API=
?&nbsp; What other modulation schemes are easiest to integrate?&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
<p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o:p></p>
<p class=3D"MsoNormal"><img width=3D"130" height=3D"17" style=3D"width:1.354=
1in;height:.177in" id=3D"Picture_x0020_1" alt=3D"Shape

Description automatically generated with medium confidence" src=3D"cid:image=
001.png@01D83D1A.CA67BD70"><o:p></o:p></p>
<p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"><span style=3D"c=
olor:blue">www.lunasonde.com</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-6CD20134-8925-4B1D-A96A-18DA3F264329
Content-Type: image/png;
	name=image001.png;
	x-apple-part-url="image001.png@01D83D1A.CA67BD70"
Content-Disposition: inline;
	filename=image001.png
Content-Transfer-Encoding: base64
Content-Id: <image001.png@01D83D1A.CA67BD70>

iVBORw0KGgoAAAANSUhEUgAAAIIAAAARCAYAAAAR8XQQAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAS/SURBVGje
7ZkHSJZBGMctszJtaFG2CBq2bdqiHRVStgcNGlgUldkkQSps72VLjAZERRERNGnR3pMGQZREQUZF
RZGVac8D/xeu65bfFw36XviB3z3P3Xv3vP+7e+4MSk1NDQoQIBAEXwMXFFSDaB0QQkAIi4k3xHWi
TUAI/+6HLORDnapEESIYv8sTS4gvRO9/Xgj07CXOEkUdgjEEs6CLxl4d9kka+3a8K9LwjmnERSLU
cWaed/QtSCwlMolXxGNiNlHYUKctcYR4RnwjbhFRks9wIpuoJJWXIC4TOyz94phs0dhaIp4PiacC
l4ipRDlL281Q/4FUn4mXhcCFuUSYQzBnEHksCI29AexrNPabsLMYSmp8NsAn3NKXKOIzfEc59D0N
vgeIdHxg/t1Q4z8T9nvEXKK9GDzJl4O9VSqLxGrBbWw09Os+C0xj64b63H6GwF2UvyXGGNruAr8H
Un0mVhYCO70nijkEczIaHqix14d9qcZ+HnZPDMEKn1XEJ5sw6ZmDdr4Sd3jGG3xLwXeXYsZXVviP
gP8sooBDXCYQx6WyCKw83njXaupeIy5obF11QqenA/ESdt0K3Qn2mS5bw+8UwhWoOB1+ab4IgZdz
BPmQ0KfuFiHw8n3aYYzhRBaxJx/5A8/+4gohZGM270MfE3wUgm6rrYl43iZCDEKY97cJ4SqCw/v1
Aviu9EEII1G3J68q6P81S98Xoc5J3XYAv47wa2BpLxRjaKexRyCvOAvhHlaJwR8hwGe9rr+CEFZC
rCLBf1oI37yPLMyU8fkUAvf5oWI/jzXUCRG2kzzkDGGaBPSDQywKIG6rDULI8QQK4TzBu1v9QiH0
k2OoEIKK+v4IYYpFCPUchJDjnRqwZHt5Q38XIWBvzIOI4nhLIMahbK/DGJoQ5+B/Sj4tcUCRhEY4
bCF8l5BkEcJVoawu8QLbWoyQaPojhIli/DRC4NVotESkP0JIQsO9NPbGsK+wCCFCKCuOYxnXa06k
YPvQCeEAfHM1Sq/nuK9vgv9Qqbwayodb6veCXyNXIaC8Fq84EEMFbFUX/RDCDfiUNQhhlmuO8M4x
eI1U+7pgH2RJbn4SAsprQ4x8lN1PvNYs21WxtezABxPpjHev18xe+fxfCf7bFP6HMdtLG/KD57yy
GGKlFAJsfYV85ZYuiRWEME5jT4B9s+p0IwhhjosQ+Jz8ke/OiaYCMXLj2BdPoPEZngr5o2Gv+oQA
lc6PEGBrigw4D3upSggZpllPzzGMJUrxUfgOYwDfDqIs2XA0K4O4ZELcIcKlVA9MHu5jFV+EAPtg
YRU7aBHCfFzW1UGcOKHdLSz74ZbjYzr+PxINaovfyHPO1CyxX1S3jRjgUWF5fo6lzru4aG4IziP4
RVoy9s/y4OipCNsZQ/utVLMcJ4tTwiVMFv7eqTp2CUfC4/B7hXF65/bL8k2ipj77PjL4TIePbmuI
NyR7uUh4QwztxxnqL5SFkIRMeQmuYD1STHfyfGziXIBYxzeJRB+H28BE7oDpSpieYcjuCyuSvGU8
IyzvSMYpQl7NCqGPHLy1cm5gaK8hjonrEJcWjvVCMdZEh/6O1diicezl9y7H+BfgxrCCQx+qS/WX
C+10/e//6RTgR74Dyf5pfsk8/dQAAAAASUVORK5CYII=

--Apple-Mail-6CD20134-8925-4B1D-A96A-18DA3F264329--

--Apple-Mail-3F693E20-753D-45EF-B322-61322F10DD42--

--===============8622534498884131320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8622534498884131320==--
