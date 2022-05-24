Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B5A5331AC
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 21:17:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85C86384BB5
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 15:17:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653419877; bh=sS0SbTHRNFCiCuna0lWJCfLtdaKeOjlEfG+6yR+uAdo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BYNdYLktVi6bWlozDT4anGaqwtNP0Gol0l3672JLbh2fsrlt3VifrMclcFj0m3BH8
	 jfozNlGrI//iGIFKkOQk0YdVGmpvWqZSxsoIVTXKjnrdHY6pqIrRfb5tCOeOTNAlWm
	 SfVFFzOWFljfBt4TijxcKvVkTtzTtG1IGoLqBu5h29KqYLeSbtlwFesvuqt8rrvL0E
	 RDOEfc55SLMZLRnvkGF6QrEIwyZvQkxa9mN8LB4hPDErDi3TIyBUDYKT3LATfaSv+f
	 vlawfG45GWIGwK5pQr3TKjfKmpWUx/G5J0T3KSVGUIfm4+Ho4BGw1hVefEOpsy4F26
	 OAWbTwdjSdeWA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F8FD384A02
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 15:16:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="obCUfgBd";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id v11so15822647qkf.1
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 12:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=rKUURfsprsOHyK3Wk+ANJcmq9i69P/pPFAtmfL+GpFs=;
        b=obCUfgBdQuVNUbwU9D+iXa5h5Xjis987WHgbUEr6WtuEuRrsZCDrcC8qU3R/96H31k
         vU/q+VsmL0Bf1JZ86WApqFmruv9GIt4ionKh11PGoSLbakzxTEHqYILt3X359nFGd3fv
         gdLMtKwsvoHtmyVGoZfXwWM62PPBqXUxd9m3+fSqc1tiaz1Xyne+M5QM1ylWxRx5G7pP
         4CHJf72Vno+n+QNXCz6a+MsaoJfoh9NmOl8bdGUP0DaVAy7OaW6sCSlmit61inH4f+sm
         VinK9dVHFl7KufaaVffgvtCTu06SDTe3Y7k59KvDuddol4T1ksKtAbRLcfmyUR0GTt11
         3TzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=rKUURfsprsOHyK3Wk+ANJcmq9i69P/pPFAtmfL+GpFs=;
        b=N5+MbXn/UJ25F/48X4izTMjixZuZ87qXAX/QWwFSUbBMRLfvPoBCE6VOeFn0CbVGqH
         hr4z//0wt+pTSQKzitQJSjiukqIoZCRO654wZxDqorkzGSFnn96llaFNXqlEWqO4xIAE
         mK5inkYY8q1iSpORs7/Yq8JjtxT7GS+RUtH2x+lkx0K6N9hqFqfzY7+uGFh5MBPLfGjO
         ii4JKZCJ1Hu1dlZcYIboifiCw2vJwO3yRjRj9D6kW9q99ao0uadtKPKN4euMVHSHHT3F
         OYp3q1tkxiExCfs+7YmTxWF1T2a5tjG/gonpewKhIDrLfiX/g4vu2s+5UcllJu8X5RIh
         rqTg==
X-Gm-Message-State: AOAM530WvqBe3VuzS5j0dGZsR8YYaIFZkdbUBVNuzyqd5mc8jeFRNiuu
	7H/1s83yflqcPh5nCCgPpIjovQZB91U=
X-Google-Smtp-Source: ABdhPJyoO/WwJJ2Wtywt4Sew9syyOZ6Gsx18KEmoZIsENxY6bb4q9lk4nZIEsVTfCUrLjDZOZQNq4w==
X-Received: by 2002:a05:620a:25cf:b0:699:bbc6:9e58 with SMTP id y15-20020a05620a25cf00b00699bbc69e58mr18735101qko.64.1653419813621;
        Tue, 24 May 2022 12:16:53 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id f12-20020a05622a114c00b002f39b99f67fsm127523qty.25.2022.05.24.12.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 12:16:52 -0700 (PDT)
Message-ID: <ad962baa-0bd0-a723-1213-296129ec7e51@gmail.com>
Date: Tue, 24 May 2022 15:16:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Shehla Amir <samir2@ncsu.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CALER=b0-98SwN6fzT-1+KANF3o85e717dz0kFgAjgctf76Qu_A@mail.gmail.com>
 <05297835-DF89-4F40-ADDF-1FCB059EAC81@gmail.com>
 <CALER=b2FNrO+PeS93F=kCTKeRfkNJsQqXFF1ykCfU456O8NUqA@mail.gmail.com>
 <0fd0a96a-5e14-b74e-a489-013abf9c1ee5@gmail.com>
 <CALER=b1Df-_K8QmeBncA0aSP-BnsCeNp0R5Ox_bDvsNaqibP5A@mail.gmail.com>
 <9dd73c46-bba3-519d-5b38-b1ab19af6d66@gmail.com>
 <CALER=b1MohRLVmqBpNYZLsCT014iLd_uxaG-gfmgHqYKn2PsWg@mail.gmail.com>
 <ce88cbee-9369-3613-538f-d9e72d434876@gmail.com>
 <CALER=b2gLs5BadKT8uR4-FJNdJ+u=Q2skoGXRfaFg=+2NRDWHw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALER=b2gLs5BadKT8uR4-FJNdJ+u=Q2skoGXRfaFg=+2NRDWHw@mail.gmail.com>
Message-ID-Hash: MKPUIEXGRHK2R46T7FOO7UQLHVIRKH6T
X-Message-ID-Hash: MKPUIEXGRHK2R46T7FOO7UQLHVIRKH6T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with USRP X310 LibUHD error MATLAB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKPUIEXGRHK2R46T7FOO7UQLHVIRKH6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5648008199244629092=="

This is a multi-part message in MIME format.
--===============5648008199244629092==
Content-Type: multipart/alternative;
 boundary="------------xDrbPsPBs8yB61jvy01ammG5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xDrbPsPBs8yB61jvy01ammG5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-24 11:36, Shehla Amir wrote:

Looks to be like you're still using a UHD 4.2 environment on your Ubuntu=20
machine.

You want to be compatible with the 4.1 environment on your=20
Windows/MATLAB machine.

Those assertion errors are due to, I think, you not specifying a device=20
type on the uhd_usrp_probe,
 =C2=A0 so the library goes through "device discovery", and since you don=
't=20
have a USB-connected USRP
 =C2=A0 on the system, that part of discovery is failing.

Try:

uhd_usrp_probe --args type=3Dx300,addr=3D192.168.10.2

And share the output, including the start-up messages that give version=20
information, etc.


>
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [INFO] [X300] X300 initialization sequence...
>     [INFO] [X300] Maximum frame size: 1472 bytes.
>     [INFO] [GPS] No GPSDO found
>     [INFO] [X300] Radio 1x clock: 200 MHz
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [ERROR] [UHD] Device discovery error: AssertionError:
>     libusb_init(&_context) =3D=3D 0
>     =C2=A0 in libusb_session_impl
>     =C2=A0 at
>     /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_base.cpp:3=
7
>
>     [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>     Target sock buff size: 2453333 bytes.
>     Actual sock buff size: 163840 bytes.
>     See the transport application notes on buffer resizing.
>     Please run: sudo sysctl -w net.core.rmem_max=3D2453333
>     [WARNING] [UDP] The send buffer could not be resized sufficiently.
>     Target sock buff size: 2453333 bytes.
>     Actual sock buff size: 163840 bytes.
>     See the transport application notes on buffer resizing.
>     Please run: sudo sysctl -w net.core.wmem_max=3D2453333
>     [WARNING] [UDP] The current recv_buff_size of 163840 is less than
>     the minimum recommended size of 816000 and may result in dropped
>     packets on some NICs
>     [WARNING] [UDP] The current send_buff_size of 163840 is less than
>     the minimum recommended size of 307200 and may result in dropped
>     packets on some NICs
>     =C2=A0 _____________________________________________________
>     =C2=A0/
>     | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310
>     | =C2=A0 | =C2=A0 revision: 11
>     | =C2=A0 | =C2=A0 revision_compat: 7
>     | =C2=A0 | =C2=A0 product: 30818
>     | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:32:8e:52
>     | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:32:8e:53
>     | =C2=A0 | =C2=A0 gateway: 192.168.10.1
>     | =C2=A0 | =C2=A0 ip-addr0: 192.168.137.4
>     | =C2=A0 | =C2=A0 subnet0: 255.255.255.0
>     | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2
>     | =C2=A0 | =C2=A0 subnet1: 255.255.255.0
>     | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2
>     | =C2=A0 | =C2=A0 subnet2: 255.255.255.0
>     | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2
>     | =C2=A0 | =C2=A0 subnet3: 255.255.255.0
>     | =C2=A0 | =C2=A0 serial: 321741F
>     | =C2=A0 | =C2=A0 FW Version: 6.0
>     | =C2=A0 | =C2=A0 FPGA Version: 38.0
>     | =C2=A0 | =C2=A0 FPGA git hash: b1ca7f3
>     | =C2=A0 | =C2=A0 RFNoC capable: Yes
>     | =C2=A0 |
>     | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo
>     | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo
>     | =C2=A0 | =C2=A0 Sensors: ref_locked
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:
>     | =C2=A0 |
>     | =C2=A0 | =C2=A0 * 0/DDC#0
>     | =C2=A0 | =C2=A0 * 0/DDC#1
>     | =C2=A0 | =C2=A0 * 0/DUC#0
>     | =C2=A0 | =C2=A0 * 0/DUC#1
>     | =C2=A0 | =C2=A0 * 0/Radio#0
>     | =C2=A0 | =C2=A0 * 0/Radio#1
>     | =C2=A0 | =C2=A0 * 0/Replay#0
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:
>     | =C2=A0 |
>     | =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D>0/DUC#0:0
>     | =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D>0/Radio#0:0
>     | =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D>0/DDC#0:0
>     | =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D>0/SEP#0:0
>     | =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D>0/DDC#0:1
>     | =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D>0/SEP#1:0
>     | =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D>0/DUC#1:0
>     | =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D>0/Radio#1:0
>     | =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D>0/DDC#1:0
>     | =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D>0/SEP#2:0
>     | =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D>0/DDC#1:1
>     | =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D>0/SEP#3:0
>     | =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D>0/Replay#0:0
>     | =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D>0/SEP#4:0
>     | =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D>0/Replay#0:1
>     | =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D>0/SEP#5:0
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0
>     | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)
>     | =C2=A0 | =C2=A0 Serial: 3208538
>     | =C2=A0 | _____________________________________________________
>     | =C2=A0 | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX
>     | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL
>     | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
>     | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
>     | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 16000000=
0.0 step 0.0 Hz
>     | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI
>     | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0
>     | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)
>     | =C2=A0 | =C2=A0 Serial: 3208538
>     | =C2=A0 | _____________________________________________________
>     | =C2=A0 | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX
>     | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL
>     | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked
>     | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz
>     | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 16000000=
0.0 step 0.0 Hz
>     | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1
>     | =C2=A0 | _____________________________________________________
>     | =C2=A0 | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
>     | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
>     | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
>     | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
>     | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>     | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>     | _____________________________________________________
>     | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1
>     | =C2=A0 | _____________________________________________________
>     | =C2=A0 | =C2=A0 =C2=A0/
>     | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0
>     | =C2=A0 | =C2=A0 | =C2=A0 Antennas:
>     | =C2=A0 | =C2=A0 | =C2=A0 Sensors:
>     | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz
>     | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None
>     | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>     | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ
>     | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No
>

--------------xDrbPsPBs8yB61jvy01ammG5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-24 11:36, Shehla Amir wrote=
:<br>
      <br>
      Looks to be like you're still using a UHD 4.2 environment on your
      Ubuntu machine.<br>
      <br>
      You want to be compatible with the 4.1 environment on your
      Windows/MATLAB machine.<br>
      <br>
      Those assertion errors are due to, I think, you not specifying a
      device type on the uhd_usrp_probe,<br>
      =C2=A0 so the library goes through "device discovery", and since yo=
u
      don't have a USB-connected USRP<br>
      =C2=A0 on the system, that part of discovery is failing.<br>
      <br>
      Try:<br>
      <br>
      uhd_usrp_probe --args type=3Dx300,addr=3D192.168.10.2<br>
      <br>
      And share the output, including the start-up messages that give
      version information, etc.<br>
      <br>
      <br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALER=3Db2gLs5BadKT8uR4-FJNdJ+u=3DQ2skoGXRfaFg=3D+2NRDWHw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div><br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 1472 bytes.<br>
              [INFO] [GPS] No GPSDO found<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [ERROR] [UHD] Device discovery error: AssertionError:
              libusb_init(&amp;_context) =3D=3D 0<br>
              =C2=A0 in libusb_session_impl<br>
              =C2=A0 at
              /build/uhd-sGyRrZ/uhd-4.2.0.0/host/lib/transport/libusb1_ba=
se.cpp:37<br>
              <br>
              [WARNING] [UDP] The recv buffer could not be resized
              sufficiently.<br>
              Target sock buff size: 2453333 bytes.<br>
              Actual sock buff size: 163840 bytes.<br>
              See the transport application notes on buffer resizing.<br>
              Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>
              [WARNING] [UDP] The send buffer could not be resized
              sufficiently.<br>
              Target sock buff size: 2453333 bytes.<br>
              Actual sock buff size: 163840 bytes.<br>
              See the transport application notes on buffer resizing.<br>
              Please run: sudo sysctl -w net.core.wmem_max=3D2453333<br>
              [WARNING] [UDP] The current recv_buff_size of 163840 is
              less than the minimum recommended size of 816000 and may
              result in dropped packets on some NICs<br>
              [WARNING] [UDP] The current send_buff_size of 163840 is
              less than the minimum recommended size of 307200 and may
              result in dropped packets on some NICs<br>
              =C2=A0 ____________________________________________________=
_<br>
              =C2=A0/<br>
              | =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br>
              | =C2=A0 | =C2=A0 revision: 11<br>
              | =C2=A0 | =C2=A0 revision_compat: 7<br>
              | =C2=A0 | =C2=A0 product: 30818<br>
              | =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:32:8e:52<br>
              | =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:32:8e:53<br>
              | =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>
              | =C2=A0 | =C2=A0 ip-addr0: 192.168.137.4<br>
              | =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>
              | =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>
              | =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>
              | =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>
              | =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>
              | =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>
              | =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>
              | =C2=A0 | =C2=A0 serial: 321741F<br>
              | =C2=A0 | =C2=A0 FW Version: 6.0<br>
              | =C2=A0 | =C2=A0 FPGA Version: 38.0<br>
              | =C2=A0 | =C2=A0 FPGA git hash: b1ca7f3<br>
              | =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
              | =C2=A0 |<br>
              | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, g=
psdo<br>
              | =C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo<=
br>
              | =C2=A0 | =C2=A0 Sensors: ref_locked<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device=
:<br>
              | =C2=A0 |<br>
              | =C2=A0 | =C2=A0 * 0/DDC#0<br>
              | =C2=A0 | =C2=A0 * 0/DDC#1<br>
              | =C2=A0 | =C2=A0 * 0/DUC#0<br>
              | =C2=A0 | =C2=A0 * 0/DUC#1<br>
              | =C2=A0 | =C2=A0 * 0/Radio#0<br>
              | =C2=A0 | =C2=A0 * 0/Radio#1<br>
              | =C2=A0 | =C2=A0 * 0/Replay#0<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this =
device:<br>
              | =C2=A0 |<br>
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
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#0<br>
              | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007d)<br>
              | =C2=A0 | =C2=A0 Serial: 3208538<br>
              | =C2=A0 | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CAL<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 M=
Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to =
160000000.0
              step 0.0 Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>
              | =C2=A0 | =C2=A0 ID: UBX-160 v2 (0x007e)<br>
              | =C2=A0 | =C2=A0 Serial: 3208538<br>
              | =C2=A0 | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 M=
Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 ste=
p 0.5 dB<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to =
160000000.0
              step 0.0 Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>
              | =C2=A0 | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<b=
r>
              | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step=
 0.0 Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
              | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#1<br>
              | =C2=A0 | =C2=A0 =C2=A0
              _____________________________________________________<br>
              | =C2=A0 | =C2=A0 =C2=A0/<br>
              | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Name: Unknown (0xffff) - 0<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Antennas:<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Sensors:<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 0.000 to 0.000 MHz<b=
r>
              | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 0.0 to 0.0 step=
 0.0 Hz<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
              | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------xDrbPsPBs8yB61jvy01ammG5--

--===============5648008199244629092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5648008199244629092==--
