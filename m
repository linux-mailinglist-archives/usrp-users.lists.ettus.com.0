Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C669FB12
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 09:01:33 +0200 (CEST)
Received: from [::1] (port=50010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2rxT-0002p9-JO; Wed, 28 Aug 2019 03:01:31 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:42669)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <r.vink@opnt.nl>) id 1i2rxQ-0002g0-Ei
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 03:01:28 -0400
Received: by mail-ed1-f41.google.com with SMTP id m44so1734642edd.9
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 00:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=opnt-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=JMo7xZbTOCw5c+dajlO0pvBpq5j8/S4WczX5XYd6b84=;
 b=B3M2sGfNtp/TxFhXzkVL7DHzy/KK7fJFC/o0UHVYEuAiLLEHST9wbuX0/vwbXH/sWT
 CLi9e1/Pcp3YBtNLkS4dYaXlXH9tNo5jz/GLXdWeWXczeDc1e81IpDsLOslpZlDBnuJX
 gsIy2iQ/cad+kX4QWo0Dn9x5PrDZJ5RktebaeDfKQlvXoMtBcwHocbLFkLEwUP911Thw
 1KcdeLmnuoU82Oa4Rpnppyy+ab3cFnfEFrIdDVQCe548E3/dbAc+vWHFluB+B86+E6gN
 x2O9ocUF8UAXc8H/N9DzZE1GfgyoGX7De6T048KQ7+pHSRrA2Pnp87Lyq02j+s2zyUBa
 +LyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JMo7xZbTOCw5c+dajlO0pvBpq5j8/S4WczX5XYd6b84=;
 b=pYMZf6pA+xBSkAeHgW3Hjj7+yzZ8Y346OEg8ZXG09snHe5NXOt1azs9kQUjXHTdYaI
 bHFFSQESXPigNMNc00ZCk2GhVNMPeE/K9OE2vpzc72SEDH2Ng9h+IxB/Qmsj9UP4n96D
 MrITbPl6SGsToLXYqvTMpgOF862LU8FJ0JnRQJR1zuqImgB/mVCT9mtkj4KqfgMKCkHC
 WMZqe5dnpU8SSbbspblBDFMHt0R0efA1isaPwhOrnrILnvbIsPw/p5BfiAVYSofihrk+
 7nj5MDSJA4Dau+hf/jvUnK/+YDVNL/eGn3C4Ouzx4ZZGYA0s2Gm50J1ResvYUl/k+kaj
 3M8A==
X-Gm-Message-State: APjAAAXXkJ6/aPA5HninuIxQmhJSveE+gvHqn01QIztvMrbss5lhdJ7R
 ETMX6/fr4cSTxPbDCdedfeELpnkVsQP66CTOHYNHWZdj
X-Google-Smtp-Source: APXvYqxlyZMtEYo4rpUrADXblylFs82uGBA1ZH6wn9qaVLLit/qYwsW+1I3/Zf+f/rEc719EXzkRbHTWmFPXlaR+kmI=
X-Received: by 2002:aa7:d755:: with SMTP id a21mr2372382eds.295.1566975646922; 
 Wed, 28 Aug 2019 00:00:46 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Aug 2019 09:00:36 +0200
Message-ID: <CAJ4BvYETtM==U1NrFYJMeTdykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Overrun on USB vs Ethernet
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
From: Remco Vink via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Remco Vink <r.vink@opnt.nl>
Content-Type: multipart/mixed; boundary="===============5583939696578742514=="
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

--===============5583939696578742514==
Content-Type: multipart/alternative; boundary="000000000000ce8eb8059127f2fe"

--000000000000ce8eb8059127f2fe
Content-Type: text/plain; charset="UTF-8"

All,

I am experiencing some issues with overruns stopping the streamer of our
USB B200 devices. Currently the computers in use are not the fastest in
their kind, but I am wondering where the limitation is coming from. I
haven't found a way to measure the throughput of the USB, so it might
either be the USB controller or processor which is not fast enough to
handle all the data. The benchmark_rate seems to run fine at the rx_rate
the program is running on.

If for instance I would to switch to a network based device and have the
connection over ethernet, would this possibly fix the issue or would the
processor or some other bottleneck still arise. Would like to hear your
thoughts on this overrun and most likely bottleneck problem.

--000000000000ce8eb8059127f2fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>All,<br><br></div>I am experiencing some is=
sues with overruns stopping the streamer of our USB B200 devices. Currently=
 the computers in use are not the fastest in their kind, but I am wondering=
 where the limitation is coming from. I haven&#39;t found a way to measure =
the throughput of the USB, so it might either be the USB controller or proc=
essor which is not fast enough to handle all the data. The benchmark_rate s=
eems to run fine at the rx_rate the program is running on.<br><br></div>If =
for instance I would to switch to a network based device and have the conne=
ction over ethernet, would this possibly fix the issue or would the process=
or or some other bottleneck still arise. Would like to hear your thoughts o=
n this overrun and most likely bottleneck problem.<br></div><br clear=3D"al=
l"></div>

--000000000000ce8eb8059127f2fe--


--===============5583939696578742514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5583939696578742514==--

