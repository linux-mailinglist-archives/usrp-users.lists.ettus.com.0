Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD512D8B41
	for <lists+usrp-users@lfdr.de>; Sun, 13 Dec 2020 05:19:16 +0100 (CET)
Received: from [::1] (port=40838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1koIqm-0004to-6d; Sat, 12 Dec 2020 23:19:12 -0500
Received: from mail-lf1-f44.google.com ([209.85.167.44]:46601)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <b4ss3k@gmail.com>) id 1koIqi-0004oU-8r
 for USRP-users@lists.ettus.com; Sat, 12 Dec 2020 23:19:08 -0500
Received: by mail-lf1-f44.google.com with SMTP id y19so21663430lfa.13
 for <USRP-users@lists.ettus.com>; Sat, 12 Dec 2020 20:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BbvYCWXHypQH0XT+D8XiTT5VYc4Cpg8peAqaqAqnr+E=;
 b=k1guRQgQvm5nXBU+nkihK9P+cP2SNHt/eYilkMJHueZuwkF6h0l3x6QedOsV5TYsPA
 YzwJAWs+xjWJWQGYhxmrHYW4XaB5FcNa4UnEtwcMbvGfLfV9olUbAU1xWZyTPa2AFkE8
 O7W7pfz4yiLfMeBku6g2Q3cL6aHt0V2RFo9yhDRzX7F6h5DE2emsnEa8SWUMinO4UC/j
 J/jcMbeIyVl6Ii9Pe89TodVLFU9pexT/IUStdm0cnnLniuSV+0pCls2VySeCfpQUMPlI
 ZbZ1mRN0rK6Thw+KCB6z0o1N2+PpfHlri0HxWAxM207ysWmKu58FzWb5nbraW6fWJZPH
 P0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BbvYCWXHypQH0XT+D8XiTT5VYc4Cpg8peAqaqAqnr+E=;
 b=ReL7H0q5CxxngVO6zoTL5jZpvxW3fSDlxAuKYL65avhwaaBBVOpCyKUuoUSxs4ZZmj
 UNFS1P1SYWPpTCPYL9xMav6JRGuPljRORt9XbN9r95+bDY+sM+1X9lTeWIuvaGhnaVfQ
 twfsSZgMZK/Kt1yx6lB8Kf+rFdgG/CZ2DJusau5xHAxpMM6cugDPCqBiqCWTB7TBwkq+
 2Pyyau/qL1GaWLTF4dNDnn6BhL3uf+rLg5+iMF6qgGAXbWKC44RdcVzfrwXiZh2ktcOb
 tuxgwnptBaHFFYXoHUWjgGVTZbpErZZ3/iftcKScXNqCFqMCvX3AZFA0+a1w1Qjtg3xr
 D6vw==
X-Gm-Message-State: AOAM530BthagLaOVpLu4J2PvnOSvH3sxDE8ooojeFqkby3fW9LXA5kHD
 6eGzNZp50vugToaYlh+S/SG9hfEwjgDaK9dApfITbwjC
X-Google-Smtp-Source: ABdhPJzCqX2shAuXKuzh/+rv5r9WwIJY4dM49zPlTpvC3IvO0R3onqVLmp8o86nhIs70tNBvRq5/Biw0OTPRnQCJ4wU=
X-Received: by 2002:a05:6512:3212:: with SMTP id
 d18mr4471015lfe.420.1607833106370; 
 Sat, 12 Dec 2020 20:18:26 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 13 Dec 2020 11:18:15 +0700
Message-ID: <CACcka+0y7vAALA+q9=giw0+WR0uTtwityQhS3Cn=+CPYfQg0Xw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Problem with x310 io error
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
From: Basse Ang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Basse Ang <b4ss3k@gmail.com>
Content-Type: multipart/mixed; boundary="===============7226363448652694095=="
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

--===============7226363448652694095==
Content-Type: multipart/alternative; boundary="00000000000029d6aa05b650d1ba"

--00000000000029d6aa05b650d1ba
Content-Type: text/plain; charset="UTF-8"

Hi

Just have an issue, my x310 always get this error:

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_3.15.0.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG]
  at /build/uhd-wjAkGd/uhd-3.15.0.0-1/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_00_Port_30) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
unsigned int]
  at /build/uhd-wjAkGd/uhd-3.15.0.0-1/host/lib/rfnoc/ctrl_iface.cpp:151

Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no response
packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
unsigned int]
  at /build/uhd-wjAkGd/uhd-3.15.0.0-1/host/lib/rfnoc/ctrl_iface.cpp:151


Anyone has experienced it too? Could you help me please. thank you.

Regards
Bass

--00000000000029d6aa05b650d1ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi<div dir=3D"auto"><br></div><div dir=3D"auto">Just have an issue, my x310=
 always get this error:</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<div dir=3D"auto">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; =
UHD_3.15.0.0-release</div><div dir=3D"auto">[INFO] [X300] X300 initializati=
on sequence...</div><div dir=3D"auto">[INFO] [X300] Maximum frame size: 800=
0 bytes.</div><div dir=3D"auto">[INFO] [X300] Radio 1x clock: 200 MHz</div>=
<div dir=3D"auto">[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev=
 0.929b</div><div dir=3D"auto">[ERROR] [UHD] Exception caught in safe-call.=
</div><div dir=3D"auto">=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl=
_iface_impl() [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<=
/div><div dir=3D"auto">=C2=A0 at /build/uhd-wjAkGd/uhd-3.15.0.0-1/host/lib/=
rfnoc/ctrl_iface.cpp:50</div><div dir=3D"auto">this-&gt;send_cmd_pkt(0, 0, =
true); -&gt; EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no respo=
nse packet - AssertionError: bool(buff)</div><div dir=3D"auto">=C2=A0 in ui=
nt64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with=
 uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long u=
nsigned int]</div><div dir=3D"auto">=C2=A0 at /build/uhd-wjAkGd/uhd-3.15.0.=
0-1/host/lib/rfnoc/ctrl_iface.cpp:151</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) =
no response packet - AssertionError: bool(buff)</div><div dir=3D"auto">=C2=
=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, doub=
le) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =
=3D long unsigned int]</div><div dir=3D"auto">=C2=A0 at /build/uhd-wjAkGd/u=
hd-3.15.0.0-1/host/lib/rfnoc/ctrl_iface.cpp:151</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Anyone has experienced =
it too? Could you help me please. thank you.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Regards</div><div dir=3D"auto">Bass</div></div>

--00000000000029d6aa05b650d1ba--


--===============7226363448652694095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7226363448652694095==--

