Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BC8A3F28
	for <lists+usrp-users@lfdr.de>; Fri, 30 Aug 2019 22:54:17 +0200 (CEST)
Received: from [::1] (port=45860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3nuR-0003dZ-L4; Fri, 30 Aug 2019 16:54:15 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:37459)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1i3nuN-0003Ui-BU
 for usrp-users@lists.ettus.com; Fri, 30 Aug 2019 16:54:11 -0400
Received: by mail-ot1-f41.google.com with SMTP id 97so5363716otr.4
 for <usrp-users@lists.ettus.com>; Fri, 30 Aug 2019 13:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3dSW6E8Tj1K0RXrkKr4Uy/7ZncglHFLfkGq3eLyltLI=;
 b=oMB5RICmkA7zyNPvxRGwjqGqRZdtbJmEyY5i6/tdloYX7Ipj2BVVUcxWDd2/B+GEhZ
 IvyhdaabwMRPav+keDKZQ7neyUYmNEFhoI2TIZr63EBRwmzI9j2uRY70aH/rFo40oX4n
 7B34gZBKaa+i4FwdLoZL1J98t9/DF5Z43/Z19JUOYSNDIAsmp69v++PuIXx4OOfFz/8r
 Z5MjNmBx+9bZjtJH5GQ1mhk3gDDytRFilrc0Pz0/kwN/MTXgUEm7yKvWTYAKfm/CYggF
 2gKGodeiT36KiXacYXUlvtyDvFitz2CZkInyO/AhasYuWUtsFBJXSq4cuKK6+dTW1j3M
 iUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3dSW6E8Tj1K0RXrkKr4Uy/7ZncglHFLfkGq3eLyltLI=;
 b=I1sX97RA+qr68oC3NqKeOSl3iYk9IFLxDrtLKbK+kKxPnBg7Y5KlSssb9W38jmNgff
 rS051Ub4ocR+ltUIt8f1p5FzhPdu/+ACGFd7IBix13J/OWdv/GEfZeM2V+GNrjwHjtaW
 D+wfeVXNixfoy6Tjm7Qp4uATdOqeVXa1aqJsRcibrTof8FJLuK/m0nMX/0HyxTlZNGnF
 MESdtyIcVKejThkq/FrA+W+eEbWUEygJmZx9vVsmIaKeS5pq+SvvdQfNEYEm1DafStxp
 qY3hfyYNZ2PIo2oA1oWiFTHTF1InzeAv9Cq69D7pICtYOWO91VIJcR3HJfKqg26lib9Z
 l8Ng==
X-Gm-Message-State: APjAAAXTwp2IATEPjDuO13Mw6oF8ZwUss5Bv7P7nOOG4H/4GnLVL1IlG
 6hONtR01niOJZK+atUhz2Yobif7JSwMLAe3Ngt0s//i8
X-Google-Smtp-Source: APXvYqx1pE6ub9LYQlkjWRxmWG0gLyjtCDX42UrcOtKTFEBCChZdvbbUfNTEC+Ck5Gu8qm5HVyvl3Ks2Uemkj9WS4Ko=
X-Received: by 2002:a9d:7343:: with SMTP id l3mr14118313otk.268.1567198410460; 
 Fri, 30 Aug 2019 13:53:30 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 30 Aug 2019 22:53:20 +0200
Message-ID: <CAOExtcQrCP1+CWxNubw4L5yBsPQWuQLWcmi9_iRiqVtcxod_eA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Instructions to start working with USRP-2974
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Content-Type: multipart/mixed; boundary="===============1002741872047934959=="
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

--===============1002741872047934959==
Content-Type: multipart/alternative; boundary="0000000000008c539e05915bd0ca"

--0000000000008c539e05915bd0ca
Content-Type: text/plain; charset="UTF-8"

Hi,

I have received a brand new USRP-2974 and looking for getting started
guides.
I went thru https://kb.ettus.com/USRP-2974_Getting_Started_Guide but cudn't
get much info apart from making connections with uhd via PCIe. There is no
note on making connection with 1GB ethernet. I was able to ping at
192.168.10.2 though.

I never worked with this series so I lag its functionality. I understand
that it is designed to use as standalone device. But can it be used like
X-310 where I can stream the samples to my laptop for processing inside
laptop instead of processing inside the USRP.

At this link http://www.ettus.com/all-products/usrp-2974/, in the
compatible software section it says Labview only. Can I use it with GNU
Radio and UHD or have to work with Labview only ?

The X-310 which I have to be given to other person soon and I was wondering
if I can continue my work of X-310 on 2974 without much effort on porting.

Regards
Sumit

--0000000000008c539e05915bd0ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have received a brand new USRP-29=
74 and looking for getting started guides.</div><div>I went thru=C2=A0<a hr=
ef=3D"https://kb.ettus.com/USRP-2974_Getting_Started_Guide">https://kb.ettu=
s.com/USRP-2974_Getting_Started_Guide</a>=C2=A0but cudn&#39;t get much info=
 apart from making connections with uhd via PCIe. There is no note on makin=
g connection with 1GB ethernet. I was able to ping at 192.168.10.2 though.=
=C2=A0 =C2=A0</div><div><br></div><div>I never worked with this series so I=
 lag its functionality. I understand that it is designed to use as standalo=
ne device. But can it be used like X-310 where I can stream the samples to =
my laptop for processing inside laptop instead of processing inside the USR=
P.=C2=A0</div><div><br></div><div>At this link=C2=A0<a href=3D"http://www.e=
ttus.com/all-products/usrp-2974/">http://www.ettus.com/all-products/usrp-29=
74/</a>, in the compatible software section it says Labview only. Can I use=
 it with GNU Radio and UHD or have to work with Labview only ?=C2=A0</div><=
div><br></div><div>The X-310 which I have to be given to other person soon =
and I was wondering if I can continue my work of X-310 on 2974 without much=
 effort on porting.=C2=A0</div><div>=C2=A0</div><div>Regards</div><div>Sumi=
t=C2=A0</div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"c=
olor:rgb(136,136,136);font-size:12.8px"><br></div><br></div></div></div></d=
iv></div></div>

--0000000000008c539e05915bd0ca--


--===============1002741872047934959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1002741872047934959==--

