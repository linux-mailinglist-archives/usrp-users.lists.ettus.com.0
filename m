Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5903C20A56B
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2020 21:05:01 +0200 (CEST)
Received: from [::1] (port=53840 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joXBB-0005Ge-Ff; Thu, 25 Jun 2020 15:04:57 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:38635)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1joXB7-0005BJ-RH
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 15:04:53 -0400
Received: by mail-qt1-f171.google.com with SMTP id z2so5579043qts.5
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 12:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9ecg6U25SNpD+an834Hs4gzLknuwa4jPcav6VZL3Qrg=;
 b=nqiLADlPR74ltQC4uFkox/NK+RPUsW0byn4r1wXcQoJNETJiM0kCHXUE1f14InY+S+
 TngElxYNXQCNMdF1frJdluaHxYX97lwgzrKuaPLY8q8JAL3tClgeyvD9+bIWBmkqyDzZ
 kvSK6tiNiL/bg9rYuf6R9WMTorQw56wycAK3s7rVZ15L7xm6btriaYZ9VlAIk/hqe++w
 bvhstwnZqixwCMmT06v3xgX5VqoInPVkZJkWZBFe8lyXR9p0Z+Fe/0Uv7O5JIbdklQo0
 ONf90VEBSfYEEscPoDma+j9K4bO4Yf9uQVgzDpc5k02H7ZM50nbrBBHqvN7M+8RYiAYk
 oTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9ecg6U25SNpD+an834Hs4gzLknuwa4jPcav6VZL3Qrg=;
 b=LM9q0Raj8W+uku0RQ188VFnmOcXF0+/WtVOubkFp2IHDWWn0EcLAxqT0SMoljlt9zq
 ZKVrvHmGBHiaR5GZ3CzP/5zWJPGr9QuzgZCJC1dReiVghAU+fertUmhDC+NWiDatP8PO
 hovK9ks7qS+Fm8+gcyVkO1DH5M0uVy1FFFgUCDIQghjp9AaOesaTP4M4InBLZFoDzHjB
 mFu2So0mBLe8YUZctM+DpFmbNXJ7q4q/0uyRgHK5HFi8ICgI7JlUHYYhTxK3C6tLD9zg
 4KJUv0iMl/k4IbDZOayZlm3QrltuD2j1gYAXR3ENNYULBW2UpVYAN1FZ/XbW5tCHSs9X
 nIrw==
X-Gm-Message-State: AOAM533C7mGWwua2M5xWTemNLOgLSmMKe+spp8mcf94MHlT9YuHsOSKv
 2jmOQSVd2SSsr26oSH64GVC7u5kP5aFhUJ1shVFUaypYpic=
X-Google-Smtp-Source: ABdhPJwDizl11MJqxiOVaBiI9KEZniqAQb0H6JW/di3NA1m2ceecLMcTQAvexTCXyuDDnyQ3m0Bq/xKfOb/kPWBTRh8=
X-Received: by 2002:ac8:189c:: with SMTP id s28mr2298620qtj.97.1593111852891; 
 Thu, 25 Jun 2020 12:04:12 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 25 Jun 2020 21:04:02 +0200
Message-ID: <CA+w2Zyujk0sToEj0rSYqqL0tS7PJmTKXOZSmPS-jz5Njkk3n_w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] b205 RX -> TX loopback
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============6469575247575767581=="
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

--===============6469575247575767581==
Content-Type: multipart/alternative; boundary="00000000000014427605a8ed42d9"

--00000000000014427605a8ed42d9
Content-Type: text/plain; charset="UTF-8"

Hello.
We are trying to make a simple RX on TX loopback by changing the FPGA image.
We get it by adding a wire between the DDC output and DUC input, but we are
still limited by the sample rate we specify via UHD.
 We have specified the analog bandwidth at 56 MHz, and the master
clock rate at 60 MHz, but no change.
Same behaviour if we add a wire before the DDC and DUC. We suspect a link
between UHD sample rate and AD9364 sample rate.
Is there a way to have the full rate(56 MHz) available on the loopback
despite, for example, 1MHz sample rate specified via UHD ?

We could also put the sample rate of 56 MHz but the underflow and overflow
cut the RF signal, perhaps there is a way to avoid this phenomenon also.

Thanks a lot.

David

--00000000000014427605a8ed42d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<div>We are trying to make a simple RX on TX loopbac=
k by changing the FPGA image.</div><div>We get it by adding a wire between =
the DDC output and DUC input, but we are still limited by the sample rate w=
e specify via UHD.</div><div>=C2=A0We have specified the analog=C2=A0bandwi=
dth at 56 MHz, and the master clock=C2=A0rate at 60 MHz, but no change.=C2=
=A0<br></div><div>Same behaviour if we add a wire before the DDC and DUC. W=
e suspect a=C2=A0link between UHD sample rate and AD9364 sample rate.</div>=
<div>Is there=C2=A0a way to have the full rate(56 MHz) available on the loo=
pback despite, for example, 1MHz sample rate specified via UHD ?</div><div>=
<br></div><div>We could also put the sample rate of 56 MHz but the underflo=
w and overflow cut the RF signal, perhaps there is a way to avoid this phen=
omenon also.</div><div><br></div><div>Thanks a lot.</div><div><br></div><di=
v>David</div><div></div></div>

--00000000000014427605a8ed42d9--


--===============6469575247575767581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6469575247575767581==--

