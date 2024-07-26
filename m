Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7CF93D302
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 14:31:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87051385B07
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 08:31:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721997117; bh=KiftYU76Vv/tv2S3hiVJpxVu1O4qCukcmbsZ+xaW4dg=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nGUJvfVRJcsayTAAKd4y2HmkzVgwt+e+lbJEwPUhgfwp1iuVbyyeAT6nLBiXcdCwJ
	 FLvkrAGpUdekfDbNOWOXQrUMLziOujW06hV5X22fOeJCVi6yGKx86UdOEJhCphhYcX
	 gepU0r9ILkd7v+dZ/FJJGGipPwCjzdAzaaHAihCo+5h2AM4cw5O27Qt+hMPLalMabr
	 9+8fUOS1TrsI0/F11Ybk++nywoIy3PGtLicU9IyEzr+4xHr2CfpRa08hkjAV7hA4Kc
	 pfUn9TZ50vh4WrXdkjKBaWyNhusT25CieAtZ2Eg/ftZ1+FFhW/YYBF2finyNEsYVmr
	 silpsaSPin1rg==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A718D38593B
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 08:31:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WfBlQ934";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7a1e0ff6871so26847985a.2
        for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 05:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721997096; x=1722601896; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Te4pziwuJhocpPzty01qR9RA3fx8eZzdO5C5PexgL9c=;
        b=WfBlQ934HemGxBmEBrWOj8fCNngI6c/7XZcAN7o6NBSLtfXW3RH0lU/Jdceg01uvGE
         BVQA7qtz12XU7+eCetMKOJPRw+IRjTVU3YtscAP727fGoqnocNXlmaCkJjmktfFVNZ08
         juVE9DW+62+aNFHowtKhXViUFUf4I6RXrmp9XhEo2iYOgDP23sVxwII3Gdy3sSgmGA+z
         RQgS6gSc/evadmtvixqHMVWbHLxA7Dhp4fGTwD1KpCeETWFJTJ0Jvn5bujKhFFJk1BgW
         V7OeBJlGAH9M4ge++Xgxd+jz5g6lrmd4qfcTebh65jkdZid4Lca2lls5YohnicWboO9V
         UTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721997096; x=1722601896;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Te4pziwuJhocpPzty01qR9RA3fx8eZzdO5C5PexgL9c=;
        b=DdwQ3eedsVIcoby2LRrYzAtPgXo5lVByTh/HpRG2/dS7Aj/imeAzm9KKuBAxzvtzgO
         Y3Kdd99TdVBrDBos0sPWTPmTebBfQ7Bn7M8iDngWjMJGMccXmM2MZPQRwpeQZ8ZR+Si0
         fec5CjfSeVdLgj6HwpCinqkmbngnOU7E80QB75IPINi0sRel3eUuoL9AMl5Hsbi7zFe2
         zVAMXG1uc4tI2ant29JpmUxyJU0TFEuVdXmsnoK/Yo4oxT+n7IsB0qAo+1HlG2j4mTTu
         Z9M5SoAB1E2HAFEXg4AoyldMuOLqUQpnCzod/Shocc38PKWGLNvS33+DrgowA8lpFFZD
         IPpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmbiMwR0L8r9Azr7S/f0aY0E3+Ti1n+lIdfnOup1JSb6t+XvlUNt+qBiRZim36prUmx8KengUsIXKbuTyJuXeMGo4sH9wB8srMZw==
X-Gm-Message-State: AOJu0YzD+voeYU2cOxhC5qu9pJMmX+WYe8e2ZufPMBB5x2mtD5+pwh+N
	3NVK4Xn7/Hic/6DA/1IWBE0DHnNJvQah4xX2YI/7d5gn4xbQ89gjosVF2g==
X-Google-Smtp-Source: AGHT+IG8+TxABX+AVz/UuzkSSmvuR7CAtiPl7gKpJRCaIfVujAKg9WvVBeiQT7zwCxJBrHKnlTdBgg==
X-Received: by 2002:a05:620a:144d:b0:79e:f9cf:8cdf with SMTP id af79cd13be357-7a1d44cc9bemr568447485a.28.1721997095646;
        Fri, 26 Jul 2024 05:31:35 -0700 (PDT)
Received: from smtpclient.apple ([64.231.212.86])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a1d73b5b86sm172683285a.47.2024.07.26.05.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jul 2024 05:31:35 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Jul 2024 08:31:14 -0400
Message-Id: <D7FD0A87-0BCB-498A-814C-6F0E0A3F9064@gmail.com>
References: <CAFOi1A5ZbQfZ7jowHEmqh-gdh+cN22ho5ceAsUttzmcz5CNmhg@mail.gmail.com>
In-Reply-To: <CAFOi1A5ZbQfZ7jowHEmqh-gdh+cN22ho5ceAsUttzmcz5CNmhg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
X-Mailer: iPhone Mail (21F90)
Message-ID-Hash: CXDU27TVFMNU3WGEV2GFRCVLMP44ARRJ
X-Message-ID-Hash: CXDU27TVFMNU3WGEV2GFRCVLMP44ARRJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tim Smith <secsubs@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Making a USRP N230 work
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXDU27TVFMNU3WGEV2GFRCVLMP44ARRJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0182791530861887143=="


--===============0182791530861887143==
Content-Type: multipart/alternative; boundary=Apple-Mail-5C7C4CD3-3689-4EC2-8E68-B5A7323882A2
Content-Transfer-Encoding: 7bit


--Apple-Mail-5C7C4CD3-3689-4EC2-8E68-B5A7323882A2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">To amplify on what Martin said.&nbsp;<div><=
br></div><div>The N230 was never intended for general availability, and was d=
esigned for a specific customer. Several of them have made it into the surpl=
us market, but they are decidedly unsupported devices.&nbsp;</div><div><br><=
/div><div><br id=3D"lineBreakAtBeginningOfSignature"><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 26,=
 2024, at 8:18=E2=80=AFAM, Martin Braun &lt;martin.braun@ettus.com&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi Tim,</div><div><=
br></div><div>the N230 is unsupported and EOL, so you won't get a lot of hel=
p. Just some comments:</div><div><br></div><div>- You need UHD 3.15; don't t=
ry it with UHD 4. You'll probably need to build it yourself.</div><div>- If u=
hd_fft works, that's good news. Device is probably fine.</div><div>- If gqrx=
 doesn't work, maybe you have several versions of UHD, and maybe gqrx had sp=
ecial code to identify specific USRP products, but doesn't know the N230 (it=
's a rare device).<br></div></div><div><br></div><div>--M<br></div><div><br>=
</div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Jul 26, 2024 at 8:54=E2=80=AFAM Tim Smith &lt;<a href=3D"mailto:secsubs@gm=
ail.com">secsubs@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I am trying t=
o make an older N230 board work for me. On MacOS, I got UHD-3.15.0 via MacPo=
rts. "uhd_usrp_probe" discovers the device over the network and I can run "u=
hd_fft" but when I try to talk to the radio with gqrx, it refuses to find th=
e device. Oddly enough, "device scan" on gqrx automatically populates the "d=
evice string" as "addr=3D192.168.20.2" but then won't connect. On Ubuntu 22.=
04 and 24.04, the UHD package is from the 4.xx release where support for N23=
0 had been pulled so nothing works on Ubuntu.</div><div><br></div><div>I tri=
ed restoring the commits from this PR:&nbsp;<a href=3D"https://github.com/Et=
tusResearch/uhd/commit/d94140a4129d6b2153b15860eeb2406672ebb414" target=3D"_=
blank">https://github.com/EttusResearch/uhd/commit/d94140a4129d6b2153b15860e=
eb2406672ebb414</a> - I copied the entire N230 folder from the 3.15.0 releas=
e into the codebase from 4.7.0 and added back all the comments/includes for N=
230 but "make" failed miserably because underlying functions have probably b=
een entirely changed between 3.x and 4.x. I get an error:</div><div>--------=
-----------------</div><div>uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: I=
n constructor =E2=80=98uhd::usrp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl=
(uhd::usrp::n230::n230_core_spi_core::sptr)=E2=80=99:<br>uhd-4.7.0.0/host/li=
b/usrp/n230/n230_cores.cpp:60:13: error: no matching function for call to =E2=
=80=98uhd::usrp::adf4001_ctrl::adf4001_ctrl(uhd::usrp::n230::n230_core_spi_c=
ore::sptr&amp;, const uint32_t&amp;)=E2=80=99<br>&nbsp; &nbsp;60 | &nbsp; &n=
bsp; _spi(spi)<br></div><div>------------------------</div><div><br></div><d=
iv>I tried building 3.15.0 on Ubuntu 22.04 but that failed with a different s=
et of errors.&nbsp;</div><div><br></div><div>What's the best way to use/supp=
ort a N230? &nbsp;</div><div><div><br></div><div dir=3D"ltr" class=3D"gmail_=
signature"><div dir=3D"ltr"><div><div>--<br></div>Thanks,<br><br></div>Tim<b=
r></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-5C7C4CD3-3689-4EC2-8E68-B5A7323882A2--

--===============0182791530861887143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0182791530861887143==--
