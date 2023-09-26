Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA267AF5DA
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 23:57:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B27AE3852E2
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 17:57:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695765430; bh=9iShR88XO+xep3oncRAB+OJf0xJnd5D7ryxFK9hFGSU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Wcr2sp/H6nt65PQrdHBp+FO44T5vlcK9VfG7gA/azRBdzmLgTFtoMUwSmLcoxIvYK
	 l7C7EQzvnjNvgATEEfKnGAvufJoX0m6U2Jqzl9jWKxlqDTK5+WbJr9/py6FlIPBGlb
	 bPaMhnqY6DxEDGKN5a+hgF0n0qFfjWwIYMHdtxUy0h4lrLvgErN0ia+X7Yrjbz1Abc
	 EDCPTN8Wj1rdhOqVZJQbtdWuc9lFo8LlzckEvwhrlyZQcN6SV5Sw2z/MwD/p8Swy57
	 rCby+NbmBcxtEAm+PLROmM6/U1lzB/K6rqTaRFOSGJxVnWqpfZ3Ru3miRyc2YlBWIT
	 EWXZIFpROHeoA==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 07630385260
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 17:56:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XBZ8Hn9a";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-77428510fe7so308583985a.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 14:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695765416; x=1696370216; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9A68Ic1fu2EUMFW9TMGoNqvarb8EeQrpr1Jn8WbSrD8=;
        b=XBZ8Hn9arZPnDjuZ/O2RZLZfs6lTuYB8NC6IPZcb6B88urHUuKqee8x5q/o9/zbnJm
         C5zsraEeZ6njHKG2TKWvtlTBIMVN6Y4WQJBIDujAqq8kBd4bYBDFebvSjm0h8/vCkTmX
         vl/hjp241+396lSev6LDNDxkSOwH5/iYCLKRWouyHNlSjvRJOtnO/oT7lSslvpFylq5e
         /GD7n9YxfQChkS+pZzJpYLXcEZBrVw0mJuQUlaIaPkitRlDwGCOUSy+HJoMkm2RTVBBk
         cCod11Zmd8653/dUsIB9RfRzTKyB64e0t8kasb2ZHF8csysHvH9cVaz+GrFh0jw9aoSa
         qXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695765416; x=1696370216;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9A68Ic1fu2EUMFW9TMGoNqvarb8EeQrpr1Jn8WbSrD8=;
        b=v6yEAm5Fl8zorFi0RQvRMFfOp+cwjKpDUyvOSH5Lu8Ki3pWkweqWuPHSUZ7YIrQO8J
         nmAcIAGsl3tdgpUsmoiR64XEj0Csly8ZZPvOy+WDO4mGKPi5SaTITXA2UVSE0EiQMjlH
         x28PaEmk55KFXgTCDYXcGgJ8VmqwE9q1sJQtFp8/ynl1BLmXA1OShFq5o68dNQzdJ0tN
         NLrMD87El+Ct1TKa31Mg8nmM/cme5BxbyQn15ax2lCkU69iRTcvnUoRNsNx7dTZXc+w5
         6YpmWpxWBrdMNMlXQkK4BUfuFJj+nvSn7sUcYN5HgM3brrqdaJMMqGH5hH2ZHpgoV4OY
         dsyA==
X-Gm-Message-State: AOJu0Yx8080lGjfrIkUGCCnkwSNaJuK9MKftbU//sL6TKz2kI1fyr/Jm
	WASqVR2iOxwz3tdA3L1OAuG2H+iCTVE7Gg==
X-Google-Smtp-Source: AGHT+IFZoO2LZzmoXF/VSaXfxVBsToIWColRE2MLpYBdmZybe7lT87llZR6emhBt8+pFUAGQY40eBQ==
X-Received: by 2002:a05:620a:2904:b0:76a:e55c:252c with SMTP id m4-20020a05620a290400b0076ae55c252cmr201496qkp.32.1695765416345;
        Tue, 26 Sep 2023 14:56:56 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id vu17-20020a05620a561100b00767dba7a4d3sm5061261qkn.109.2023.09.26.14.56.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 14:56:56 -0700 (PDT)
Message-ID: <36d317aa-ebbd-3dd7-513c-4340bd20cacd@gmail.com>
Date: Tue, 26 Sep 2023 17:56:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Achilleas Anastasopoulos <anastas@umich.edu>, usrp-users@lists.ettus.com
References: <CAErymBjsm1EFK_Py2RGfm7nyWzAkspg5=at5Cd+24v2XVnOkQQ@mail.gmail.com>
 <76176ec5-f739-d9dd-d85c-9f7c90f4f60d@gmail.com>
 <CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmail.com>
Message-ID-Hash: N5QLTRXNC4X5Y3AUEEJO6SVGFIPGWHZL
X-Message-ID-Hash: N5QLTRXNC4X5Y3AUEEJO6SVGFIPGWHZL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5QLTRXNC4X5Y3AUEEJO6SVGFIPGWHZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2779873962158858400=="

This is a multi-part message in MIME format.
--===============2779873962158858400==
Content-Type: multipart/alternative;
 boundary="------------KPhihB580Kal2kCFtXO5F9mf"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KPhihB580Kal2kCFtXO5F9mf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/09/2023 17:43, Achilleas Anastasopoulos wrote:
> Thanks Marcus.
>
> Can you suggest a way to test this hypothesis?
>
> What package do the utilities come from?
> What specific libraries are involved?
>
> thanks
> Achilleas
You can always do something like:

ldd `which uhd_cal_tx_dc_offset`

Which shows you all the dynamic libraries it depends on and where=20
they're coming from

The other possibility is that you have some "half baked" .cal files=20
lying around and UHD isn't particularly paranoid
 =C2=A0 about their content.

Typically held in ~/.uhd/cal


>
>
> On Tue, Sep 26, 2023 at 5:06=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/09/2023 16:53, Achilleas Anastasopoulos wrote:
>     > Hi all,
>     >
>     > I have installed gnuradio/uhd in 10 computers in a lab (almost
>     > identical setups).
>     > These are=C2=A0 Ubuntu 20.04.4 LTS focal
>     > The connected USRPs (X300) work fine in all 10 computers.
>     >
>     > However, two of them result in a core dump when trying to use
>     > calibrating utilities as follows:
>     >
>     > $ uhd_cal_tx_dc_offset
>     >
>     > Creating the usrp device with:
>     ,ignore_cal_file=3D1,ignore-cal-file=3D1...
>     > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     > UHD_4.2.0.0-0ubuntu1~focal1
>     > [INFO] [X300] X300 initialization sequence...
>     > [INFO] [X300] Maximum frame size: 1472 bytes.
>     > [INFO] [X300] Radio 1x clock: 200 MHz
>     > Running calibration for UBX TX
>     > Daughterboard serial: 3158306
>     > Calibration frequency range: 10 MHz -> 6000 MHz
>     > Dterminate called without an active exception
>     > Aborted (core dumped)
>     >
>     >
>     > I found some similar questions on the Internet but not any defini=
te
>     > answers.
>     > Are there any ideas on how to proceed with investigating that?
>     >
>     > thanks
>     > Achilleas
>     >
>     I'd suspect mis-match between utilities and libraries.
>
>
>     >
>     >
>     >
>     > FYI:
>     >
>     > $ uhd_find_devices
>     > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     > UHD_4.2.0.0-0ubuntu1~focal1
>     > --------------------------------------------------
>     > -- UHD Device 0
>     > --------------------------------------------------
>     > Device Address:
>     > =C2=A0 =C2=A0 serial: 315C6B2
>     > =C2=A0 =C2=A0 addr: 192.168.10.2
>     > =C2=A0 =C2=A0 addr: 192.168.40.2
>     > =C2=A0 =C2=A0 fpga: HG
>     > =C2=A0 =C2=A0 name:
>     > =C2=A0 =C2=A0 product: X310
>     > =C2=A0 =C2=A0 type: x300
>     >
>     > Also:
>     >
>     > $ uhd_usrp_probe
>     > [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     > UHD_4.2.0.0-0ubuntu1~focal1
>     > [INFO] [X300] X300 initialization sequence...
>     > [INFO] [X300] Maximum frame size: 1472 bytes.
>     > [INFO] [X300] Radio 1x clock: 200 MHz
>     > =C2=A0 _____________________________________________________
>     > =C2=A0/
>     > | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310
>     > | =C2=A0 | =C2=A0 revision: 11
>     > | =C2=A0 | =C2=A0 revision_compat: 7
>     > | =C2=A0 | =C2=A0 product: 30818
>     > | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:22:64:6c
>     > | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:22:64:6d
>     > | =C2=A0 | =C2=A0 gateway: 192.168.10.1
>     > | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2
>     > | =C2=A0 | =C2=A0 subnet0: 255.255.255.0
>     > | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2
>     > | =C2=A0 | =C2=A0 subnet1: 255.255.255.0
>     > | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2
>     > | =C2=A0 | =C2=A0 subnet2: 255.255.255.0
>     > | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2
>     > | =C2=A0 | =C2=A0 subnet3: 255.255.255.0
>     > | =C2=A0 | =C2=A0 serial: 315C6B2
>     > | =C2=A0 | =C2=A0 FW Version: 6.0
>     > | =C2=A0 | =C2=A0 FPGA Version: 38.0
>     > | =C2=A0 | =C2=A0 FPGA git hash: be53058
>     > | =C2=A0 | =C2=A0 RFNoC capable: Yes
>     > | =C2=A0 |
>     > | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo
>     > | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo
>     > | =C2=A0 | =C2=A0 Sensors: ref_locked
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:
>     > | =C2=A0 |
>     > | =C2=A0 | =C2=A0 * 0/DDC#0
>     > | =C2=A0 | =C2=A0 * 0/DDC#1
>     > | =C2=A0 | =C2=A0 * 0/DUC#0
>     > | =C2=A0 | =C2=A0 * 0/DUC#1
>     > | =C2=A0 | =C2=A0 * 0/Radio#0
>     > | =C2=A0 | =C2=A0 * 0/Radio#1
>     > | =C2=A0 | =C2=A0 * 0/Replay#0
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device=
:
>     > | =C2=A0 |
>     > | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D>0/DUC#0:0
>     > | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D>0/Radio#0:0
>     > | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D>0/DDC#0:0
>     > | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D>0/SEP#0:0
>     > | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D>0/DDC#0:1
>     > | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D>0/SEP#1:0
>     > | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D>0/DUC#1:0
>     > | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D>0/Radio#1:0
>     > | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D>0/DDC#1:0
>     > | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D>0/SEP#2:0
>     > | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D>0/DDC#1:1
>     > | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D>0/SEP#3:0
>     > | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D>0/Replay#0:0
>     > | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D>0/SEP#4:0
>     > | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D>0/Replay#0:1
>     > | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D>0/SEP#5:0
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0
>     > | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)
>     > | =C2=A0 | =C2=A0 Serial: 3158306
>     > | =C2=A0 | _____________________________________________________
>     > | =C2=A0 | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX
>     > | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL
>     > | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
>     > | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 =
dB
>     > | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000=
000.0 step 0.0 Hz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI
>     > | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0
>     > | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)
>     > | =C2=A0 | =C2=A0 Serial: 3158306
>     > | =C2=A0 | _____________________________________________________
>     > | =C2=A0 | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX
>     > | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL
>     > | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
>     > | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 =
dB
>     > | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000=
000.0 step 0.0 Hz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     > | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1
>     > | =C2=A0 | _____________________________________________________
>     > | =C2=A0 | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
>     > | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
>     > | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
>     > | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 H=
z
>     > | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     > | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     > | _____________________________________________________
>     > | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1
>     > | =C2=A0 | _____________________________________________________
>     > | =C2=A0 | =C2=A0 =C2=A0/
>     > | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0
>     > | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
>     > | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
>     > | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
>     > | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
>     > | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 H=
z
>     > | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     > | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     >
>     >
>     >
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------KPhihB580Kal2kCFtXO5F9mf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/09/2023 17:43, Achilleas
      Anastasopoulos wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thanks Marcus.</div>
        <div><br>
        </div>
        <div>Can you suggest a way to test this hypothesis?</div>
        <div><br>
        </div>
        <div>What package do the utilities come from?</div>
        <div>What specific libraries are involved?</div>
        <div><br>
        </div>
        <div>thanks</div>
        <div>Achilleas</div>
      </div>
    </blockquote>
    You can always do something like:<br>
    <br>
    ldd `which uhd_cal_tx_dc_offset`<br>
    <br>
    Which shows you all the dynamic libraries it depends on and where
    they're coming from<br>
    <br>
    The other possibility is that you have some "half baked" .cal files
    lying around and UHD isn't particularly paranoid<br>
    =C2=A0 about their content.<br>
    <br>
    Typically held in ~/.uhd/cal<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAErymBgV7uNOSMUko3V2CJAo0OCe00COgqQyRMT9YDFPTEKcrw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 26, 2023 at
            5:06=E2=80=AFPM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On 26/09/2023 16:53,
            Achilleas Anastasopoulos wrote:<br>
            &gt; Hi all,<br>
            &gt;<br>
            &gt; I have installed gnuradio/uhd in 10 computers in a lab
            (almost <br>
            &gt; identical setups).<br>
            &gt; These are=C2=A0 Ubuntu 20.04.4 LTS focal<br>
            &gt; The connected USRPs (X300) work fine in all 10
            computers.<br>
            &gt;<br>
            &gt; However, two of them result in a core dump when trying
            to use <br>
            &gt; calibrating utilities as follows:<br>
            &gt;<br>
            &gt; $ uhd_cal_tx_dc_offset<br>
            &gt;<br>
            &gt; Creating the usrp device with:
            ,ignore_cal_file=3D1,ignore-cal-file=3D1...<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; [INFO] [X300] X300 initialization sequence...<br>
            &gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
            &gt; Running calibration for UBX TX<br>
            &gt; Daughterboard serial: 3158306<br>
            &gt; Calibration frequency range: 10 MHz -&gt; 6000 MHz<br>
            &gt; Dterminate called without an active exception<br>
            &gt; Aborted (core dumped)<br>
            &gt;<br>
            &gt;<br>
            &gt; I found some similar questions on the Internet but not
            any definite <br>
            &gt; answers.<br>
            &gt; Are there any ideas on how to proceed with
            investigating that?<br>
            &gt;<br>
            &gt; thanks<br>
            &gt; Achilleas<br>
            &gt;<br>
            I'd suspect mis-match between utilities and libraries.<br>
            <br>
            <br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt; FYI:<br>
            &gt;<br>
            &gt; $ uhd_find_devices<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; --------------------------------------------------<br>
            &gt; -- UHD Device 0<br>
            &gt; --------------------------------------------------<br>
            &gt; Device Address:<br>
            &gt; =C2=A0 =C2=A0 serial: 315C6B2<br>
            &gt; =C2=A0 =C2=A0 addr: 192.168.10.2<br>
            &gt; =C2=A0 =C2=A0 addr: 192.168.40.2<br>
            &gt; =C2=A0 =C2=A0 fpga: HG<br>
            &gt; =C2=A0 =C2=A0 name:<br>
            &gt; =C2=A0 =C2=A0 product: X310<br>
            &gt; =C2=A0 =C2=A0 type: x300<br>
            &gt;<br>
            &gt; Also:<br>
            &gt;<br>
            &gt; $ uhd_usrp_probe<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 9.4.0;
            Boost_107100; <br>
            &gt; UHD_4.2.0.0-0ubuntu1~focal1<br>
            &gt; [INFO] [X300] X300 initialization sequence...<br>
            &gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            &gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
            &gt; =C2=A0 _________________________________________________=
____<br>
            &gt; =C2=A0/<br>
            &gt; | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>
            &gt; | =C2=A0 | =C2=A0 revision: 11<br>
            &gt; | =C2=A0 | =C2=A0 revision_compat: 7<br>
            &gt; | =C2=A0 | =C2=A0 product: 30818<br>
            &gt; | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:22:64:6c<br>
            &gt; | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:22:64:6d<br>
            &gt; | =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>
            &gt; | =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>
            &gt; | =C2=A0 | =C2=A0 serial: 315C6B2<br>
            &gt; | =C2=A0 | =C2=A0 FW Version: 6.0<br>
            &gt; | =C2=A0 | =C2=A0 FPGA Version: 38.0<br>
            &gt; | =C2=A0 | =C2=A0 FPGA git hash: be53058<br>
            &gt; | =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external=
, gpsdo<br>
            &gt; | =C2=A0 | =C2=A0 Clock sources: internal, external, gps=
do<br>
            &gt; | =C2=A0 | =C2=A0 Sensors: ref_locked<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this dev=
ice:<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on th=
is device:<br>
            &gt; | =C2=A0 |<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
            &gt; | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
            &gt; | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>
            &gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.00=
0 MHz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 =
to 160000000.0
            step 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
            &gt; | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>
            &gt; | =C2=A0 | =C2=A0 Serial: 3158306<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.00=
0 MHz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 =
to 160000000.0
            step 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MH=
z<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 s=
tep 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt; | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0
            _____________________________________________________<br>
            &gt; | =C2=A0 | =C2=A0 =C2=A0/<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<=
br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br=
>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MH=
z<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 s=
tep 0.0 Hz<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            &gt; | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt;<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            &gt; To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------KPhihB580Kal2kCFtXO5F9mf--

--===============2779873962158858400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2779873962158858400==--
