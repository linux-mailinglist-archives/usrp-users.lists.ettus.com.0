Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EC0756575
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jul 2023 15:50:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C241F384256
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jul 2023 09:50:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689601817; bh=1iWCJw1ppTgI6+dOeG1l4ux7uVUENJ/sLFDLvq/lUXY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zrs87cg3kSNO0uaSCiFnvTfGL9fl1qvh+Q81pp0FQmdTaGgfYe72nQhEDy+gEz35g
	 qlaN1R70NWKgkhiGNHMXjpUPJP0xH69fxDpwxaIIvIqqPHvL89toGif3sM7HZjetFS
	 tw0m+5IXu6zee1QGFLhO1QD2MhPFwxLWI6MRyilq/e/iA03amARfKgoYOxbnHP+xtC
	 4eEQUDQ3X5LJKyMfIEfEVXxzfTURHtNnqKYMv8XJ4apIlX/OflIGKCsueosLT4S9KQ
	 8HoY1vwOcX8zS7ZbsME6gmWiEfyyKyJjoChlN8L3KwstWCBW+2O4g2W0Im370YjSGS
	 dQTWt13zMWPjA==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E38F38092C
	for <usrp-users@lists.ettus.com>; Mon, 17 Jul 2023 09:49:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="erreZoOq";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7656652da3cso361982885a.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jul 2023 06:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689601778; x=1692193778;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bNS9ct2kMNeDKPSpCSleiSPV1yQCQP1VyM98v8HFwgo=;
        b=erreZoOq+ZHCvUDpaqaKDX0KsnXQpSnYRROCDzYJheta/1nU4lV7L1Ld5rC5+4Pxxe
         ywR+qkAvsDV0o3mJd7a1tdtnQczDXhzPxXnxrNv3aa5VjF22nj7YqS9lVeSJ3irK5K8H
         WPKw3ftUEaF5GdMse6knGPCo/p3HHKFTSt0yYoWoeDvt29B9O2wFPB/j2/oeSoynIJLK
         Tlr6BRyWy0SGupk46JVmqQqqKXxbqF43UWIle9y/DUhGYDHvMPubJdh3D4TftAXB9HPc
         4W7aHs36iOiMHrn4SOuUD6ezHzWggd6sCBLAogHNYMXw2x+pOawVNSyHTqJRp7+zh0SY
         17+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689601778; x=1692193778;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bNS9ct2kMNeDKPSpCSleiSPV1yQCQP1VyM98v8HFwgo=;
        b=QKaFwYAJDKyJF0i5dsfBamHaEI5+hb/afj32mz3ngmlOFr3mk/gWReuhLJ48TlrqIk
         y09aBDvQkRKgavP2Lp7Aa/iMk/xYhmoML4+4MIhSjJxyF4IwCMcpBIjtf7n4U3t/9QqM
         pEHJxUxNsx0qNgG3h+iY5jfh6s917Js2/w94JhrL757XDMmSyJDJ24ds/Nz+CD7VDh5U
         HZ3d63Gak8yceYbpSTstdpPbUxfDrwIE8K9xBBdmyYbSdLN7JMGxqEQzjBavKyjyVp2I
         Vwa7oS+IsjgGRqKmBQaI5fpoO64AIpb3Q3LuVE6OBgsudk7bakNofsb01IzCPQ+0Oj9K
         qEVQ==
X-Gm-Message-State: ABy/qLYqdjEk+TIBBwW271qNIHm4DI/ZWCz7ivDL5ER8v1C9tUssur9r
	IxhxebeLEWx506R3DetIZTPMeZVq+AM=
X-Google-Smtp-Source: APBJJlFWFeu9iE/zZSfFvoCr0SBHDB4p44h6EGmYPSpCEr7GueZqgRJ0R5TrdKQxy/BXyujo2YOT9A==
X-Received: by 2002:a05:620a:e90:b0:768:11ff:7899 with SMTP id w16-20020a05620a0e9000b0076811ff7899mr6364752qkm.64.1689601778567;
        Mon, 17 Jul 2023 06:49:38 -0700 (PDT)
Received: from [192.168.2.190] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id q26-20020a05620a039a00b00767b7375eadsm6075683qkm.39.2023.07.17.06.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 06:49:38 -0700 (PDT)
Message-ID: <d49e88d9-ffa1-ed10-941b-639a26455234@gmail.com>
Date: Mon, 17 Jul 2023 09:49:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: discuss-gnuradio@gnu.org,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAA=S3PuWwyPcUpcwng7ZUHzMm5nTQjTA81Dc2E3+=f07jQ5EXQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PuWwyPcUpcwng7ZUHzMm5nTQjTA81Dc2E3+=f07jQ5EXQ@mail.gmail.com>
Message-ID-Hash: MKLCZXZOJLNKJFUBP5CWCOLICBLZ6DJW
X-Message-ID-Hash: MKLCZXZOJLNKJFUBP5CWCOLICBLZ6DJW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error strange: The daughterboard manager encountered a recoverable error in init.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKLCZXZOJLNKJFUBP5CWCOLICBLZ6DJW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2817211479578327523=="

This is a multi-part message in MIME format.
--===============2817211479578327523==
Content-Type: multipart/alternative;
 boundary="------------eYdNodEmIqRTzIvVlUR0bsBo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eYdNodEmIqRTzIvVlUR0bsBo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/07/2023 02:16, sp wrote:
> when I want to use USRP x310 with ubx-160 and twin-rx daughterboard I=20
> have faced=C2=A0this strange log...
>
> The daughterboard manager encountered a recoverable error in init.
> Loading the "unknown" daughterboard implementations to continue.
> The daughterboard cannot operate until this error is resolved.
>
> when I used uhd_usrp_probe I faced that TX for UBX-160 is unknown.
> TX Frontend: 0
The other Marcus has already mentioned that this belongs properly on=20
usrp-users, NOT discuss-gnuradio.

But my recollection is that the TwinRX/UBX-160 combination doesn't work=20
because of conflicting clocking
 =C2=A0 requirements on the motherboard.=C2=A0=C2=A0=C2=A0 If you try to =
use them=20
separately, you'll likely find that they work.


> | =C2=A0 | =C2=A0 | *Name: Unknown (0x0094) - 0
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No*
>
> How can solve these errors?
>
> *complete log:*
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.2.0.0-0-unknown
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
> =C2=A0 _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310
> | =C2=A0 | =C2=A0 revision: 11
> | =C2=A0 | =C2=A0 revision_compat: 7
> | =C2=A0 | =C2=A0 product: 30818
> | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:32:72:23
> | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:32:72:24
> | =C2=A0 | =C2=A0 gateway: 192.168.10.1
> | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2
> | =C2=A0 | =C2=A0 subnet0: 255.255.255.0
> | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2
> | =C2=A0 | =C2=A0 subnet1: 255.255.255.0
> | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2
> | =C2=A0 | =C2=A0 subnet2: 255.255.255.0
> | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2
> | =C2=A0 | =C2=A0 subnet3: 255.255.255.0
> | =C2=A0 | =C2=A0 serial: 3216766
> | =C2=A0 | =C2=A0 FW Version: 6.0
> | =C2=A0 | =C2=A0 FPGA Version: 38.0
> | =C2=A0 | =C2=A0 FPGA git hash: 26793b8
> | =C2=A0 | =C2=A0 RFNoC capable: Yes
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo
> | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo
> | =C2=A0 | =C2=A0 Sensors: ref_locked
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:
> | =C2=A0 |
> | =C2=A0 | =C2=A0 * 0/DDC#0
> | =C2=A0 | =C2=A0 * 0/DDC#1
> | =C2=A0 | =C2=A0 * 0/DUC#0
> | =C2=A0 | =C2=A0 * 0/DUC#1
> | =C2=A0 | =C2=A0 * 0/Radio#0
> | =C2=A0 | =C2=A0 * 0/Radio#1
> | =C2=A0 | =C2=A0 * 0/Replay#0
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:
> | =C2=A0 |
> | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D>0/DUC#0:0
> | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D>0/Radio#0:0
> | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D>0/DDC#0:0
> | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D>0/SEP#0:0
> | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D>0/DDC#0:1
> | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D>0/SEP#1:0
> | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D>0/DUC#1:0
> | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D>0/Radio#1:0
> | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D>0/DDC#1:0
> | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D>0/SEP#2:0
> | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D>0/DDC#1:1
> | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D>0/SEP#3:0
> | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D>0/Replay#0:0
> | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D>0/SEP#4:0
> | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D>0/Replay#0:1
> | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D>0/SEP#5:0
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0
> | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)
> | =C2=A0 | =C2=A0 Serial: 325406E
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0 =
step 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0
> | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)
> | =C2=A0 | =C2=A0 Serial: 325406E
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0 =
step 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1
> | =C2=A0 | =C2=A0 ID: Unknown (0x0094)
> | =C2=A0 | =C2=A0 Serial: 31EF996
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0x0094) - 0
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1
> | =C2=A0 | =C2=A0 ID: TwinRX Rev C (0x0095)
> | =C2=A0 | =C2=A0 Serial: 31D7212
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
> | =C2=A0 | =C2=A0 | =C2=A0 Name: TwinRX RX0
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX1, RX2
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 93.0 step 1.0 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 80000000.0 to 80000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IIi
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
> | =C2=A0 | _____________________________________________________
> | =C2=A0 | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1
> | =C2=A0 | =C2=A0 | =C2=A0 Name: TwinRX RX1
> | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX1, RX2
> | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
> | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
> | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 93.0 step 1.0 dB
> | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 80000000.0 to 80000000.0 st=
ep 0.0 Hz
> | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QQ
> | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>

--------------eYdNodEmIqRTzIvVlUR0bsBo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/07/2023 02:16, sp wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PuWwyPcUpcwng7ZUHzMm5nTQjTA81Dc2E3+=3Df07jQ5EXQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>when I want to use USRP x310 with ubx-160 and twin-rx
          daughterboard I have faced=C2=A0this strange log...</div>
        <div><br>
        </div>
        <div>The daughterboard manager encountered a recoverable error
          in init.<br>
          Loading the "unknown" daughterboard implementations to
          continue.<br>
          The daughterboard cannot operate until this error is resolved.<=
br>
        </div>
        <div><br>
        </div>
        <div>when I used uhd_usrp_probe I faced that TX for UBX-160 is
          unknown.</div>
        <div>TX Frontend: 0<br>
        </div>
      </div>
    </blockquote>
    The other Marcus has already mentioned that this belongs properly on
    usrp-users, NOT discuss-gnuradio.<br>
    <br>
    But my recollection is that the TwinRX/UBX-160 combination doesn't
    work because of conflicting clocking<br>
    =C2=A0 requirements on the motherboard.=C2=A0=C2=A0=C2=A0 If you try =
to use them
    separately, you'll likely find that they work.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3PuWwyPcUpcwng7ZUHzMm5nTQjTA81Dc2E3+=3Df07jQ5EXQ@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div>| =C2=A0 | =C2=A0 | =C2=A0<b> Name: Unknown (0x0094) - 0<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0=
.0 Hz<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
            | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No</b><br>
        </div>
        <div><br>
        </div>
        <div>How can solve these errors?</div>
        <div><br>
        </div>
        <div><b>complete log:</b></div>
        <div><br>
        </div>
        <div>uhd_usrp_probe<br>
          [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.2.0.0-0-unknown<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [WARNING] [RFNOC::GRAPH] One or more blocks timed out during
          flush!<br>
          =C2=A0 _____________________________________________________<br=
>
          =C2=A0/<br>
          | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>
          | =C2=A0 | =C2=A0 revision: 11<br>
          | =C2=A0 | =C2=A0 revision_compat: 7<br>
          | =C2=A0 | =C2=A0 product: 30818<br>
          | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:32:72:23<br>
          | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:32:72:24<br>
          | =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>
          | =C2=A0 | =C2=A0 ip-addr0: 192.168.10.2<br>
          | =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>
          | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>
          | =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>
          | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>
          | =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>
          | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>
          | =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>
          | =C2=A0 | =C2=A0 serial: 3216766<br>
          | =C2=A0 | =C2=A0 FW Version: 6.0<br>
          | =C2=A0 | =C2=A0 FPGA Version: 38.0<br>
          | =C2=A0 | =C2=A0 FPGA git hash: 26793b8<br>
          | =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
          | =C2=A0 | =C2=A0 <br>
          | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo=
<br>
          | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo<br>
          | =C2=A0 | =C2=A0 Sensors: ref_locked<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br=
>
          | =C2=A0 | =C2=A0 <br>
          | =C2=A0 | =C2=A0 * 0/DDC#0<br>
          | =C2=A0 | =C2=A0 * 0/DDC#1<br>
          | =C2=A0 | =C2=A0 * 0/DUC#0<br>
          | =C2=A0 | =C2=A0 * 0/DUC#1<br>
          | =C2=A0 | =C2=A0 * 0/Radio#0<br>
          | =C2=A0 | =C2=A0 * 0/Radio#1<br>
          | =C2=A0 | =C2=A0 * 0/Replay#0<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this devi=
ce:<br>
          | =C2=A0 | =C2=A0 <br>
          | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
          | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
          | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
          | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
          | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
          | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
          | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
          | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
          | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
          | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
          | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
          | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
          | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
          | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
          | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
          | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
          | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>
          | =C2=A0 | =C2=A0 Serial: 325406E<br>
          | =C2=A0 | =C2=A0 =C2=A0
          _____________________________________________________<br>
          | =C2=A0 | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<b=
r>
          | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.=
5 dB<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 1600=
00000.0 step
          0.0 Hz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
          | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>
          | =C2=A0 | =C2=A0 Serial: 325406E<br>
          | =C2=A0 | =C2=A0 =C2=A0
          _____________________________________________________<br>
          | =C2=A0 | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<b=
r>
          | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.=
5 dB<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 1600=
00000.0 step
          0.0 Hz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>
          | =C2=A0 | =C2=A0 ID: Unknown (0x0094)<br>
          | =C2=A0 | =C2=A0 Serial: 31EF996<br>
          | =C2=A0 | =C2=A0 =C2=A0
          _____________________________________________________<br>
          | =C2=A0 | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0x0094) - 0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>
          | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>
          | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0=
 Hz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>
          | =C2=A0 | =C2=A0 ID: TwinRX Rev C (0x0095)<br>
          | =C2=A0 | =C2=A0 Serial: 31D7212<br>
          | =C2=A0 | =C2=A0 =C2=A0
          _____________________________________________________<br>
          | =C2=A0 | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Name: TwinRX RX0<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX1, RX2<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<b=
r>
          | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 93.0 step 1.0=
 dB<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 80000000.0 to 80000=
000.0 step 0.0
          Hz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: II<span data-lexica=
l-text=3D"true">i</span><br>
          | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
          | =C2=A0 | =C2=A0 =C2=A0
          _____________________________________________________<br>
          | =C2=A0 | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Name: TwinRX RX1<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX1, RX2<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<b=
r>
          | =C2=A0 | =C2=A0 | =C2=A0 Gain range all: 0.0 to 93.0 step 1.0=
 dB<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 80000000.0 to 80000=
000.0 step 0.0
          Hz<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QQ<br>
          | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------eYdNodEmIqRTzIvVlUR0bsBo--

--===============2817211479578327523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2817211479578327523==--
