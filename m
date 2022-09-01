Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B05A9AC7
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 16:47:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BADB387C03
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 10:47:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662043629; bh=fZ8VmIBaVne+1OtTp3GfGLfICa9ILiamYAclVFdotyA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sPE7nuvyCnJvj2I7GXmHubF4T+5UKAAY8/VOz++pxcRvogh+Gfamn6iNjKxSB34wZ
	 Xxy42VWnVegkQWT7fK8Qy3j/kr/o6hA4uQ8c8UavKZ3DHj0EXH437/pkxa04QZa0mJ
	 GP0QlhcDZIC/cCNWAHimv2v+uQh6s1h8+6jV61KyoDgX0VvCxmaAtR0SrDKSWQ/axH
	 6ua9ed7JWf9YTfPuxq+5sm9CDNT4tB8OOsPXaFbuKWmiBP1UHPZOOYCf22y1oWlv8a
	 MmsYvPEa17mJkc1BG8zFqh+lmoI/HG+kgvT4JR1i1u/zyi5i9kn0Y1ERhrSqGvK0DV
	 fCbk92o1Wh5Ng==
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 66E45387BFA
	for <usrp-users@lists.ettus.com>; Thu,  1 Sep 2022 10:46:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SN5blFx/";
	dkim-atps=neutral
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-33da3a391d8so339412697b3.2
        for <usrp-users@lists.ettus.com>; Thu, 01 Sep 2022 07:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=MdatzVy0reX1SPpawbB5OZgAc83eJ1aejPhGRsymKqU=;
        b=SN5blFx/A2/vP10FNREfIksg0ZRumPwDNGv1YT2Qx3Rs02JhweKrwtm5CehrYxkl88
         xKrcJOiOqMEk/5yVVplCyLkPGFGfMJnaMA5UA4TPdb7SeaJUoRvZEjlLMH2Eptc7BJch
         MFnOZYKycEdqogneKqhN9CFGVWnhYGrlEMMf4OFRiFTSOTr2UQCbGxIahnCRlOD4qRM9
         CLvyE4yolp9WY4XQvINyNHENq9dkWadMXIK66Ni4xphNNaigqzlYNMAAQcvW9Kj4WKU+
         ThiXZYPlVb36kxlNkoeABWm3ajTYcwBMoCvDssGxppA5C/N71fc4cfkV30PmMWjjnNCr
         f/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=MdatzVy0reX1SPpawbB5OZgAc83eJ1aejPhGRsymKqU=;
        b=pAUndwFS4J5jyy4k0b0LrrR8Bt8ZOWZcM8N/eq0zCDys8SZj8PAw0LaRtiDaTd6wkG
         5WrnExKazy5hA0Tq3Xc5FEmVMehVXFlDimV71qztKk599QurxA+yXForMmfCGeqvIyYp
         w1MM9a/bti6fSGBDNrMuvKwuRDZOmPstn72a+uE+UonUeRpdG4WflR3OT96gXoq6kKCY
         UE7pO2mqGTT4Hn8mk5CiTYQum+FIbfX+0rTs98Ej0Z1SOdTzF7z3Kfb8qity4S4ykX0A
         Ukvc+xxX8mV8EXp7oVovJKM3Fprl7krFM90cj9/DG8n6rxq8egdMytZOtoxqX/7svCD0
         WSuA==
X-Gm-Message-State: ACgBeo3AA1IOuB4lLPneInBBmZbGXF0IvErHNOj6+DCKsaSNaQy84nor
	/oNG1lUb6cgzRvLBl0pTo7kNbYYDhJE+K2gDgGLrRfe5t/8=
X-Google-Smtp-Source: AA6agR697my0d/w9dap3kYr9cDGDKHY+vLhjlO92i90tx0nLWMXmj6skjRNy4e/TxUeA1KDbbn5G1O+IoHib+fQSkL0=
X-Received: by 2002:a81:1095:0:b0:340:f1b9:10b1 with SMTP id
 143-20020a811095000000b00340f1b910b1mr18104765ywq.369.1662043574181; Thu, 01
 Sep 2022 07:46:14 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 1 Sep 2022 09:46:03 -0500
Message-ID: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 2KLSO3ZNGKJ27HRKEOH7F7IIJGQHSNRW
X-Message-ID-Hash: 2KLSO3ZNGKJ27HRKEOH7F7IIJGQHSNRW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_radio_loopback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2KLSO3ZNGKJ27HRKEOH7F7IIJGQHSNRW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7451005896286458376=="

--===============7451005896286458376==
Content-Type: multipart/alternative; boundary="000000000000d7614005e79eaca3"

--000000000000d7614005e79eaca3
Content-Type: text/plain; charset="UTF-8"

Hi,
I am interested in implementing a relatively simple repeater application on
the X310 and E310. I ran the Ettus rfnoc_radio_loopback example and this is
nearly a perfect fit for the functionality I want. However, I am wondering
how my application can intelligently set the Rx Gain & Tx Gain. Actually,
the Tx gain is easy: I can leave it fixed or I can change it inversely with
the Rx gain to maintain constant loop gain.  But, the Rx Gain I would like
to set based on input signal power.

I'm not thinking of a fast AGC or even logic residing on the FPGA at all.
I'm thinking more along the lines of the host PC occasionally querying an
"rssi" or other digital power estimate and then changing the Rx gain in
response.  I don't care about actual power levels - I just want to maximize
the digital dynamic range.

I know that I can implement a custom RFNoC block that simply passes samples
through while computing this estimate such that it can be queried with a
register read. But, before doing so, I'm wondering if something already
exists such that I wouldn't have to do so.
Rob

--000000000000d7614005e79eaca3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am interested in implementing a relatively simpl=
e repeater application on the X310 and E310. I ran the Ettus rfnoc_radio_lo=
opback example and this is nearly a perfect fit for the functionality I wan=
t. However, I am wondering how my application can intelligently set the Rx =
Gain &amp; Tx Gain. Actually, the Tx gain is easy: I can leave it fixed or =
I can change it inversely with the Rx gain to maintain constant loop gain.=
=C2=A0 But, the Rx Gain I would like to set based on input signal power.=C2=
=A0=C2=A0</div><div><br></div><div>I&#39;m not thinking of a fast AGC or ev=
en logic residing on the FPGA at all. I&#39;m thinking more along the lines=
 of the host PC occasionally querying an &quot;rssi&quot; or other digital =
power estimate and then changing the Rx gain in response.=C2=A0 I don&#39;t=
 care about=C2=A0actual power levels - I just want to maximize the digital =
dynamic range.</div><div><br></div><div>I know that I can implement a custo=
m RFNoC block that simply passes samples through while computing this estim=
ate such that it=C2=A0can be queried with a register read. But, before doin=
g so, I&#39;m wondering if something already exists such that I wouldn&#39;=
t have to do so.=C2=A0</div><div>Rob</div></div>

--000000000000d7614005e79eaca3--

--===============7451005896286458376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7451005896286458376==--
