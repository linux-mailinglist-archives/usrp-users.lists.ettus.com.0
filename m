Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5371AAC30F6
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 20:35:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1730438518B
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 14:35:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748111757; bh=KPEsu2IN6Uq+b39cUjSPrvHwO54J6KFWQOOWcKihbWA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LU7njGm3+8PYxi6rbAguQlhbrOYMW524ucst2nHT0Llpuezl9CRbBCgqcedWh4Tdf
	 ny3qiVpV0nXthYjDzRkT51s9o/zgzpMFAZsCRuFhnvJI33fpOBeZXMVoG4I5azNP03
	 jDE80GTF2FDNceU9YnQ4ZL/5IzFloCMkCjYNwZ2IwRNUwTQ7kkwcIoRA7j8UbBoWOK
	 zAzaYyoEK6qJY1PerzDNviZpuG53PhL+YV+3IPd2WiqKmpTBbIMcFgTspDOCqp9nW2
	 nVUOHeLhRjbGWFSELjN+y+gTYT/KJOps1dBB5biR8BeWuCuQQ0n7s87G6NmvYMAUPW
	 yNFSYVI9hMyWw==
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BC303849B1
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 14:35:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EQ94JRng";
	dkim-atps=neutral
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d96d16b369so8755105ab.0
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 11:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748111723; x=1748716523; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KHbUn+MIkmqJ5xeo9CwlmIlkvkarG7WUF2I39riAFKw=;
        b=EQ94JRng1vFgpKalPTxAks7B3N24nq3vB9G2+9CIEzEBnBzawA45PUTLqgPHbwx9In
         7xrNkJNsTnYveNWmxhkwtgAgEjkEZSGG0EmneiogvLI2Fj21FWT3ITNfgyspVZH+j+4n
         MhOeSTdbW04yZu1p5MzV9KhPSka2X/v29wVUSg7GIJNW9K6puVvxhA3D5euP/U7HaVwP
         uhZgl+XnfAkaRdPidWFBb7kLhgOIt8lfMYSTIuGdqXR4sz1pxi9VbughrdKUAN2cPQzn
         32/WQcymkD7LK/rD0lLvL4zH1Vq7i3AlaMrF1Luh83lI5syOgvK3f5VgYTCjgOZOsycA
         c4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748111723; x=1748716523;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KHbUn+MIkmqJ5xeo9CwlmIlkvkarG7WUF2I39riAFKw=;
        b=k3YGu7iSjAXdxJn39eMZKyxx10rO+ZLqUg52QN2g0BhY2gpn07cHAujxhLgL3ZGMw7
         2Ep1a3ZzCqk6NWQf4yI1cJLmVjAp76ITyC6/ZcLvgfa3pqLG8yHOQsCuxTjBoyayRcZi
         S1DXfzgN7vcDb3fjSahcLF+OTEmf6kf++hLdK/VbyhItctL95Jcv7jOfPYYwhJHJZDYF
         Uwsl+guImyZ0/B9v76Bw5TyHKwWRuszNpoqrFgj5XMDCYY4pLY4t/HQcESI60FDwnryJ
         kPMwZu/PRopGxuv0u/1KGP706b00Z3deXGoOmDa6dnpJGpsBjs0m8yxcoOe8uAlM8NZG
         xbMw==
X-Gm-Message-State: AOJu0YxHBAWdHWAYCZxivjMOqsTyvV7FXGgbaFrc8MWj6ImV+rCFTbUT
	LkGBSTL3a/Ft2DUwv8cJ54p5ogH3pHFlSKHt6ZkRPHPKM77uWVJmBmQO2+mZcPWCPDRz+HWjQ3V
	Q1/0k1yt6qXf4zFZPeASG948u8CcTwE9ToQ==
X-Gm-Gg: ASbGncsoMASi9IqTc9tIedRmOWpnpA7TvFd6RZBhW1qeeboJBz3f0RcI2+QBVl4TDUk
	AEpzOCZ1Ww4kOxhVmR7Uytsmo/ilCFkXd+VPy2GAKW4cfvnmY7fgyPMne1pa0etSCgefDPUORQe
	uVQzjY7tlE3OQyY760QqDvlz/N5sbS
X-Google-Smtp-Source: AGHT+IFc8qlHsJ8pNcjauyFeV1UsVt53yT4k4P3Q2ITPZDj34Nj+cwGVXiWH4oa7aFx/0aKJx9mjwJD49+fJAWLDrkY=
X-Received: by 2002:a05:6e02:12ca:b0:3dc:7a9a:44d5 with SMTP id
 e9e14a558f8ab-3dc9b751754mr30672995ab.22.1748111722800; Sat, 24 May 2025
 11:35:22 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 21:35:11 +0300
X-Gm-Features: AX0GCFuI6Q6nmmE_TpWumNcKSD-gXZLwGv6G249ig8I11cJsSEaEq8ahjkfb3AI
Message-ID: <CAAxXO2GepjAKY2rp33tEm3SuM1NNTtodD0AEb62M5nSyXnOKTA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3EBFXKBF6ELZZC4RCF26BNLDY4AXXPFG
X-Message-ID-Hash: 3EBFXKBF6ELZZC4RCF26BNLDY4AXXPFG
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sensor issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3EBFXKBF6ELZZC4RCF26BNLDY4AXXPFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5489152712642643161=="

--===============5489152712642643161==
Content-Type: multipart/alternative; boundary="00000000000043eaa40635e5fa54"

--00000000000043eaa40635e5fa54
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to use the suggestion for manual tuning:
https://files.ettus.com/manual/page_general.html#general_tuning_dsp_sign
I am using the following sensor code:

static uhd_sensor_value_handle lo_locked = NULL;
uhd_sensor_value_make(&lo_locked);
if ((err = uhd_usrp_get_rx_sensor(dev[channel], "lo_locked", channel,
&lo_locked)))
     warn(log, "Failed to get lo_locked[0] sensor\n", 0, FL, LN, FN);
if ((err = uhd_usrp_set_rx_freq(dev[channel], &tune_req, channel,
&tune_res)))
{
      error(log, "Unable to set Tuner[%d] to %ld Hz, LO[%d]: %ld H (%d).
%s.\n", 0, FL, LN,
             FN, channel, freq, channel, lo_off, err, uhdError(err));
             return(FAIL);
}
while (!ready)
{
      uhd_sensor_value_to_bool(lo_locked, &ready);
       printf("NIKOS!!! ready: %d\n", ready);
       sleep(0);
}

ready is always 0. Never changes value.Goes to an infinite loop. Am I doing
anything wrong?

TIA
Nikos

--00000000000043eaa40635e5fa54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">Hello,</div><div class=3D"gmail_default" style=3D"font-size:s=
mall"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I am=
 trying to use the suggestion for manual tuning:</div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><a href=3D"https://files.ettus.com/manual=
/page_general.html#general_tuning_dsp_sign" target=3D"_blank">https://files=
.ettus.com/manual/page_general.html#general_tuning_dsp_sign</a></div><div c=
lass=3D"gmail_default" style=3D"font-size:small">I am using the following s=
ensor code:</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">static uhd_se=
nsor_value_handle lo_locked =3D NULL;</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">uhd_sensor_value_make(&amp;lo_locked);<br>if ((err =
=3D uhd_usrp_get_rx_sensor(dev[channel], &quot;lo_locked&quot;, channel, &a=
mp;lo_locked)))<br>=C2=A0 =C2=A0 =C2=A0warn(log, &quot;Failed to get lo_loc=
ked[0] sensor\n&quot;, 0, FL, LN, FN);</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">if ((err =3D uhd_usrp_set_rx_freq(dev[channel], &am=
p;tune_req, channel, &amp;tune_res)))<br>{<br>=C2=A0 =C2=A0 =C2=A0 error(lo=
g, &quot;Unable to set Tuner[%d] to %ld Hz, LO[%d]: %ld H (%d). %s.\n&quot;=
, 0, FL, LN,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0FN, channel=
, freq, channel, lo_off, err, uhdError(err));<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0return(FAIL);<br>}<br>while (!ready)<br>{<br>=C2=A0=
 =C2=A0 =C2=A0 uhd_sensor_value_to_bool(lo_locked, &amp;ready);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0printf(&quot;NIKOS!!! ready: %d\n&quot;, ready);<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0sleep(0);<br>}</div><div class=3D"gmail_default" st=
yle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fon=
t-size:small">ready is always 0. Never changes value.Goes to an infinite lo=
op. Am I doing anything wrong?</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos=
</div></div>
</div>

--00000000000043eaa40635e5fa54--

--===============5489152712642643161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5489152712642643161==--
