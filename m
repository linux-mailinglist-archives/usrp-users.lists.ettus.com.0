Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1A8B09EC1
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 11:12:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DC27386461
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 05:12:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752829926; bh=k2g8/O4AirVfn5gJAlzixbaaZE9SHw7S6wScyJDUkK8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bsEGmrqYKidwWwT15HQFryrq2JFYubc6zqN+0YejuC25hyzG2YGdj9mo9raeXziwi
	 1jEmDw3v6qJz+hn+dRTWkEA54Y3Ko/wOYHrToutIF6Lca1o4OtE3p60c6xOfsBTOHL
	 TU/bFm1zXlhyOxrcf4twA//PjubPkkCZ4MAKDfCzuUpHh/v5lvqJEXcIpKYEGOfLkI
	 EdDqAOOWrgUs3VpNaLUPf1vR46JDLlaXm1NTQtl5rH20aJBOjRPH+d8zpPRE4tna9q
	 wDM6WgyPEHonDap1HsNaqEAI8BSURLcbuAJXibpthsv/S/HtMrm+II0eRm/cFAAETY
	 chZGDeZaCVJ8A==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id BB0F73863E1
	for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 05:11:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ASz9kMr7";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae9c2754a00so313213066b.2
        for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 02:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752829880; x=1753434680; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=do1gT/8Pb3E3EvIM5uVKAtooR1smqtfGL2+bwsp5J1c=;
        b=ASz9kMr7YPcKxTYbx6I84my+agXHvHYH/9oD5FnDHgqIq226n7zEErAZHFN0Ld6/T4
         GmKj3baieWqVWBK3I0tgXhAReLSQOtNnkR6GbRe2DmwG1Yftj71x1g4cGeAflqTdhRAb
         AjcBH+zdCpNnXiyihfkXxw1p6aEp4NdLqoWu+uaTLbCS4HJEcU/xblGM9cH9j2PFfVMl
         t+W8Anm33NM+Yr+guxcmxS3L1rHaemEiP2qfWzbQY2aheVvJvIAt6JaATpMAMLuamEhc
         2It8f9mCvgq5hCWIMNjBlsZh/upcdOQ/U0Ec6bBxNlrQwz9S1FALKNNggH16WhxvafQT
         /kJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752829880; x=1753434680;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=do1gT/8Pb3E3EvIM5uVKAtooR1smqtfGL2+bwsp5J1c=;
        b=h4Nd4E+BWhlMymTQTgNy1e2gzJ24zZyG6diIZJg/Tg09acBQH7yPGWnlkgusoqFR6/
         3TT5+kPKrGG7fnZUx0PdM3yyHYhN0PteFTpr6adfg2tYF3kKl2Tp1rnCbX/razXKLuGL
         9+1fQgmQz+ywHv1zGHjEfrem/stedsN//BYABKPypj+UGTHn2jsasS4E3FmMT4D8iguB
         lQkgjQpU/POiTHVDCXiz0/8gE62N7p60RscfRAjdwccXxxefyTRGDSVosfHGuQRQc9bU
         48DhZvd9ME4WA4+sHgrdgf6fd0LO9gCRb3+Wzek4KYAVan2iQVZQnzj9zOkRDAo3Ap8/
         DlJA==
X-Gm-Message-State: AOJu0Yyy1mmGqZlF8W/uiDEXdTefs2ZFLN3KLa0uS0KJtTGvev38TIpp
	2UPtidePa2VuYGXldoh4T4bo185GJiaCN/KAQgAhSXMaSesmVqQVAdkRn1yhlFmz44ROghtqDE3
	nJ8v4LOwO7rF6XiDBTuD0Ve1S4p7M4oNaf0RpPkLBttcixzjCoi5sXrw=
X-Gm-Gg: ASbGncsciI90tcyqy46JHDqWX79JQ+il1Jq+tkFi6U0qKXbWJgX+zbRwm7a9LD6MK6h
	7JahuEq39RIPPBix2Qy7ZU68F3hO4OnDF9FMC9JWHzlt5Ub6aQ6M2RElI/70zjQ4Z9BZ7HKTUyx
	ncSh8mKo9pjxcgEXpksgmQqmt3t+BZEbrlVLMBos+LY6zlhSq3vj1yIWXeLIO6PCez/tYI1irwB
	AVh93zg7qjmcdRcS6Bzn083JEB/1AxEFHcW9A==
X-Google-Smtp-Source: AGHT+IGpc74u6iT1dqIX2QBoEFdxOEOA1iseWFuQZW6bxjSSElV0Xh+QOAnOWN3X5QK9TlOVfJ/+zxPbRKmDz3T74bw=
X-Received: by 2002:a17:907:501e:b0:ae3:8c9b:bd61 with SMTP id
 a640c23a62f3a-aec4fa438c3mr358326366b.12.1752829880096; Fri, 18 Jul 2025
 02:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <Mailbird-67b125f3-6214-4b57-94f3-f1d53636cb82@gmail.com>
In-Reply-To: <Mailbird-67b125f3-6214-4b57-94f3-f1d53636cb82@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 18 Jul 2025 11:11:09 +0200
X-Gm-Features: Ac12FXzTdbS26PjbuMv1I9WRezcvLjjMJ_xZS6oetDUEoi6cw9yrMLPLzYKow4I
Message-ID: <CAFOi1A4wpfmWvTRwMf4SSFF9Q9d8aMmS4nZk=XLCwcvU3-UWuQ@mail.gmail.com>
Cc: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ROJILZLRD2NDBET7NTLLOP67N252K4Q5
X-Message-ID-Hash: ROJILZLRD2NDBET7NTLLOP67N252K4Q5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: installing python3-uhd API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROJILZLRD2NDBET7NTLLOP67N252K4Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8059907860318591733=="

--===============8059907860318591733==
Content-Type: multipart/alternative; boundary="0000000000005af12a063a308248"

--0000000000005af12a063a308248
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We currently provide wheels for Windows, because Linux users usually get
the Python API through other means. If you're using Ubuntu 22.04, then you
can simply do `apt install python3-uhd`.

--M

On Thu, Jul 17, 2025 at 8:54=E2=80=AFPM page heller <pageheller@gmail.com> =
wrote:

> I'm having some trouble installing the python API. I've been using uhd fo=
r
> a long time, but this is the first time for me to install the API. I am
> using Ubuntu 22.04 with "UHD 4.8.0.0ubuntu1-jammy1", as reported by the
> first line of code below, and python 3.12.3.is from the manual webpage:
>
> To perform the mentioned steps, use the commands below:
>
> <UHD Install Dir>\bin\uhd_config_info.exe --version #find the version of =
UHD
> <python> -m pip install uhd=3D=3D<version_from_config_info> #install matc=
hing wheel
>
> $ python3 -m pip install uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1
> ERROR: Could not find a version that satisfies the requirement
> uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1 (from versions: none)
> ERROR: No matching distribution found for uhd=3D=3DUHD_4.8.0.0ubuntu1-jam=
my1
>
> $ python3 -m pip index versions uhd
> WARNING: pip index is currently an experimental command. It may be
> removed/changed in a future release without prior warning.
> ERROR: No matching distribution found for uhd
>
> I tried UHD with a space, with an underline, are removing it; same result
> each time. What is the correct way to represent the specification for
> uhd=3D=3D?  Is Ubuntu 22 a mismatch with uhd 4.8.0.0?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005af12a063a308248
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We currently provide wheels for Windows, because Linu=
x users usually get the Python API through other means. If you&#39;re using=
 Ubuntu 22.04, then you can simply do `apt install python3-uhd`.</div><div>=
<br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 17, 2025 at 8:54=
=E2=80=AFPM page heller &lt;<a href=3D"mailto:pageheller@gmail.com">pagehel=
ler@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div id=3D"m_-1912252588346848237__MailbirdStyleContent" style=
=3D"font-size:10pt;font-family:Arial;color:rgb(26,26,26);text-align:left" d=
ir=3D"ltr">I&#39;m having some trouble installing the python API. I&#39;ve =
been using uhd for a long time, but this is the first time for me to instal=
l the API. I am using Ubuntu 22.04 with &quot;<span style=3D"color:rgb(0,0,=
0);font-family:Arial,Helvetica,sans-serif;font-size:13px">UHD 4.8.0.0ubuntu=
1-jammy1&quot;, as reported by the first line of code below, and python <a =
href=3D"http://3.12.3.is" target=3D"_blank">3.12.3.is</a> from the manual w=
ebpage:</span><div><p style=3D"font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;font-size-adjust:none;font-ke=
rning:auto;font-feature-settings:normal;font-stretch:normal;font-size:14px;=
line-height:22px;font-family:Roboto,sans-serif;color:rgb(0,0,0)">To perform=
 the mentioned steps, use the commands below:</p><pre style=3D"direction:lt=
r;overflow:auto;border:1px solid rgb(220,224,216);background-color:rgb(253,=
253,252);padding:4px 6px;margin:4px 8px 4px 2px;line-height:18.375px;font-f=
amily:monospace,fixed;font-size:14.7px;color:rgb(0,0,0)">&lt;UHD Install Di=
r&gt;\bin\uhd_config_info.exe --version #find the version of UHD
&lt;python&gt; -m pip install uhd=3D=3D&lt;version_from_config_info&gt; #in=
stall matching wheel</pre><p style=3D"font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none;=
font-kerning:auto;font-feature-settings:normal;font-stretch:normal;font-siz=
e:14px;line-height:22px;font-family:Roboto,sans-serif;color:rgb(0,0,0)"><sp=
an style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">$ python=
3 -m pip install uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1</span><br style=3D"font=
-family:Arial,Helvetica,sans-serif;font-size:13px"><span style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:13px">ERROR: Could not find a versi=
on that satisfies the requirement</span><br style=3D"font-family:Arial,Helv=
etica,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1 (from versio=
ns: none)</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13=
px">ERROR: No matching distribution found for uhd=3D=3DUHD_4.8.0.0ubuntu1-j=
ammy1</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px"><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><s=
pan style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">$ pytho=
n3 -m pip index versions uhd</span><br style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px"><span style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:13px">WARNING: pip index is currently an experimental comm=
and. It may be</span><br style=3D"font-family:Arial,Helvetica,sans-serif;fo=
nt-size:13px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px">removed/changed in a future release without prior warning.</span><=
br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"><span st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">ERROR: No mat=
ching distribution found for uhd</span></p><p style=3D"font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;font-=
size-adjust:none;font-kerning:auto;font-feature-settings:normal;font-stretc=
h:normal;font-size:14px;line-height:22px;font-family:Roboto,sans-serif;colo=
r:rgb(0,0,0)">I tried UHD with a space, with an underline, are removing it;=
 same result each time. What is the correct way to represent the specificat=
ion for uhd=3D=3D?=C2=A0 Is Ubuntu 22 a mismatch with uhd 4.8.0.0?</p><p st=
yle=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-vari=
ant-alternates:normal;font-size-adjust:none;font-kerning:auto;font-feature-=
settings:normal;font-stretch:normal;font-size:14px;line-height:22px;font-fa=
mily:Roboto,sans-serif;color:rgb(0,0,0)"><br></p></div></div>______________=
_________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005af12a063a308248--

--===============8059907860318591733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8059907860318591733==--
