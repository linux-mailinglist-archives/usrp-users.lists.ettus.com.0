Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E40C433981C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 21:18:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9BA0383298
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:18:01 -0500 (EST)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A126D383270
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 15:16:59 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id g24so4817678qts.6
        for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 12:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=/LqtD4wKceyW2C4jcEMqEmg5+ekePuWYQtcPQ77Nk1A=;
        b=XqoPW8JJ8zWRw3B7WYwUSINthTiynUn48WH3ZtHl8/FqoH1+bsTHOv+yNdIx8VFk70
         xBqn8/N+FY/eAh591v9jBLKt08iBvvT+QA1TvO0rpeAUXggWV2N6UbXEhSsVkUGGDIIJ
         vLLXTBaQVj9DsUybBRcYYNraYjKED+HgMllY3TnYoaLzWkdgqbMo9sWfc/aBpnz3la/o
         xdVT8a1br4pSkQPoXzpArTnwnHDVCCraDBzcQfnR9EQE+E35uljvIJeKu8KQt7ekfGqw
         rXw1nmW6a4yJZN8lJ06NzjQ1/ptN9IKFS4Y+jNZMWzhI9kg5Rz/liTKhAWroyVJQzxqY
         TpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=/LqtD4wKceyW2C4jcEMqEmg5+ekePuWYQtcPQ77Nk1A=;
        b=CbVjvn3fwo9jDYGSoVelzIcwpJovZiZgFRGcyDpv4dkhzxSzkNiZ36XVWtT2U/SX66
         VFLaD9z1T1NCdFQlXWg6sqix4wkEYFj6//3p61D9LVkgPnV3bDSOefJ+YTB17pkBdsQj
         GMYWbxOtv3kJsBQFxOEr+jb9u5LucpiJCXEw4cw9XO0RzIZha4RplDxpR94tQeh3Mo7P
         y1tlTQUXek80V2cFbs1RFW5UqAT6eINjasApca/H5uICQbqKaM3wndEct4yKCbRVSNEM
         mFOvOdUTNE81KLwiPL8eioUHmV2rptHyCYitMX+hZgSjhKLgsoKXvp19LPdQWkChw5y1
         QiYg==
X-Gm-Message-State: AOAM533WI+xxliVn52DHmsonf8dKn9WA+DbtBS9OOE6tG/3b0j1cbNX1
	tvnbEvYAzGdhfpRZLx+8q1B6nNqV6Tg=
X-Google-Smtp-Source: ABdhPJwKLDNiH76Czuc9IyYOEN3G5Wnd23tLINiY7pxiprCrqNIt2W2uXEUVthUo3TOfHZ6i4BTC1g==
X-Received: by 2002:ac8:5212:: with SMTP id r18mr13207991qtn.290.1615580218976;
        Fri, 12 Mar 2021 12:16:58 -0800 (PST)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id t128sm5295116qka.46.2021.03.12.12.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:16:58 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Mar 2021 15:16:57 -0500
Message-Id: <6B3005CB-BF82-4097-905A-E71B22439D31@gmail.com>
References: <CO6PR19MB4801F65B228A1958C8830B06C66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801F65B228A1958C8830B06C66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: IW6ZDOOXVQJYSXLKPOANWMHDZOAH7D2O
X-Message-ID-Hash: IW6ZDOOXVQJYSXLKPOANWMHDZOAH7D2O
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Where do I find this call to change it.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IW6ZDOOXVQJYSXLKPOANWMHDZOAH7D2O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7285249541081507203=="


--===============7285249541081507203==
Content-Type: multipart/alternative; boundary=Apple-Mail-8743557F-C881-419E-BA31-F9A640F2EE85
Content-Transfer-Encoding: 7bit


--Apple-Mail-8743557F-C881-419E-BA31-F9A640F2EE85
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think we need more context.=20

Is this from a program you write yourself?

Someone else=E2=80=99s code?

A Gnuradio flow graph? Your own? Someone else=E2=80=99s?



Sent from my iPhone

> On Mar 12, 2021, at 3:02 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> Here is the warning message I am trying to solve:
> =20
> [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated a=
nd can lead to unexpected behaviour. Prefer calling tx_stream::recv_async_ms=
g().
> =20
> I am trying to solve this warning message when I am running my USRP X310, b=
ut I have not had any luck finding the file I need to edit. Can anyone direc=
t me on how to solve this problem?
> =20
> Best Regards,
> =20
> Jerrid Plymale
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8743557F-C881-419E-BA31-F9A640F2EE85
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I think we need more context.&nbsp;<div><br=
></div><div>Is this from a program you write yourself?</div><div><br></div><=
div>Someone else=E2=80=99s code?</div><div><br></div><div>A Gnuradio flow gr=
aph? Your own? Someone else=E2=80=99s?</div><div><br></div><div><br></div><d=
iv><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Mar 12, 2021, at 3:02 PM, Jerrid Plymale &lt;jerrid.p=
lymale@canyon-us.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

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
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the warning message I am trying to solve:<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1A1A1B;background:white">[WARNING] [MULTI_USRP] C=
alling multi_usrp::recv_async_msg() is deprecated and can lead to unexpected=
 behaviour. Prefer calling tx_stream::recv_async_msg().</span><o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to solve this warning message when I am r=
unning my USRP X310, but I have not had any luck finding the file I need to e=
dit. Can anyone direct me on how to solve this problem?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-8743557F-C881-419E-BA31-F9A640F2EE85--

--===============7285249541081507203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7285249541081507203==--
