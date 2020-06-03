Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E78E91ED7FE
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2020 23:19:30 +0200 (CEST)
Received: from [::1] (port=59122 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jganH-0001DK-7w; Wed, 03 Jun 2020 17:19:27 -0400
Received: from mail-lf1-f48.google.com ([209.85.167.48]:47058)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jganD-00017r-TS
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 17:19:24 -0400
Received: by mail-lf1-f48.google.com with SMTP id r125so2220791lff.13
 for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2020 14:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=s/si+cJ+j7C9HDu9yZxVi5r4gTvNbdcpKV1uw2Prsig=;
 b=ExFBswyUsjvRnx+u+KilP3DbthnnOzOjXxZPt/I7lVtvzvfDtxkQ9XyrfDX44UCdS9
 RSFNOamzNf1It3LOveG4iHJD/9LkFYhY93IIe7zWQMZwvnDrnJsk7huhc4mcJaCynLkp
 QBQM0TAUiKYVhAzHjdywLrdLoZTx+hStNm7IIcrkS3YYIXNUASyeIGDg2TE8mTHg3U0Q
 e4vPyeHKuyY0rLObe2HZtp96slj7f1w5IcaDb9sqgIdTABe+ih+s2uziA8LjKwVUtYLZ
 DANkgSFzyqK103ZZQ16YHvZ8nQfgAk2Q4xy05oI3dgOGuUrQ5VNUi6qvUxpqQwqCPPJP
 MHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s/si+cJ+j7C9HDu9yZxVi5r4gTvNbdcpKV1uw2Prsig=;
 b=O+NRWczxCbaVfjaoCmegOcesPR7eAAAkYphXxDI/fWUoV+QvTRPNX3QJtivyRrwOXP
 oyoxD/2Z/fXj1Cf2AFN4vZeVEea2xljWa0yHzizJfpD4NpiR+LBSSI48PWplJHDiHcej
 Ov+BcwB6YqtvYvR5WCWCdR1xk17vtm7C56xCX/wTdrgC8voWjnjkF8nDxuBRXMGomB11
 QphJ39NmSO+N5jrKiN0d4+pFdbp9bFgnlseMTEcNVHQrZ/ax3P6D3e6o4ooS3QHIoWjk
 Tb0okXk0JRK1T6x4skZEFA7xUmWSrI3Uvv27/Qk05wh1EiBykS6GOVhCxxbDP+R18Xtp
 Rdrw==
X-Gm-Message-State: AOAM531v/kYXrxwL2nFTYOON8Vmc7Gn1hm8VVeqGFCi1mDf74rbbHMLL
 AuJVbBzqhw4NaJy5usQQR/Y5pJ3QYl/Iff80kDS4jpwmRk4=
X-Google-Smtp-Source: ABdhPJzuGFXBISh/d3WPIibckwmjb2/yJ6FVGMXN0qhSl3FFNUSKj668aa1l2X3NArNe8dEXefDgScpfBKK/98VzhbM=
X-Received: by 2002:a05:6512:203:: with SMTP id a3mr756090lfo.28.1591219122224; 
 Wed, 03 Jun 2020 14:18:42 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Jun 2020 23:18:25 +0200
Message-ID: <CAN-A3_t-UEoDi7uCdiPqxAP6FbMW==kWxHSM5azQvkiatRfoiw@mail.gmail.com>
To: usrp-users@lists.ettus.com, discuss-gnuradio@gnu.org
Subject: [USRP-users] ERROR: using usrp source gnu-radio block with XG image
 (RFNoC enabled)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============7883876170039475603=="
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

--===============7883876170039475603==
Content-Type: multipart/alternative; boundary="0000000000008a468f05a734927d"

--0000000000008a468f05a734927d
Content-Type: text/plain; charset="UTF-8"

Hello Guys,
    I am using usrp x310 with default XG image. I have also setup the RFNoC
platform in GNURadio with gr-ettus.
RFNoC ddc example using RFNoC blocks works perfectly with 100MHz of
bandwidth. But when I go back to using normal usrp source block which is a
normal gr-uhd block, it throws the following error.


[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.0-16-ga3ece4f2
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> terminate called after throwing an instance of 'uhd::io_error'
>   what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
> response packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
> unsigned int]
>   at /home/ya-seen/workspace/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>


what is this issue ? what am I doing wrong here ? Help, suggestions highly
appreciated

thanks in advance !!

Regards,
Mohamed Yaaseen

--0000000000008a468f05a734927d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Guys,</div><div>=C2=A0=C2=A0=C2=A0 I am using u=
srp x310 with default XG image. I have also setup the RFNoC platform in GNU=
Radio with gr-ettus.<br></div><div>RFNoC ddc example using RFNoC blocks wor=
ks perfectly with 100MHz of bandwidth. But when I go back to using normal u=
srp source block which is a normal gr-uhd block, it throws the following er=
ror.</div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100=
; UHD_3.15.0.0-16-ga3ece4f2<br>[INFO] [X300] X300 initialization sequence..=
.<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Maximum=
 frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO]=
 [X300] Radio 1x clock: 200 MHz<br>[INFO] [0/DmaFIFO_0] Initializing block =
control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (T=
hroughput: 1296 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319=
 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000=
00000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1=
00000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0=
000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC=
0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0=
C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD=
0C0000000000000)<br>terminate called after throwing an instance of &#39;uhd=
::io_error&#39;<br>=C2=A0 what(): =C2=A0EnvironmentError: IOError: Block ct=
rl (CE_00_Port_30) no response packet - AssertionError: bool(buff)<br>=C2=
=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, doub=
le) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =
=3D long unsigned int]<br>=C2=A0 at /home/ya-seen/workspace/src/uhd/host/li=
b/rfnoc/ctrl_iface.cpp:151</div></blockquote><div><br></div><div><br></div>=
<div>what is this issue ? what am I doing wrong here ? Help, suggestions hi=
ghly appreciated<br></div><div><br></div><div>thanks in advance !!<br></div=
><div><br></div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Regards,<div>Mohamed Y=
aaseen</div></div></div></div></div></div></div></div></div></div></div></d=
iv>

--0000000000008a468f05a734927d--


--===============7883876170039475603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7883876170039475603==--

