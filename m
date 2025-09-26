Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A7CBA4FB8
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 21:37:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 875713862C4
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 15:37:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758915455; bh=HgSLJEbVbj7wWxLuERGq01Rh87QmeMBUWVu4Egv2tKg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=m0QHgU+ISEsD9A6nRIg+/EBhUs3vJGj/Y8PYuaBhN6iez1xDFBUSNNEG3NUXsWb4C
	 H4mTghDl60dkzMEHmKXDbj+IH7kW3FiSrpPPVoRcoEw9GyoROzTbiFmHrXLybOdBOI
	 LyU/mATdNAyIPA2HKzhRIs7QEe0VozAWbDSadhdUHyvJeF+dngva1ENmFqwy7SAyer
	 H2HwtpMVnJKM8eUAtaLo+k1eB8LySC+rnlVwbQrly0iWB6I7BsBiO72Ug+8G1BWaXk
	 HOYUcEjjwgewDTKxEH4SaQYKKhhLDsQ2X9u3QkSoVZ5nwzkJzk1y182tXOh9+YScpC
	 0lSgg91BWfl9g==
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FBCF3862B3
	for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 15:36:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BVbYxBVH";
	dkim-atps=neutral
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-63470a6f339so2213777d50.0
        for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 12:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1758915412; x=1759520212; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LJzsxPv+qdZ/5iKSSC497DFSx7pXWTAqF/LQpMvmLgM=;
        b=BVbYxBVHrdsB6uU+aLhL3snbS7Yswp9Q8SY13MeRaUGFTdM6TTzkhvRVMfBPJvUyvz
         NOWTxA1ZuxnKmRieOVP0R0555een9T3RaqUXz0vVIWvCC1dTorfHvWdicqTUT0j2pMzi
         +HhhGceD4i65UjVU8oQOUwkfXA05z/ZuZtVr9VOv0AJoWjerIkz7ZdT/H1n47I+AYvz4
         crjJEZMvfPiJlOHIlZVW9F/G+/fZAdH3DfA6k5BWPxNYkLUPZuyq4XnCZF+TSkJNAml2
         3scxdq3L28drLyQGnN+99FmY/mUWPdrpZoq90QYfdP5pklaPxshFXs05tfmvbZ0xTBW3
         nn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758915412; x=1759520212;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LJzsxPv+qdZ/5iKSSC497DFSx7pXWTAqF/LQpMvmLgM=;
        b=I5jrlx694JSFnFEziynkXOXCwy8ZDi2lR/snswdromoJrJ53Z8NBT+jr0DzEY3kIoi
         2w0ocJXBUWSwsOQQ9a5iEr/elgYq6PgF8tOASs75G7ZU2l8himzGzsv6sKgGpVNFBy5I
         JXAdra6iKS/VXQRLhXNAusgi3PhfkSlLGJYvIP+qeB77OR2M19FXTLANBstUOuVaWlY/
         1kXUmrUSu0bFyCy5m3nIndff8QR1XiXWGWR8e8oo6PtD2qHnuiIlCzhZjlzZPgrNhUdz
         qpdoKVtKYWhmBZIl33mV+DI1yKDsd5uNSbQ0wPdrxu9AxIv6B+6Sozf58qO/JJgI76Hn
         JwyA==
X-Gm-Message-State: AOJu0YyHWA91QrotdnzweSceZ33TlqoUjC6ms/siN2zTbG4mbtxH6T7t
	VIlhObJkOWF17L4XcW1kmdEqcEarBYTRjnrEHZD4hz49YLbiK1I0xT/nTDkDagWig+aM2BMOjHD
	q2sRfasyyeTltJlq4onjDpAS0zD7gufSWf6NwsXAqJUMZR52y9rs=
X-Gm-Gg: ASbGncvaKMY5TOQ5x0Nmozk6P8ADuFC0Any86uES5v2CdGayihKyITrxf9LtehM4GjG
	8LEHcUUUtSTD+nkpO/fUwnkowvogcVHy8I02UN4PSxeD4ZzgDy/sGlOQKM2t8rR0m3IPv7vghLV
	bn9U5tN48hFv8YllMDDqcnNjBIAurgZ7BsphAyhHI8sVany06VGLXs/3SUzMU+utX3zbVdCuQBO
	7mxEZm0XWcyK5ODIPhGaHE=
X-Google-Smtp-Source: AGHT+IFY/ri45SDiHLzMB6mpKy4bSYenxSbNQJlormJ+gdfeP12FM/JwHnyemtQKyykoEcY+4c8Wjv2y2V/tRoIuHYU=
X-Received: by 2002:a53:b10b:0:b0:635:4ed0:5767 with SMTP id
 956f58d0204a3-6361a89bd16mr7052474d50.53.1758915412469; Fri, 26 Sep 2025
 12:36:52 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 26 Sep 2025 15:36:41 -0400
X-Gm-Features: AS18NWB42P2KD4MsJiLi4F9iaBqrzayvq_4uoqiQ3yNdsG5gkS1hvU9LTAzosxw
Message-ID: <CAB__hTRcNyfshCagutk5SJVp+aaxRLbL8AdBO4pcoSrjyadXPg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: MUIAA66U5LGNRFAOV4KKBENTVCDJ7S46
X-Message-ID-Hash: MUIAA66U5LGNRFAOV4KKBENTVCDJ7S46
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to know streaming rate in arbitrary graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MUIAA66U5LGNRFAOV4KKBENTVCDJ7S46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6790774059302257277=="

--===============6790774059302257277==
Content-Type: multipart/alternative; boundary="00000000000059d372063fb96838"

--00000000000059d372063fb96838
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a custom c++ application that uses UHD to connect to RFNoC USRPs and
tries to behave appropriately for arbitrary graphs. I'm most interested in
directed graphs that go from the Rx radio to Rx streamers through some
series of blocks including rate changing blocks such as DDC. I'm wondering
if there is a generalized approach that would allow me to know the sample
rate of the samples coming through a given streamer.

Specifically, I just built an RFNoC image where the one Rx radio output was
connected to a 1:2 SplitStream block and then to a 2-channel DDC which
would allow me to downconvert 2 areas of the instantaneous spectrum from a
single radio channel (e.g., GPS at 1176 and 1226 MHz).  The DDC outputs
then go to 2 Rx streamers.

My understanding is that property propagation would cause the DDC to notify
downstream blocks of the change to the EDGE property "samp_rate" or
something like that.  But, how can the UHD API user get access to this
info.  I realize that the rx_streamer is not actually an RFNoC block but it
is conceptually similar in many ways.  If I could call a function on the
rx_streamer such as "get_input_rate()" (as I can using the DDC block
controller), I would have a generic way to know the sample rate of the
incoming stream.

Let me know if there is some way to obtain this information from UHD.
Thanks.
Rob

--00000000000059d372063fb96838
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I have a custom c++ application that us=
es UHD to connect to RFNoC USRPs and tries to behave appropriately for arbi=
trary graphs. I&#39;m most interested in directed graphs that go from the R=
x radio to Rx streamers through some series of blocks including rate changi=
ng blocks such as DDC. I&#39;m wondering if there is a generalized approach=
 that would allow me to know the sample rate of the samples coming through =
a given streamer.=C2=A0</div><div><br></div><div>Specifically, I just built=
 an RFNoC image where the one Rx radio output was connected to a 1:2 SplitS=
tream block and then to a 2-channel DDC which would allow me to downconvert=
 2 areas of the instantaneous spectrum from a single radio channel (e.g., G=
PS at 1176 and 1226 MHz).=C2=A0 The DDC outputs then go to 2 Rx streamers.=
=C2=A0=C2=A0</div><div><br></div><div>My understanding is that property pro=
pagation would cause the DDC to notify downstream blocks of the change to t=
he EDGE property &quot;samp_rate&quot; or something like that.=C2=A0 But, h=
ow can the UHD API user get access to this info.=C2=A0 I realize that the r=
x_streamer is not actually an RFNoC block but it is conceptually similar in=
 many ways.=C2=A0 If I could call a function on the rx_streamer such as &qu=
ot;get_input_rate()&quot; (as I can using the DDC block controller), I woul=
d have a generic way to know the sample rate of the incoming stream.</div><=
div><br></div><div>Let me know if there is some way to obtain this informat=
ion from UHD.</div><div>Thanks.</div><div>Rob</div><div><br></div></div>

--00000000000059d372063fb96838--

--===============6790774059302257277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6790774059302257277==--
