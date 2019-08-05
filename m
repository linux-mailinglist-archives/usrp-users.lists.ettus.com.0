Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2B381955
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 14:31:26 +0200 (CEST)
Received: from [::1] (port=51306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huc8y-00067p-GR; Mon, 05 Aug 2019 08:31:16 -0400
Received: from mail-wm1-f49.google.com ([209.85.128.49]:54699)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <h.talaiee@gmail.com>) id 1huc8u-00060q-3A
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 08:31:12 -0400
Received: by mail-wm1-f49.google.com with SMTP id p74so74531779wme.4
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 05:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=dITngVBgscmobuchMaTUihw7nhUTbZc+s3re4z0Oat4=;
 b=XGkMceLtbtqtZuph+o39XXKHQPN2E117PjyAhswbjvjYk0Oc/eUlpk6oAdJ1T81Xtw
 GDApDsXFyyQSnZOdhMaBXV1Ujem1MftvlHYWxdkzPzFS4vZCr3BpXMwU+RdxcckXus+y
 GYV0STke69vYi23c7bVh9t2ysHjRtkdU0nqfK8IYs/xvD8jCrRD3ywhTyE1MKEsEbcgK
 UTprYlgp4H0ZitpDf4WRhf0K+f72sptjiI/NXnrdN9EyzppNd2stNO3eKeuDLsjk7Dk4
 bEEeEnpgWwQX0DWwxwvV9D6GXWLa5SG6DzH8PH27JePOPi5YHr5q8gaF9vAQRHPOxDZG
 XxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=dITngVBgscmobuchMaTUihw7nhUTbZc+s3re4z0Oat4=;
 b=WjDLLr+o3mfHpvWmEJgocG0N0jpFpQ+68EMU51YgvG65RG503qR5x7MCuyeeJRYf/8
 Y0T4LB6NcG/cugm2Xx8erLhba9f/ux/qy6fk2I1buy/rpk2mGGXhw9q8c+jvh7NJHZ/5
 SkYiGmQ8z5HPozHgukEIIyCevFXYlHEmygUqfbW8jEIAA71gt/PI8JqVadKwKJe6HB5L
 /vS68pspxBAXVf4N5Kx1vyloPaxEmPw0E3wSH5ltcYNYhTo6JtQmGcnVVgvgXS8OuDXf
 S6b6Gutd1xOaMJfPi0vpwP6LpaNQ14x/3jlm7dS12m3RRuYVag2786i+/CHyWRQPPSEu
 QcIA==
X-Gm-Message-State: APjAAAUUXhmW8ZucrCw0VIjrRO+E+VWg5M1BAXXTO03uYWzk9MSJ1p5q
 /ajtVYuunkHmxcpwf484G8oMK2J6qPvDiwTMKssglv/2
X-Google-Smtp-Source: APXvYqzCXd+0ubhIaLNOU3d1XQiYDADQFoiMNldL+zLqc1GF/XktNhGTeu1c8oKKj3P3Vpm17U9cSOdAewR0eMzZGt4=
X-Received: by 2002:a1c:e0c4:: with SMTP id
 x187mr17912930wmg.177.1565008230353; 
 Mon, 05 Aug 2019 05:30:30 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 5 Aug 2019 17:00:13 +0430
Message-ID: <CAAiBEBTT25JUU6Uybf6WLYakOLYGbKz4T_NUG5wTm_ydKpox-A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP B2xx Tx Peak power mode
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: hossein talaiee via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hossein talaiee <h.talaiee@gmail.com>
Content-Type: multipart/mixed; boundary="===============2472098097443459158=="
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

--===============2472098097443459158==
Content-Type: multipart/alternative; boundary="000000000000a41294058f5ddf70"

--000000000000a41294058f5ddf70
Content-Type: text/plain; charset="UTF-8"

Hi

I want to manually control output power of my USRP with signal level not
usrp gain,for example I want to generate a sinusoidal signal with equation:

   s(t) = A * sin(w*t);

and want to change A to control tx power, but when I change it, somehow
USRP compensate my change and tries to hold tx power! like it is trying to
hold average power.

Using NI-5672 signal generator, I am able to control power with setting the
power mode to "Peak Power mode" instead of "Average Power mode". I think
USRP has something like this to control power. How can I disable it?

--000000000000a41294058f5ddf70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi</div><div class=3D"gmail_default" style=3D"font-family:tahoma=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ta=
homa,sans-serif">I want to manually control output power of my USRP with si=
gnal level not usrp gain,for example I want to generate a sinusoidal signal=
 with equation:</div><div class=3D"gmail_default" style=3D"font-family:taho=
ma,sans-serif">=C2=A0<br></div><div class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif">=C2=A0=C2=A0 s(t) =3D A * sin(w*t);</div><div clas=
s=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">and want to=
 change A to control tx power, but when I change it, somehow USRP compensat=
e my change and tries to hold tx power! like it is trying to hold average p=
ower.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif">Using NI-5672 signal generator, I am able to control power with se=
tting the power mode to &quot;Peak Power mode&quot; instead of &quot;Averag=
e Power mode&quot;. I think USRP has something like this to control power. =
How can I disable it?<br></div></div>

--000000000000a41294058f5ddf70--


--===============2472098097443459158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2472098097443459158==--

