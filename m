Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C0D322F7D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Feb 2021 18:20:37 +0100 (CET)
Received: from [::1] (port=43362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEbMJ-0006LS-DU; Tue, 23 Feb 2021 12:20:27 -0500
Received: from mail-qt1-f180.google.com ([209.85.160.180]:40136)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lEbMG-0006G4-3B
 for USRP-users@lists.ettus.com; Tue, 23 Feb 2021 12:20:24 -0500
Received: by mail-qt1-f180.google.com with SMTP id f17so12414134qth.7
 for <USRP-users@lists.ettus.com>; Tue, 23 Feb 2021 09:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=MazQ/SAqBY2OlMlfvqQ9I/Svu34rXmh2MGkWyR19XqA=;
 b=fJNtLwTHv8s3Nnm8JF3QathKVeeZoVBpYuSpzsj8QAv61APoOaSPIYyRWXyU30xtyw
 B/C61mTmz8z5P3Lm6w9Ut4sbBoGQfK+Lm9LcIV4cZIbQlan0rRhST88DQZF5/W78nSJN
 qwiBRBRUOOElUk12wORc5fkCZFgVaZI9H4HhgO3IFyZrCsnXOEvw6Uls3kmBXX0V4p1O
 tH+3Xny57gXH8nxkqnKu0QoQqfK0AZTUx0JQIBjwEwZJ52enHT3L+4uIDAOpHmBOUIhC
 UcnS9W6jkUg+fRrDhxViWc4VwQa5qIdKyra8N+DY3cX79ajtRoLBLLZ4OIIz3NqSXkRl
 jc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=MazQ/SAqBY2OlMlfvqQ9I/Svu34rXmh2MGkWyR19XqA=;
 b=Dn/hJBlqQpGajkOTM4imiimMPmdUx5HoUgvXggd4KVqwAB6EEyRaUzr47fy0MAYO+O
 LScjKBSlewhmuOgHISnDyuaG8sB71/OZEDMMk875CXTkwS5Ozn7w8WDsy3H+ez0b+nbD
 mW023QFEd1IQhZkOHMvIWhZwbAWuT8ywOgIgfLPWrraegmeL5diaVnRoww2ueY5msdbP
 153IPiF8GYnFXf3L3a3lv65XxzfdVCYabqnXMzD7oR5eYf7Y5fl/D6EGr3m0wbrq/qE2
 fu8aziwmcvlRWjbnTRTF8XcYcuzIuDSsOrTJW5BbgsIAIH3/nMDR5+WKucvvGuCgNQHw
 NlRw==
X-Gm-Message-State: AOAM533XD2DsJUzsyKJ+gB2Bgv/Aj3VuPd7TLTFVVs0YNd8Iw3qIp491
 bCIxCFktRj5K8D34y0CTGa+zobE7aws=
X-Google-Smtp-Source: ABdhPJwKm68G6WHRssqAu6VRYD0/kKDqzKtFk8JCQnhWfWW604Xj4uf8zPBH0Oc4fJcs+1BLXsWt8w==
X-Received: by 2002:ac8:343d:: with SMTP id u58mr9007441qtb.315.1614100783397; 
 Tue, 23 Feb 2021 09:19:43 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id q8sm402568qkn.39.2021.02.23.09.19.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Feb 2021 09:19:42 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Feb 2021 12:19:41 -0500
Message-Id: <9EC26B3E-E337-43DD-BB4A-509B521BFBA5@gmail.com>
References: <BBFC10AB-0C6C-4C08-AF50-7CF0B7C30F1B@lanl.gov>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <BBFC10AB-0C6C-4C08-AF50-7CF0B7C30F1B@lanl.gov>
To: "Cox, Jonathan Albert" <joncox@lanl.gov>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] Overhead Time for Tuning USRP LO and Acquiring
 Signal for Swept Spectrum Analysis
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4987463188846745361=="
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


--===============4987463188846745361==
Content-Type: multipart/alternative; boundary=Apple-Mail-FB974A54-09CB-4F3A-9922-9022BC8398F8
Content-Transfer-Encoding: 7bit


--Apple-Mail-FB974A54-09CB-4F3A-9922-9022BC8398F8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s likely better to use continuous steaming, and use the tags inse=
rted in the steam to determine applicable frequency.=20

Tune time on the UBX is probably a few milliseconds.  But I must emphasize t=
hat none of this hardware was optimized for fast frequency hopping.=20



Sent from my iPhone

> On Feb 23, 2021, at 11:19 AM, Cox, Jonathan Albert via USRP-users <usrp-us=
ers@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello USRP Users,
> =20
> I=E2=80=99d like to understand the practicality of using a USRP with UBX b=
oard as a swept spectrum analyzer to sweep a broad bandwidth, like sampling 1=
0 MHz to 6 GHz fairly quickly. I don=E2=80=99t require extremely precise amp=
litude calibration across that bandwidth, but the sweep speed (LO tuning and=
 data acquisition initialization) should be relatively quick.
> =20
> How long does it take to command the USRP to tune to a particular LO cente=
r frequency, initiate a data acquisition, and then return the result (exclud=
ing the time required to perform the actual sampling)? For example, the Tekt=
ronix RSA306B claims a sweep speed of 500 ms for 9 kHz to 6 GHz.
> =20
> Roughly speaking, to cover 6 GHz with ~160 MHz bandwidth, you would need t=
o tune the LO probably 45 to 100 times (depending on overlap, filtering, etc=
.) . Therefore, if you want to keep the overhead under 200 ms, each tune/ini=
tiate acquisition/download step should take no more than 2 or 4 ms.
> =20
> Is it reasonable to tune and acquire with the UBX board in an X300 in 2 to=
 4 ms?
> =20
> Regards,
> Jonathan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-FB974A54-09CB-4F3A-9922-9022BC8398F8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s likely better to use continuou=
s steaming, and use the tags inserted in the steam to determine applicable f=
requency.&nbsp;<div><br></div><div>Tune time on the UBX is probably a few mi=
lliseconds. &nbsp;But I must emphasize that none of this hardware was optimi=
zed for fast frequency hopping.&nbsp;</div><div><br></div><div><br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Feb 23, 2021, at 11:19 AM, Cox, Jonathan Albert via USRP-users &lt=
;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote=
 type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hello USRP Users,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I=E2=80=99d like to u=
nderstand the practicality of using a USRP with UBX board as a swept spectru=
m analyzer to sweep a broad bandwidth, like sampling 10 MHz to 6 GHz fairly q=
uickly. I don=E2=80=99t require extremely precise
 amplitude calibration across that bandwidth, but the sweep speed (LO tuning=
 and data acquisition initialization) should be relatively quick.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">How long does it tak=
e to command the USRP to tune to a particular LO center frequency, initiate a=
 data acquisition, and then return the result (excluding the time required t=
o perform the actual sampling)?
 For example, the Tektronix RSA306B claims a sweep speed of 500 ms for 9 kHz=
 to 6 GHz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Roughly speaking, to=
 cover 6 GHz with ~160 MHz bandwidth, you would need to tune the LO probably=
 45 to 100 times (depending on overlap, filtering, etc.) . Therefore, if you=
 want to keep the overhead under
 200 ms, each tune/initiate acquisition/download step should take no more th=
an 2 or 4 ms.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Is it reasonable to t=
une and acquire with the UBX board in an X300 in 2 to 4 ms?<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jonathan<o:p></o:p><=
/span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-FB974A54-09CB-4F3A-9922-9022BC8398F8--


--===============4987463188846745361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4987463188846745361==--

