Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B28BB3C239E
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 14:42:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78C493840E8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 08:42:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TFCaogpL";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id F3A6E383E25
	for <usrp-users@lists.ettus.com>; Fri,  9 Jul 2021 08:41:20 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id j14so4428496qvu.6
        for <usrp-users@lists.ettus.com>; Fri, 09 Jul 2021 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=ylj+uxYKQh1uiV5IvulkY7S17YBf6/nksEVUcxIdsBM=;
        b=TFCaogpLGTxyOW4uu/R1J7IGonB4b6+5U4oN7/t2Ca69L8Y9C5Gbd6iul0NATpxrnr
         WujE1CNwbdvnvXAHRpnGIB7yCkkETLtY7PyciMvcHbrlBCyRHOotAckd5btnD7dRzcZo
         WmEjsjVAP5+pY7em1ZWFJYZ2B9nwHfytJ42j7c6TS4oYaLTgInGcg+IjAVzjF//YeXUj
         ZiVY+fXHbTinmpxkqQVC2SvNoQF8OFLnl/uzRjZQ751ipG0aEajRR4L3kcQT4f103pmn
         Uj3wFSpnveCCpCvu5KFmeEBSvf4rp+UlNeZDemGN9oQhz01rc4nirqBrxExw2pNljJF2
         f1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=ylj+uxYKQh1uiV5IvulkY7S17YBf6/nksEVUcxIdsBM=;
        b=SiTjisgj8MmCNb70JrBBio0g0w7/tB3M2z8nSZRgTkQfmYmnSGNs8XERniOAAP4D0d
         DlNiV3ltj6km07zOUeUYIxQ414gcttThKk9m2TiDLWOYKrTLOxT8DVuxnuAzTwDJ0Hzh
         ilt8Kag1n4vTS9kEdN7MxAu/4EIx2kqadlLEHJw1TT2Y/9DjMkK4h/zPkbRpELlOSyZc
         f7cPKV8AqsPAQiVXPeTc8PYPfIKT+tby2T4WBMHhj6I0Y4+2moUhN+oShyv5iwAjHqs4
         SUf1XyhKy0vSkrqNky5lrqSKQr07i36g55Xhmn3zx8TnCBPzOYr0u/NdPrX91dmQVu5G
         0low==
X-Gm-Message-State: AOAM531Ofv5sdNr7ZVWQKhYDjzTUWczb4z+LNIqi2X1leq9qNsBK8OSD
	FsRetDcZE0e20Yv69tyb2tQw1xbsruRQLQ==
X-Google-Smtp-Source: ABdhPJyZHRmTZdE6OIkDA+dmrjO/pqegF7qm98z0hYJl+xMlJQuAq004SpTNReTEr/ap7mbNA5UJZQ==
X-Received: by 2002:a0c:f181:: with SMTP id m1mr35751654qvl.15.1625834480056;
        Fri, 09 Jul 2021 05:41:20 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j3sm2170924qth.63.2021.07.09.05.41.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 05:41:19 -0700 (PDT)
Message-ID: <60E843EE.2020702@gmail.com>
Date: Fri, 09 Jul 2021 08:41:18 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es>
In-Reply-To: <0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es>
Message-ID-Hash: 7TKJESWNWGCM5BLUCUS5ZLLLB3JJ2AUX
X-Message-ID-Hash: 7TKJESWNWGCM5BLUCUS5ZLLLB3JJ2AUX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multi USRP TX configuration in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TKJESWNWGCM5BLUCUS5ZLLLB3JJ2AUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1488070979479443595=="

This is a multi-part message in MIME format.
--===============1488070979479443595==
Content-Type: multipart/alternative;
 boundary="------------000904040903030201060509"

This is a multi-part message in MIME format.
--------------000904040903030201060509
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2021 07:40 AM, Armin Ghani wrote:
>
> Dear community
>
> I've been trying to make a fully synchronous multi USRP transmitter in 
> GNURadio v3.8.2.0 and UHD v3.15.0.0.
>
> In order to have a common clock and time between 2 USRPs, an octoclock 
> is also used.
>
> when trying to run a flowgraph which consists one multi_usrp sink 
> block that is connected to a signal source in GNURadio and running the 
> flowgrapth I get this error:
>
> Executing: /usr/bin/python3 -u 
> /home/.../Documents/gnuradio-tests/octoclock_test.py
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 7972 bytes.
> [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a 
> receive frame size of at least 8000 for best
> performance, but your configuration will only allow 7972.This may 
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the recv_frame_size argument.
> [INFO] [X300] Maximum frame size: 7972 bytes.
> [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a 
> receive frame size of at least 8000 for best
> performance, but your configuration will only allow 7972.This may 
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the recv_frame_size argument.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1308 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)
> [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1316 MB/s)
> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> thread[thread-per-block[6]: <block usrp_sink(1)>]: RuntimeError: 
> Multiple sampling rates downstream of TX Terminator 0: RuntimeError: 
> Node 0/DUC_0 specifies 1e+06, node 0/DUC_1 specifies 390625.
>
>
What happens if you use the "skip_dram=1" argument in the device argument?



--------------000904040903030201060509
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/09/2021 07:40 AM, Armin Ghani
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es"
      type=3D"cite">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>Dear community</p>
      <p>I've been trying to make a fully synchronous multi USRP
        transmitter in GNURadio v3.8.2.0 and UHD v3.15.0.0.</p>
      <p>In order to have a common clock and time between 2 USRPs, an
        octoclock is also used.</p>
      <p>when trying to run a flowgraph which consists one multi_usrp
        sink block that is connected to a signal source in GNURadio and
        running the flowgrapth I get this error:</p>
      <p>Executing: /usr/bin/python3 -u
        /home/.../Documents/gnuradio-tests/octoclock_test.py<br>
        <br>
        [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
        UHD_3.15.0.HEAD-0-gaea0e2de<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Maximum frame size: 7972 bytes.<br>
        [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends
        a receive frame size of at least 8000 for best<br>
        performance, but your configuration will only allow 7972.This
        may negatively impact your maximum achievable sample rate.<br>
        Check the MTU on the interface and/or the recv_frame_size
        argument.<br>
        [INFO] [X300] Maximum frame size: 7972 bytes.<br>
        [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends
        a receive frame size of at least 8000 for best<br>
        performance, but your configuration will only allow 7972.This
        may negatively impact your maximum achievable sample rate.<br>
        Check the MTU on the interface and/or the recv_frame_size
        argument.<br>
        [INFO] [X300] Radio 1x clock: 200 MHz<br>
        [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
        0xF1F0D00000000000)<br>
        [INFO] [X300] Radio 1x clock: 200 MHz<br>
        [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1308 MB/s)<br>
        [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)<br>
        [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
        0xF1F0D00000000000)<br>
        [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1316 MB/s)<br>
        [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)<br>
        [INFO] [0/Radio_0] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [1/Radio_0] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [0/Radio_1] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [1/Radio_1] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [0/DDC_0] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [1/DDC_0] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [0/DDC_1] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [1/DDC_1] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [0/DUC_0] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        [INFO] [1/DUC_0] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        [INFO] [0/DUC_1] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        [INFO] [1/DUC_1] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        [INFO] [MULTI_USRP]=A0=A0=A0=A0 1) catch time transition at pps e=
dge<br>
        [INFO] [MULTI_USRP]=A0=A0=A0=A0 2) set times next pps (synchronou=
sly)<br>
        thread[thread-per-block[6]: &lt;block usrp_sink(1)&gt;]:
        RuntimeError: Multiple sampling rates downstream of TX
        Terminator 0: RuntimeError: Node 0/DUC_0 specifies 1e+06, node
        0/DUC_1 specifies 390625.<br>
      </p>
      <br>
    </blockquote>
    What happens if you use the "skip_dram=3D1" argument in the device
    argument?<br>
    <br>
    <br>
  </body>
</html>

--------------000904040903030201060509--

--===============1488070979479443595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1488070979479443595==--
