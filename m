Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 008269D9BCA
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 17:49:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42E99385B4F
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 11:49:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732639776; bh=11wt5T0ukEIe0V0E1bbLV90UIEhjsKOEezVvISrbvzY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wf2ciRsYpEJkYMPEulGQKMMCX3IXF0JOdY4o0XkKqJBI9LU3sPe+lokgBwDawd5s5
	 DioEyinN99CaMLK7luuqDKZVNYiWF+xda1oTetkCyyeUxp6zcVzBBb/qH66MhAbDXQ
	 r8WV5cavvcyGLfbunfOO7LJDD3VVPcvO4JHuMDJgp71WmUxotKk7K5zvef9fDXgTrB
	 pTJSAQZoVPCTM3oX5yGXXvJKQtx7DRorlopSzNHY39S1JSolm6bf25rGjBY/MtV+Nv
	 YEHNYGVo2Oq86CPcdvtLAZnb7kYIfXTPUHdsgXVeQL05Bu7s7b8HPsIkiD9+Kl6IUJ
	 uaxIsa2aNicdw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AF327385A9E
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 11:49:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N34tCSED";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d43e034ef9so45041396d6.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 08:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732639761; x=1733244561; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3BCwVDMPEmWI8lrvyx2m/rL2WZFq0ImlH/oJZOlg9o=;
        b=N34tCSEDGLlGw5igiEPqj2vr0VA+5baQf8VBFCScHn1khWTmfAPcq6KsOxzHojLNfy
         i2Z64UxN4P/0UuMAAhsfyQKcDAfhOqYIrK/Vlb3GVYL4fHkfPNx+jeSRvwCRr0bN/gtD
         OGde3emzzgT1WXlDbfPVDVz5EOaBksh4VOz9DEGdaibcvwDYdHaWIPRrRKT+CtvotOsc
         q84DBXYQrtEjJqpguH9D28z9T4onqtE4T2Nr5j70arnpxuzwaFpU9i+/WO9ODWipCGwx
         zDYz4hQZsWA5lLviR+2G3ywoWU88aKHneVXYrD0Twp5rEIE2r3xPOMPaTGGiKh5UQP29
         u+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732639761; x=1733244561;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N3BCwVDMPEmWI8lrvyx2m/rL2WZFq0ImlH/oJZOlg9o=;
        b=EI24fCkHFx8B0ZLw1ZXyDj7XnQakWco0xo+bDyiEZTIdEUKfSx8DZJ/cZM86w1hMVz
         Yy/HgwadM7mK26hOkOGyZOILy6V/RkNMhttFza5j7JvH4kX87jHUkPpPJXo5FFNrAWFA
         ECJVbMmG4zUJ5nY6TJ0rP8+QgKHA85PnncEkLon+NAK0Qc/GLAIzfsKfngOJG4S8b94g
         GJlu4vKmw3h5OsBIlOsWlQZ247XdRZoQpu2cgSbsnswournhB62EWBjvGkW8LFmGfPeL
         H+gibBdJh/luW+N9Sa4XU0ifzQIvK36NV6Fc9wErZs3fBB+E+MpIWkMbr0VYsDWLe3qX
         AV3Q==
X-Gm-Message-State: AOJu0Yy2fQ/G3UaEUaDD5V+KUAryDeqsbQY4ObmlsOS23hVZVNIUF8er
	DQI4lOpOQpmUV/4kfB73asWB6tKADv8RPbfqF535qNLtxMXY2KpsKKPMSw==
X-Gm-Gg: ASbGnctdjCoVSFdJf62fhvLFED+QgMSL7EqqIvooMfanjURb0duh1lB1Zp+57xKCGU8
	lV2BrpH9cGMdidmwimPrepVfuuLzSrzU/nidPnuRDkdcUPKCjQY0UtwTk0PtSMgUrZnmDwjARuO
	HAjtSdR0ryTvky1hPuguaLCxiDNu7APFoX8JDNsl12NGSByaew1r1THx/s2ggQnTv/Ah7YAZsL6
	hCCrkFV3fLHkAMawM7flCWa1tl8uI/WteOygEJ1YksDQn7nRaHPSrPlTRdz
X-Google-Smtp-Source: AGHT+IELOr8bhc+YVspDdge6oSlYwVmA5uN4wGXeiYQfUwunlQw5HQeSXtEJKSWnWJArCCPyJeqnlQ==
X-Received: by 2002:ad4:5d6c:0:b0:6d4:238e:35ba with SMTP id 6a1803df08f44-6d450e87024mr320237676d6.21.1732639760942;
        Tue, 26 Nov 2024 08:49:20 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d451b61c88sm57595186d6.121.2024.11.26.08.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 08:49:20 -0800 (PST)
Message-ID: <97a9bd6e-d378-4b21-a800-f8954820cc03@gmail.com>
Date: Tue, 26 Nov 2024 11:49:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Houshang <houshang.azizi@accelleran.com>
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
 <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
 <CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
 <ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
 <CAO=xj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=Rw@mail.gmail.com>
 <2f9f7405-d4f0-4ebc-a820-591879c49d86@gmail.com>
 <CAO=xj9WENjU=xgsXk59fid3K4Qgu0z7GjJgVmPVzwvNY_=5AXw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAO=xj9WENjU=xgsXk59fid3K4Qgu0z7GjJgVmPVzwvNY_=5AXw@mail.gmail.com>
Message-ID-Hash: XNVV6N2GCPLAYZNGK5GXGJVSME2K35QS
X-Message-ID-Hash: XNVV6N2GCPLAYZNGK5GXGJVSME2K35QS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XNVV6N2GCPLAYZNGK5GXGJVSME2K35QS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5530192071571631211=="

This is a multi-part message in MIME format.
--===============5530192071571631211==
Content-Type: multipart/alternative;
 boundary="------------036xSkjzyMYbSO4AlyCBS8aN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------036xSkjzyMYbSO4AlyCBS8aN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2024 11:46, Houshang wrote:
> 10.10.0.100 <http://10.10.0.100>: I use it as the management ip of=20
> n310 and it is ETHERNET 1G.
> 10.10.2.100 <http://10.10.2.100>: I use it as the other ip of n310 for=20
> data and it is Fiber 10G.
>
> With srsRAN I want to do 20MHz, TDD, N78 band, 2X2 MIMO. So DL will be=20
> something around 120 Mbps and UL will be something around 11.5 Mbps.
> But this issue happens before even Attaching a UE. Meaning I don't=20
> even run data and I see this error:
I cannot help with srsRAN, maybe others know more about it.

But your N310 is essentially working, and your issue is likely with=20
configuration of your application (srsRAN?).

> /
> /
> /--=3D=3D srsRAN gNB (commit 9d5dd742a) =3D=3D--
>
>
> The PRACH detector will not meet the performance requirements with the=20
> configuration {Format 0, ZCZ 0, SCS 1.25kHz, Rx ports 1}.
> Lower PHY in quad executor mode.
> Available radio types: uhd.
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.7.0.0-0ubuntu1~jammy1
> [INFO] [LOGGING] Fastpath logging disabled at runtime.
> Making USRP object with args=20
> 'use_dpdk=3D0,type=3Dn3xx,mgmt_addr=3D10.10.0.100,addr=3D10.10.2.100,ma=
ster_clock_rate=3D122.88e6,send_frame_size=3D8500,recv_frame_size=3D8500'
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,nam=
e=3Dni-n3xx-32000F1,fpga=3DHG,claimed=3DFalse,use_dpdk=3D0,addr=3D10.10.2=
.100,master_clock_rate=3D122.88e6,send_frame_size=3D8500,recv_frame_size=3D=
8500
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DHG,master_clock_rate=3D122.88e6,mgmt_addr=3D10.10.0.100,name=3D=
ni-n3xx-32000F1,product=3Dn310,recv_frame_size=3D8500,send_frame_size=3D8=
500,use_dpdk=3D0,clock_source=3Dinternal,time_source=3Dinternal'.
> [WARNING] [MPMD] DPDK was requested but is not available, falling back=20
> to regular UDP
> [WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronously)
> [WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP
> [WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP
> [WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Cell pci=3D1, bw=3D20 MHz, 2T2R, dl_arfcn=3D626668 (n78), dl_freq=3D340=
0.02=20
> MHz, dl_ssb_arfcn=3D626304, ul_freq=3D3400.02 MHz
>
> N2: Connection to AMF on 10.55.7.40:38412 <http://10.55.7.40:38412>=20
> completed
> Warning: Configured PRACH occasion collides with PUCCH RBs ([0..1)=20
> intersects [0..3)). Some interference between PUCCH and PRACH is expect=
ed.
> Warning: Configured PRACH occasion collides with PUCCH RBs ([0..1)=20
> intersects [0..3)). Some interference between PUCCH and PRACH is expect=
ed.
> =3D=3D=3D=3D gNB started =3D=3D=3D
> Type <h> to view help
> Late: 5347; Underflow: 3213; Overflow: 1;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 4; Underflow: 0; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK./
>
> On Tue, 26 Nov 2024 at 17:37, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/11/2024 11:32, Houshang wrote:
>>     Hi Marcus
>>     I ran the benchmark command on both ip of the n310 and attached
>>     you can find the printout.
>     I"m going to guess that one of your interfaces is operating at
>     1Gbit, while the other is operating at 10Gbit?
>
>     I don't know what rates the srsRAN software runs the interface at,
>     but clearly in your 2nd example, on the
>     =C2=A0 other IP, it's able to support 25Msps without any issue.
>
>
>>
>>     On Tue, 26 Nov 2024 at 17:22, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 26/11/2024 11:10, Houshang wrote:
>>>         Many thanks for prompt reply Marcus! Please find attached
>>>         the printout for that probe command you asked for.
>>         OK, so the next thing to do is to test your network capacity
>>         between your host computer and the N310:
>>
>>         benchmark_rate --args
>>         "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_ra=
te=3D125e6"
>>         --rx_rate 25e6 --tx_rate 25e6
>>
>>
>>>
>>>         On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 26/11/2024 10:18, Houshang wrote:
>>>>             Hello
>>>>
>>>>             I have following UHD version on my server:
>>>>
>>>>             /ad@bm-super11-intel:~/houshang$ uhd_config_info --versi=
on
>>>>             UHD 4.7.0.0-0ubuntu1~jammy1
>>>>             ad@bm-super11-intel:~/houshang$ ssh root@10.10.0.100/
>>>>
>>>>             And the following UHD version on my n310:
>>>>
>>>>             /root@ni-n3xx-32000F1:~# uhd_config_info --version
>>>>             UHD 4.7.0.0-0-ga5ed1872
>>>>             root@ni-n3xx-32000F1:~# /
>>>>
>>>>             They are the same and my n310 is updated with the
>>>>             following file:
>>>>
>>>>             /ad@bm-super11-intel:~/houshang$ md5sum
>>>>             /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>>>             532b338d6861268c05a4fd9837ca80e5
>>>>             =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>>>             ad@bm-super11-intel:~/houshang$ /
>>>>
>>>>             I am running srsRAN gNB on my server (/Commit
>>>>             9d5dd742a/). A version of srs of srsRAN that is
>>>>             compiled with /UHD 4.7.0.0./
>>>>
>>>>
>>>>             Here are the error messages I get:
>>>>
>>>>             /=3D=3D=3D=3D gNB started =3D=3D=3D
>>>>             Type <h> to view help
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Late: 2805; Underflow: 2238; Overflow: 0;
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Late: 0; Underflow: 5; Overflow: 0;
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Late: 0; Underflow: 4; Overflow: 0;
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Late: 0; Underflow: 4; Overflow: 0;
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK.
>>>>             Late: 0; Underflow: 4; Overflow: 0;
>>>>             Error: failed receiving packet. RfnocError: OpTimeout:
>>>>             Control operation timed out waiting for ACK./
>>>>
>>>>
>>>>             And obviously it is not working with this amount of erro=
rs.
>>>>
>>>>             Can anyone help me with this please? Is it a bug in the
>>>>             UHD version? Or is there something I am missing here?
>>>>
>>>>             Thanks
>>>>             Houshang
>>>>
>>>             Try "the basics" first.
>>>
>>>             What does:
>>>
>>>             uhd_usrp_probe --args
>>>             "type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2"
>>>
>>>
>>>             Produce (you might have to change the addr to whatever
>>>             the address is of your N310).
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>>
>>>
>>>         --=20
>>>
>>>         *Houshang Azizi*
>>>
>>>         *Test Engineer*
>>>
>>>         logo <https://www.accelleran.com/>
>>>
>>>         *(32) 492195241*
>>>
>>>         *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>>>
>>>         *www.accelleran.com* <http://www.accelleran.com/>
>>>
>>>         linkedin icon <https://www.linkedin.com/company/accelleran>
>>>         twitter icon <https://twitter.com/accelleran> youtube icon
>>>         <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?the=
meRefresh=3D1>
>>>
>>>
>>
>>
>>
>>     --=20
>>
>>     *Houshang Azizi*
>>
>>     *Test Engineer*
>>
>>     logo <https://www.accelleran.com/>
>>
>>     *(32) 492195241*
>>
>>     *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>>
>>     *www.accelleran.com* <http://www.accelleran.com/>
>>
>>     linkedin icon <https://www.linkedin.com/company/accelleran>
>>     twitter icon <https://twitter.com/accelleran> youtube icon
>>     <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1>
>>
>>
>
>
>
> --=20
>
> *Houshang Azizi*
>
> *Test Engineer*
>
> logo <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> linkedin icon <https://www.linkedin.com/company/accelleran> twitter=20
> icon <https://twitter.com/accelleran> youtube icon=20
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D=
1>
>

--------------036xSkjzyMYbSO4AlyCBS8aN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2024 11:46, Houshang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9WENjU=3DxgsXk59fid3K4Qgu0z7GjJgVmPVzwvNY_=3D5AXw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><a href=3D"http://10.10.0.100" moz-do-not-send=3D"true">10.1=
0.0.100</a>:
          I use it as the management ip of n310 and it is ETHERNET 1G.</d=
iv>
        <div><a href=3D"http://10.10.2.100" moz-do-not-send=3D"true">10.1=
0.2.100</a>:
          I use it as the other ip of n310 for data and it is Fiber 10G.<=
/div>
        <div><br>
        </div>
        <div>With srsRAN I want to do 20MHz, TDD, N78 band, 2X2 MIMO. So
          DL will be something around 120 Mbps and UL will be something
          around 11.5 Mbps.</div>
        <div>But this issue happens before even Attaching a UE. Meaning
          I don't even run data and I see this error:</div>
      </div>
    </blockquote>
    I cannot help with srsRAN, maybe others know more about it.<br>
    <br>
    But your N310 is essentially working, and your issue is likely with
    configuration of your application (srsRAN?).<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9WENjU=3DxgsXk59fid3K4Qgu0z7GjJgVmPVzwvNY_=3D5AXw@mai=
l.gmail.com">
      <div dir=3D"ltr">
        <div><span style=3D"background-color:rgb(238,238,238)"><i><br>
            </i></span></div>
        <div><span style=3D"background-color:rgb(238,238,238)"><i>--=3D=3D
              srsRAN gNB (commit 9d5dd742a) =3D=3D--<br>
              <br>
              <br>
              The PRACH detector will not meet the performance
              requirements with the configuration {Format 0, ZCZ 0, SCS
              1.25kHz, Rx ports 1}.<br>
              Lower PHY in quad executor mode.<br>
              Available radio types: uhd.<br>
              [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1<br>
              [INFO] [LOGGING] Fastpath logging disabled at runtime.<br>
              Making USRP object with args
'use_dpdk=3D0,type=3Dn3xx,mgmt_addr=3D10.10.0.100,addr=3D10.10.2.100,mast=
er_clock_rate=3D122.88e6,send_frame_size=3D8500,recv_frame_size=3D8500'<b=
r>
              [INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3D=
ni-n3xx-32000F1,fpga=3DHG,claimed=3DFalse,use_dpdk=3D0,addr=3D10.10.2.100=
,master_clock_rate=3D122.88e6,send_frame_size=3D8500,recv_frame_size=3D85=
00<br>
              [INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DHG,master_clock_rate=3D122.88e6,mgmt_addr=3D10.10.0.100,name=3Dni=
-n3xx-32000F1,product=3Dn310,recv_frame_size=3D8500,send_frame_size=3D850=
0,use_dpdk=3D0,clock_source=3Dinternal,time_source=3Dinternal'.<br>
              [WARNING] [MPMD] DPDK was requested but is not available,
              falling back to regular UDP<br>
              [WARNING] [MPMD] Cannot create DPDK transport, falling
              back to UDP<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition =
at pps
              edge<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
              (synchronously)<br>
              [WARNING] [MPMD] Cannot create DPDK transport, falling
              back to UDP<br>
              [WARNING] [MPMD] Cannot create DPDK transport, falling
              back to UDP<br>
              [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
              Skipping.<br>
              [WARNING] [MPMD] Cannot create DPDK transport, falling
              back to UDP<br>
              [WARNING] [MPMD] Cannot create DPDK transport, falling
              back to UDP<br>
              [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
              Skipping.<br>
              Cell pci=3D1, bw=3D20 MHz, 2T2R, dl_arfcn=3D626668 (n78),
              dl_freq=3D3400.02 MHz, dl_ssb_arfcn=3D626304, ul_freq=3D340=
0.02
              MHz<br>
              <br>
              N2: Connection to AMF on <a
                href=3D"http://10.55.7.40:38412" moz-do-not-send=3D"true"=
>10.55.7.40:38412</a>
              completed<br>
              Warning: Configured PRACH occasion collides with PUCCH RBs
              ([0..1) intersects [0..3)). Some interference between
              PUCCH and PRACH is expected.<br>
              Warning: Configured PRACH occasion collides with PUCCH RBs
              ([0..1) intersects [0..3)). Some interference between
              PUCCH and PRACH is expected.<br>
              =3D=3D=3D=3D gNB started =3D=3D=3D<br>
              Type &lt;h&gt; to view help<br>
              Late: 5347; Underflow: 3213; Overflow: 1;<br>
              Error: failed receiving packet. RfnocError: OpTimeout:
              Control operation timed out waiting for ACK.<br>
              Error: failed receiving packet. RfnocError: OpTimeout:
              Control operation timed out waiting for ACK.<br>
              Late: 4; Underflow: 0; Overflow: 0;<br>
              Error: failed receiving packet. RfnocError: OpTimeout:
              Control operation timed out waiting for ACK.<br>
              Error: failed receiving packet. RfnocError: OpTimeout:
              Control operation timed out waiting for ACK.</i></span><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 at 17:3=
7,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 26/11/2024 11:32, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Marcus</div>
                <div>I ran the benchmark command on both ip of the n310
                  and attached you can find the printout.<br>
                </div>
              </div>
            </blockquote>
            I"m going to guess that one of your interfaces is operating
            at 1Gbit, while the other is operating at 10Gbit?<br>
            <br>
            I don't know what rates the srsRAN software runs the
            interface at, but clearly in your 2nd example, on the<br>
            =C2=A0 other IP, it's able to support 25Msps without any issu=
e.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024=
 at
                  17:22, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 26/11/2024 11:10, Houshang wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Many thanks for prompt reply
                        Marcus! Please find attached the printout for
                        that probe command you asked for.<br>
                      </div>
                    </blockquote>
                    OK, so the next thing to do is to test your network
                    capacity between your host computer and the N310:<br>
                    <br>
                    benchmark_rate --args
                    "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master=
_clock_rate=3D125e6"
                    --rx_rate 25e6 --tx_rate 25e6<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 =
Nov
                          2024 at 16:59, Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                          <div>
                            <div>On 26/11/2024 10:18, Houshang wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div>Hello</div>
                                <div><br>
                                </div>
                                <div>I have following UHD version on my
                                  server:</div>
                                <br>
                                <i><span
style=3D"background-color:rgb(238,238,238)">ad@bm-super11-intel:~/houshan=
g$
                                    uhd_config_info --version<br>
                                    UHD 4.7.0.0-0ubuntu1~jammy1<br>
                                    ad@bm-super11-intel:~/houshang$ ssh
                                    <a href=3D"mailto:root@10.10.0.100"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">roo=
t@10.10.0.100</a></span></i><br>
                                <br>
                                And the following UHD version on my
                                n310:<br>
                                <br>
                                <i><span
style=3D"background-color:rgb(238,238,238)">root@ni-n3xx-32000F1:~#
                                    uhd_config_info --version<br>
                                    UHD 4.7.0.0-0-ga5ed1872<br>
                                    root@ni-n3xx-32000F1:~# </span></i><b=
r>
                                <br>
                                <div>They are the same and my n310 is
                                  updated with the following file:</div>
                                <div><br>
                                </div>
                                <i><span
style=3D"background-color:rgb(238,238,238)">ad@bm-super11-intel:~/houshan=
g$
                                    md5sum
                                    /usr/share/uhd/images/usrp_n310_fpga_=
HG.bit<br>
                                    532b338d6861268c05a4fd9837ca80e5
                                    =C2=A0/usr/share/uhd/images/usrp_n310=
_fpga_HG.bit<br>
                                    ad@bm-super11-intel:~/houshang$ </spa=
n></i><br>
                                <br>
                                I am running srsRAN gNB on my server (<i>=
<span
style=3D"background-color:rgb(238,238,238)">Commit 9d5dd742a</span></i>).
                                A version of srs of srsRAN that is
                                compiled with <i><span
style=3D"background-color:rgb(238,238,238)">UHD 4.7.0.0.</span></i><br>
                                <br>
                                <br>
                                Here are the error messages I get:<br>
                                <br>
                                <i><span
style=3D"background-color:rgb(238,238,238)">=3D=3D=3D=3D gNB started =3D=3D=
=3D<br>
                                    Type &lt;h&gt; to view help<br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Late: 2805; Underflow: 2238;
                                    Overflow: 0;<br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Late: 0; Underflow: 5; Overflow: 0;<b=
r>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Late: 0; Underflow: 4; Overflow: 0;<b=
r>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Late: 0; Underflow: 4; Overflow: 0;<b=
r>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
br>
                                    Late: 0; Underflow: 4; Overflow: 0;<b=
r>
                                    Error: failed receiving packet.
                                    RfnocError: OpTimeout: Control
                                    operation timed out waiting for ACK.<=
/span></i><br>
                                <br>
                                <br>
                                And obviously it is not working with
                                this amount of errors.<br>
                                <br>
                                Can anyone help me with this please? Is
                                it a bug in the UHD version? Or is there
                                something I am missing here?<br>
                                <br>
                                Thanks<br>
                                Houshang<br>
                              </div>
                              <br>
                            </blockquote>
                            Try "the basics" first.<br>
                            <br>
                            What does:<br>
                            <br>
                            uhd_usrp_probe --args
                            "type=3Dn3xx,product=3Dn310,addr=3D192.168.10=
.2"<br>
                            <br>
                            <br>
                            Produce (you might have to change the addr
                            to whatever the address is of your N310).<br>
                            <br>
                            <br>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                      <div><br clear=3D"all">
                      </div>
                      <br>
                      <span class=3D"gmail_signature_prefix">-- </span><b=
r>
                      <div dir=3D"ltr" class=3D"gmail_signature">
                        <div dir=3D"ltr">
                          <div style=3D"text-align:left">
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                                  Azizi</span></b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif"></span></p>
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                                  Engineer</span></b></p>
                          </div>
                          <a href=3D"https://www.accelleran.com/"
                            rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                            target=3D"_blank" moz-do-not-send=3D"true"><f=
ont
                              size=3D"2"><img alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                                moz-do-not-send=3D"true" width=3D"143"
                                border=3D"0"></font></a>
                          <div style=3D"text-align:left">
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                                  492195241</span></b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"></span></p>
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span
                                    style=3D"color:black"><a
                                      href=3D"mailto:Email@accelleran.com=
"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true">houshang.a=
zizi@accelleran.com</a></span></b></span></p>
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0</span></p>
                            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                                  href=3D"http://www.accelleran.com/"
                                  style=3D"color:rgb(17,85,204)"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"><b><span
                                      style=3D"color:rgb(246,146,30)">www=
.accelleran.com</span></b></a></span></p>
                          </div>
                          <p style=3D"text-align:left;margin:20px 0px"><a
href=3D"https://www.linkedin.com/company/accelleran" rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<img
                                alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                                moz-do-not-send=3D"true" width=3D"15"
                                border=3D"0"></a>=C2=A0=C2=A0=C2=A0=C2=A0=
<a
                              href=3D"https://twitter.com/accelleran"
                              rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<img
                                alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                                moz-do-not-send=3D"true" width=3D"15"
                                border=3D"0"></a>=C2=A0=C2=A0=C2=A0=C2=A0=
<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
                              rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<img
                                alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                                moz-do-not-send=3D"true" width=3D"15"
                                border=3D"0"></a>=C2=A0=C2=A0=C2=A0 <br>
                          </p>
                        </div>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
              <div><br clear=3D"all">
              </div>
              <br>
              <span class=3D"gmail_signature_prefix">-- </span><br>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                          Azizi</span></b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                          Engineer</span></b></p>
                  </div>
                  <a href=3D"https://www.accelleran.com/" rel=3D"noopener=
"
style=3D"color:rgb(51,122,183);background-color:transparent"
                    target=3D"_blank" moz-do-not-send=3D"true"><font
                      size=3D"2"><img alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                        moz-do-not-send=3D"true" width=3D"143" border=3D"=
0"></font></a>
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                          492195241</span></b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span
                            style=3D"color:black"><a
                              href=3D"mailto:Email@accelleran.com"
                              target=3D"_blank" moz-do-not-send=3D"true">=
houshang.azizi@accelleran.com</a></span></b></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0</span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                          href=3D"http://www.accelleran.com/"
                          style=3D"color:rgb(17,85,204)" target=3D"_blank=
"
                          moz-do-not-send=3D"true"><b><span
                              style=3D"color:rgb(246,146,30)">www.accelle=
ran.com</span></b></a></span></p>
                  </div>
                  <p style=3D"text-align:left;margin:20px 0px"><a
                      href=3D"https://www.linkedin.com/company/accelleran=
"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
                      href=3D"https://twitter.com/accelleran"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0
                    <br>
                  </p>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                  Azizi</span></b><span
                style=3D"font-size:11pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener"
            style=3D"color:rgb(51,122,183);background-color:transparent"
            target=3D"_blank" moz-do-not-send=3D"true"><font size=3D"2"><=
img
                alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                moz-do-not-send=3D"true" width=3D"143" border=3D"0"></fon=
t></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><b>=
<span
                    style=3D"color:black"><a
                      href=3D"mailto:Email@accelleran.com" target=3D"_bla=
nk"
                      moz-do-not-send=3D"true">houshang.azizi@accelleran.=
com</a></span></b></span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                  href=3D"http://www.accelleran.com/"
                  style=3D"color:rgb(17,85,204)" target=3D"_blank"
                  moz-do-not-send=3D"true"><b><span
                      style=3D"color:rgb(246,146,30)">www.accelleran.com<=
/span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a
              href=3D"https://www.linkedin.com/company/accelleran"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
              href=3D"https://twitter.com/accelleran" rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------036xSkjzyMYbSO4AlyCBS8aN--

--===============5530192071571631211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5530192071571631211==--
