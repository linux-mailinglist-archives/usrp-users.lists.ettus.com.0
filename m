Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF712FF537
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 20:57:13 +0100 (CET)
Received: from [::1] (port=50928 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2g4u-0008Bs-04; Thu, 21 Jan 2021 14:57:12 -0500
Received: from mail-lf1-f46.google.com ([209.85.167.46]:33286)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hazelnutvt04@gmail.com>)
 id 1l2g4q-00082C-D1
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 14:57:08 -0500
Received: by mail-lf1-f46.google.com with SMTP id v67so4293901lfa.0
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 11:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ML9CEVrkql7xQlsrpVtaT50iQfxcQpYq7fnhPyMFS+Y=;
 b=M6yT0T9ALwtcfu5pMn48i2bwRhb3Qzpss41xQRAfUhvre1/o6Vqp22uTRhK7dhpAUs
 tqLf0LUHSa4Sk5pYSAOP0ROYewRsmgE7UnikXJLBNja7n/mJ4Po4z5SxG+ZeVYCl1CoA
 GcqNsk5zsSHFmn/ZAdlARA/T0ZFIuOWNTYkrZTg+oh/lg/YGZyoESCtXkKe/Ceq43y81
 xbkcOCVjwvJTGff5wq45IWkHJzgjLFHV6ZRxFCXL4E6BC1U9my21Nv8bG9Ki3uDKeJw7
 +IxU/Pwopfzv2NVTnL1uORDf1MG2uP+tQNZrRjZG3UMHi6erB79aYIgbNsaKAIEnF7t0
 mDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ML9CEVrkql7xQlsrpVtaT50iQfxcQpYq7fnhPyMFS+Y=;
 b=kugZdMXpw6Jtu7cggHtK+zP1MPxEbJc+OzeNMlNeroDFXhHmqh+DLkoKwUmkSZ5VTf
 JMdnIuRkNiOhLs9cOOT+iGQuCJ7SCYX5kqFJ2Z/0wxnjQq7bwbj8mDjPNvupdgK+25zQ
 sxcEQJ9KOtg4e8dUJojfgGmo4qDbLGZbQY9JuDADLUdA2uKSfVD4l/bNtnH9YP4xj4y/
 xEi/pnhlDChcF3+2xKWKxsrpw0Of9udYWzNthSK7/FYfAUsPtUG4Jj3XSF8okdIrwLQ2
 Fco1Pyo4wEr0m7fywgr0e2+B43NImjt56pSon4XjpxYmtrRQCHvJ7S8bYLaSXTR4LOo6
 j4Zg==
X-Gm-Message-State: AOAM5300fuNuWxcFme9AxDc4/syEnbLZG9l4/pQskDJWbHiw7ZBjsvyJ
 mA+LNS9dqcLfr+A2xdICwUbat1k0MkxAZTB1Kv1XZeap2zEizA==
X-Google-Smtp-Source: ABdhPJylPwLk+mDB3LGboPFiEp4mzA512k7iUm6/j2eZYi2eXbYt1ldSV4yO0X0B6LamSUbkurf2XuC81/MDaq5Rt1U=
X-Received: by 2002:a19:6447:: with SMTP id b7mr404827lfj.206.1611258986465;
 Thu, 21 Jan 2021 11:56:26 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 21 Jan 2021 14:56:14 -0500
Message-ID: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] N310 Tuning Two Channels with Two Threads
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
From: Glenn Hazelwood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Glenn Hazelwood <hazelnutvt04@gmail.com>
Content-Type: multipart/mixed; boundary="===============7198284891014932403=="
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

--===============7198284891014932403==
Content-Type: multipart/alternative; boundary="000000000000878ddd05b96e77ed"

--000000000000878ddd05b96e77ed
Content-Type: text/plain; charset="UTF-8"

I have an N310 and I wish to scan from 10 MHz to 5910 MHz with two
channels. The frontend bandwidth is 100 MHz. So I do 60 tunings overall. I
am directly using the UHD 3.15.0.0 C++ API

The retune time is typically ~120 ms. My sample rate is 125 Msps.
Therefore, the time to receive samples is relatively small. For example,
receiving time for 32768 samples is ~1.3 ms. WIth one thread and one
channel, my overall tune and receive time for the 60 tunings is ~7200 ms.

I wanted to try to reduce the overall runtime by using two threads and two
channels. One thread would do half the tunings and the other thread would
do the other half at the same time.

I see that I can make separate rx_streamers in separate threads, each with
its own channel to receive samples. I think rx_streamers[chan].recv()
should work for two threads. I'm not so confident about
'usrp->set_rx_frequency()' for two threads.

Is it possible to have two separate threads each tune to different
frequencies at the same time with the N310?

Also: Is there a way to search the Archives to see if someone has already
asked this question. Google doesn't always seem to help.

-
Diftor heh smusma
-Famous Vulcan Phrase ;)

--000000000000878ddd05b96e77ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have an N310 and I wish to scan from 10=C2=A0MHz to 5910=
 MHz with two channels. The frontend bandwidth is 100 MHz. So I do 60 tunin=
gs overall. I am directly using the UHD 3.15.0.0 C++ API<div><br clear=3D"a=
ll"><div>The retune time is typically ~120 ms. My sample rate is 125 Msps. =
Therefore, the time to receive samples is relatively small. For example, re=
ceiving time for 32768 samples is ~1.3 ms. WIth one thread and one channel,=
 my overall tune and receive time for the 60 tunings is ~7200 ms.=C2=A0</di=
v><div><br></div><div>I wanted to try to reduce the overall runtime by usin=
g two threads and two channels. One thread would do half the tunings and th=
e other thread would do the other half at the same time.=C2=A0</div><div><b=
r></div><div>I see that I can make separate=C2=A0rx_streamers in separate t=
hreads, each with its own channel to receive samples. I think rx_streamers[=
chan].recv() should work for two threads. I&#39;m not so confident about &#=
39;usrp-&gt;set_rx_frequency()&#39; for two threads.</div><div><br></div><d=
iv>Is it possible to have two separate threads each tune to different frequ=
encies at the same time with the N310?</div><div><br></div><div>Also: Is th=
ere a way to search the Archives to see if someone has already asked this q=
uestion. Google doesn&#39;t always seem to help.<br></div><div><br></div><d=
iv>-=C2=A0</div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"=
line-height:19.046875px;background-color:rgb(255,255,255)"><font color=3D"#=
000000" face=3D"trebuchet ms, sans-serif">Diftor heh smusma<br></font></spa=
n></div><div><span style=3D"line-height:19.046875px;background-color:rgb(25=
5,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif">-Famo=
us Vulcan Phrase ;)<br></font></span></div></div></div></div></div></div>

--000000000000878ddd05b96e77ed--


--===============7198284891014932403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7198284891014932403==--

