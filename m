Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 381296C8018
	for <lists+usrp-users@lfdr.de>; Fri, 24 Mar 2023 15:41:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 129E3380BC8
	for <lists+usrp-users@lfdr.de>; Fri, 24 Mar 2023 10:41:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679668862; bh=xV3N2SpfhEtJAXuHXHlx6aMQIkyXQpJgYjyCHjNxWao=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=tKDswp33mZlYmpzd/uQm0rgFc/ROOLDm9DsktA2LitbBWm91dD2AzsSbua3EebYfA
	 zMgFwfMY5pqePyKBzTVJ7lNRbwvjc+xqGDkTVImTUjwCgPUWzMUWCiWMkLCfTt2Zy4
	 jLUDfoirzjN2B5wuBMOjNADsH5YbejxPD13r09dAezchAv93N+GhylTehkDr0+IWxG
	 amNCtyLh/eKVQQxwaK60JtrYyGdATRicX30lKWHRwPXg3i5PLAmaCoVmVLFZhGng2Z
	 wYo9wQVoFF6+X27+47+2VD3va1VA0U4dO9ua1mLqzwwUdKh4txJhhB07MBJ4njLdoq
	 fa2CeTmvQ3Thw==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 546B03848EE
	for <usrp-users@lists.ettus.com>; Fri, 24 Mar 2023 10:40:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Pd/t9Lh3";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id ek18so8767674edb.6
        for <usrp-users@lists.ettus.com>; Fri, 24 Mar 2023 07:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1679668812;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gGyoRiMrkV68aCKgtDKRVzaTqS36YE9kjv0wZ1xrDAU=;
        b=Pd/t9Lh3jKJraywrpkcanw/YATPm0lFBOCc4llqTbA3r1ggUi31hK2kvpZz4+EiZHL
         uiUHZQ0Pr2cbWqsH/pmZGOh35yL3spPFv85i+n+4R4VFzHHyWNQe9gQfq2CbNnsKnm3t
         hl8CgtLzFUXZ4f3jQ0xZKiK+HloKqIWbrKBaAn4VoVpr14iHCTAF+g1GmnOBdQTKB4yP
         kFohLMA4JNhggmXI4I4C7p2QWZTs1L9wcWe/YXumUD2eWoQLelhIDF5n8ek7DHb/W9p7
         oY9f7kqGlBecH41vp88JJEdyUpfollS9GeUO1ZcAIDhElOJTwbSxqcjHphSDpTlcOQF3
         hFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679668812;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gGyoRiMrkV68aCKgtDKRVzaTqS36YE9kjv0wZ1xrDAU=;
        b=kdfbt/2GKJzOV8DKB7yMGJcW6kCqur8lXXuKB3t1J/AHFNaDURG5G/LbUnyLf/A+bh
         a2MUK5J99EcV75Gr4+uA5SSYITJs7iWuPunyESpngqO0NITBRJhifX21nj8B5hJQYxH1
         16KVPbyr8TriULAkrIx+074c0vqD8ZvEMYce+PvVZPZyMhnNP7PBY/0BvNDFMALixc7J
         xv5t6FbvwYMTNiAlYlAdTxYEt6nZcYG7OLjJ2spaOg571KPsQmtU4d+WM4IF86Gi1rcu
         a1wTTLGAD4txrvT9Kh0FhivUhnLQ8Lyk8BLSi58OkR7+P85qsRpAPsnP7UyH93dDovtl
         wQ4w==
X-Gm-Message-State: AAQBX9fdzUcXJ4PhrMLwKCH9EsT2GVMDkMfiK8GNTosoP/SBnPGq/+p2
	AFA3gw5VUBBOHPE5oblQxsDTILEN35EWVJbz63KX5uSWkoxODeJ+
X-Google-Smtp-Source: AKy350YHb1CERsR9mKKsdvXc/z0s1SlaIwQvulYgxzrxmaNfA0DgPx10Dutc++L2k2gR06jAxw1ChlFJtC3gzvMs0bw=
X-Received: by 2002:a50:d68c:0:b0:4fb:80cf:898b with SMTP id
 r12-20020a50d68c000000b004fb80cf898bmr1504007edi.7.1679668811587; Fri, 24 Mar
 2023 07:40:11 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 24 Mar 2023 10:39:59 -0400
Message-ID: <CAB__hTTaPWKEbccXzhkqNtVX6gqVM9za09_94NcN41ucJ=1ZaA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 34FEY773W5K4R6JEDVEZ2HANWGJVXV3O
X-Message-ID-Hash: 34FEY773W5K4R6JEDVEZ2HANWGJVXV3O
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Backpressure over Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34FEY773W5K4R6JEDVEZ2HANWGJVXV3O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4924046732702178489=="

--===============4924046732702178489==
Content-Type: multipart/alternative; boundary="000000000000db096a05f7a65e6c"

--000000000000db096a05f7a65e6c
Content-Type: text/plain; charset="UTF-8"

Hi,
I developed a custom RFNoC block and was testing it with a graph that was
essentially:
  tx_streamer => myblock => rx_streamer

This works fine unless I send a large number of samples, in which case bad
stuff happens in terms of sequence errors, timeouts, etc (i.e., the typical
streaming at high speed woes).

In the case of a Radio that must stream output samples at a fixed rate, I
can easily understand the need for keeping up on the host side.  But, for
my case where I am just streaming through a custom block that does not care
about sample rate, it would be nice if backpressure could handle the host
rate variations.

In order to make things "work", I have inserted a "sleep" statement in my
transmit loop to purposely throttle the Tx rate so that the Rx could keep
up.  This works well enough but in order to get reliable streaming I am
forced to throttle more than I would like.  So, I am wondering if anyone
has ideas on a better way to handle this.

It seems that the host Rx gets overwhelmed and cannot backpressure my
block. I don't quite understand why because if there is no backpressure,
how do we get "Overflow" when the radio has no place to put incoming
samples "because of backpressure"?

Rob

--000000000000db096a05f7a65e6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I developed a custom RFNoC block and was testi=
ng it with a graph that was essentially:</div><div>=C2=A0 tx_streamer =3D&g=
t; myblock =3D&gt; rx_streamer</div><div><br></div><div>This works fine unl=
ess I send a large number of samples, in which case bad stuff happens in te=
rms of sequence errors, timeouts, etc (i.e., the typical streaming at high =
speed woes).</div><div><br></div><div>In the case of a Radio that must stre=
am output samples at a fixed rate, I can easily understand the need for kee=
ping up on the host side.=C2=A0 But, for my case where I am just streaming =
through a custom block that does not care about sample rate, it would be ni=
ce if backpressure could handle the host rate variations.</div><div><br></d=
iv><div>In order to make things &quot;work&quot;, I have inserted a &quot;s=
leep&quot; statement in my transmit loop to purposely throttle the Tx rate =
so that the Rx could keep up.=C2=A0 This works well enough but in order to =
get reliable streaming I am forced to throttle more than I would like.=C2=
=A0 So, I am wondering if anyone has ideas on a better way to handle this.=
=C2=A0=C2=A0</div><div><br></div><div>It seems that the host Rx gets overwh=
elmed and cannot backpressure my block. I don&#39;t quite understand why be=
cause if there is no backpressure, how do we get &quot;Overflow&quot; when =
the radio has no place to put incoming samples &quot;because of backpressur=
e&quot;?</div><div><br></div><div>Rob</div></div>

--000000000000db096a05f7a65e6c--

--===============4924046732702178489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4924046732702178489==--
