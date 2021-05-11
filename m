Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B717637B182
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 00:16:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D3D2383FBA
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 18:16:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GDP+fbdc";
	dkim-atps=neutral
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D67C384139
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 18:15:39 -0400 (EDT)
Received: by mail-lf1-f52.google.com with SMTP id c3so30848829lfs.7
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 15:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZTp6Ic9aPC9KK5EIW9Bpuu9oRYQYkyzXsFcJ4CBVtno=;
        b=GDP+fbdcg69duILTGDIf2iZHMPxnyld5UpwEYjDCRn7WeHKHfssMTU2uldfTij0+hG
         jyECM9det+mt3AarcLopztvMvqvb9ZgNFDuFLjKb39Un6PX1FRIt4SLB2ksK2W9i/wMU
         HT0O7o9W01JVwN1JmPyZ0xbdKlevlCMFEYTCacusBMjiMKSaEhkMD6SfM56ZS/0WoBNF
         B1jpq1sYlFru9ubAv8HTX8zhpDTq3U8w3gda2wULOiVcbOX0np39ejkYCEkocwvd3ZHW
         xR0INimdSt7Qmj7SrsYkuWIE4kVqqt9UKGVY8qkkwvODiilRkkNV/nWNR03zFqDHi4pa
         0bCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZTp6Ic9aPC9KK5EIW9Bpuu9oRYQYkyzXsFcJ4CBVtno=;
        b=fyBhJaEusQFWR6QvV2BmRZ4ED7568fjGqXK0hoqGVFSX3cLT7ugdECcBBJFiUNo2g0
         sTLBykBcS+KcGU68RHFZz4wrH9tRCH0k+e9RdJpDfWuzYD4LdkDygGLns978eo2XtCWg
         EPEexLV2KA1Jr7bsz0i+F8DpeaWoWyvnrqQnGLWGGqlhUWSxZq8wU39PVRqktfBZBHG9
         bdYR9EpY7WAuyyN2sYolcaPJSm9QxUiidOV946/ThMSZm0vEbA0x5pL7GDfWV6sPIjf1
         sX4OSnz0V87NDhG9jy2ZfYNLdkdUHqlbhtJBteJ4ZOJGv7/Sycuj8kmaDjBLdZIi4LAx
         yuaw==
X-Gm-Message-State: AOAM533ybPQCyiSWEbgn2BOvoik97fopkbJ0MzwjeBAwCoqMujC22xIw
	nr7tnZRXhnp70A94S3GX0AiUNXeKo7Slg5fxD6YZfnyX92YPEQ==
X-Google-Smtp-Source: ABdhPJyzZj1f2ZbXhepVOYwLQzM+G/yOZJX3SfmyvHl0OQ4zKw82XBAQ8753mBeRUNat5HcUZKlX2WgWwn3LU/kbJfo=
X-Received: by 2002:a05:6512:12cb:: with SMTP id p11mr22090150lfg.43.1620771337652;
 Tue, 11 May 2021 15:15:37 -0700 (PDT)
MIME-Version: 1.0
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Tue, 11 May 2021 17:15:26 -0500
Message-ID: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: E7INAYE3D6Y2GW72GKK5S7TKJQQAUP52
X-Message-ID-Hash: E7INAYE3D6Y2GW72GKK5S7TKJQQAUP52
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7INAYE3D6Y2GW72GKK5S7TKJQQAUP52/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1206053797099074090=="

--===============1206053797099074090==
Content-Type: multipart/alternative; boundary="000000000000d7cde305c2153be8"

--000000000000d7cde305c2153be8
Content-Type: text/plain; charset="UTF-8"

Hello community

I'm Isaac. I'm dealing with some questions about the interpretation of
sampling rate and bandwidth in a USRP source block.

What I understand is if I work with an USRP N210, my ADC works with a
100MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could
receive in my host up to 25MS/s with a bandwidth of 20MHz.
https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates

My questions are:

1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz? I
think It is up to 12.5MHz according to Nyquist.

2. Why is the sample rate value in the usrp source block equal to the
bandwidth I observe? I think this bandwidth should be the half according to
Nyquist too. https://wiki.gnuradio.org/index.php/USRP_Source

I appreciate any help to clarify this concepts

Regards
Isaac T.

--000000000000d7cde305c2153be8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello community<br></div><div><br></div><div>I&#39;m =
Isaac. I&#39;m dealing with some questions about the interpretation of samp=
ling rate and bandwidth in a USRP source block.</div><div><br></div><div>Wh=
at I understand is if I work with an USRP N210, my ADC works with a 100MS/s=
. If I use a Gigabit Ethernet and a data type of 16bits, I could receive in=
 my host up to 25MS/s with a bandwidth of 20MHz. <a href=3D"https://kb.ettu=
s.com/About_USRP_Bandwidths_and_Sampling_Rates">https://kb.ettus.com/About_=
USRP_Bandwidths_and_Sampling_Rates</a></div><div><br></div><div>My question=
s are: <br></div><div><br></div><div>1. If I can receive up to 25MS/s on my=
 host, why my bandwidth is 20MHz? I think It is up to 12.5MHz according to =
Nyquist.</div><div><br></div><div>2. Why is the  sample rate value in the u=
srp source block equal to the bandwidth I observe? I think this bandwidth s=
hould be the half according to Nyquist too. <a href=3D"https://wiki.gnuradi=
o.org/index.php/USRP_Source">https://wiki.gnuradio.org/index.php/USRP_Sourc=
e</a></div><div><br></div><div>I appreciate any help to clarify this concep=
ts=C2=A0<br></div><div><br></div><div>Regards</div><div>Isaac T.<br></div><=
div><br></div></div>

--000000000000d7cde305c2153be8--

--===============1206053797099074090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1206053797099074090==--
