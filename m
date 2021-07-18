Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A493CCA01
	for <lists+usrp-users@lfdr.de>; Sun, 18 Jul 2021 19:17:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 723DC383DBC
	for <lists+usrp-users@lfdr.de>; Sun, 18 Jul 2021 13:17:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="Eh40dbNd";
	dkim-atps=neutral
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C8B8383D97
	for <usrp-users@lists.ettus.com>; Sun, 18 Jul 2021 13:16:09 -0400 (EDT)
Received: by mail-lf1-f53.google.com with SMTP id f30so25572692lfj.1
        for <usrp-users@lists.ettus.com>; Sun, 18 Jul 2021 10:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=eBv9JRWKEpk79N417d8qHBAoOh/5cbWC1alxoLT5wZg=;
        b=Eh40dbNdpmWoly+3rN2xFva8bwT3IPR8Z697oOkDR0L5vHqr1TytC10h/crOg9Y4u7
         CmHfoypMCLd5NTw6RRCOhRfXevPoG5cYzecbmo+iFotbG6z9DHB4IHyp4VxvXQYzB6Oj
         eY6Hzv2ncjsqYjstS96p5nsEu02QZ3b9L8yNyushAOEP62LVLfoLEm4KMHdk7pdqGdSE
         heFfJUOXr24veU+PboPqMng1aPAVcHYi8ngoLQJs1tlLXLohS3TgYrLZn5EcGyvtzyqu
         yfXpBHXxW/9cpxVuJnNJh14zDGx3IUQlwvsRx2GTi65L6vxCtTYXs85Q08oejdJ+mKry
         68qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eBv9JRWKEpk79N417d8qHBAoOh/5cbWC1alxoLT5wZg=;
        b=kOhVxAczyHF0JJgermq+5N1yh48Li3A19STvvKbNTDynKiKcR/7VZd8mTtl08mfZw/
         rCUYB7+52GfZ/yu+klIh1dNyi8Di8SC0g82q4hoptCCk4tXOa3/y7UVbeyTg58PTD18m
         lvgGyYk6r9DuO5prbqj0TvTicOYwOet32IT4OSEbzrttz3Edo+MdgNWhGJ4+8RNcLeT2
         ksH92kk1IMTdEpl5XjQLIaU20UHkbiqqUSPnarb6hcvr567q6s30rpCbcg5np4FuNxwK
         9UMc2J4BuOhwnVd0uJncwOKNm9Z8HW/UdPgW4Kvg/SdtI1bk9Tj2TReUQi1G8snoPJ65
         /rbA==
X-Gm-Message-State: AOAM533ZDoH91p4TmAfSzhBmbMKzhTfePcpvFK89nC9FHoG0OYzApGY+
	+nVBSPeJ4UFRHw9T0bsJwBWWb3zEAeAR9aRXeMq8WTMh3DfXgQ==
X-Google-Smtp-Source: ABdhPJykTRvV8vq/cuOUGxT6g78p4+aB3uKADfKmd9ZDx7RAKZk1tuu2PAjqM85BnJZwgiYCfan5ZtQOJmB+o70TFjo=
X-Received: by 2002:a05:6512:3708:: with SMTP id z8mr15005786lfr.416.1626628567751;
 Sun, 18 Jul 2021 10:16:07 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 18 Jul 2021 19:15:55 +0200
Message-ID: <CADjF3PxXuL43b3kwn-Q148Wc4J+baz4buf0+wpE1Cf1vpsfQgw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Z4D7VZN2JN5LCRFBYF7UAMIVSC6N3BOM
X-Message-ID-Hash: Z4D7VZN2JN5LCRFBYF7UAMIVSC6N3BOM
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] The relationship between buffer, samples per buffer and packets
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z4D7VZN2JN5LCRFBYF7UAMIVSC6N3BOM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============7509807614183407253=="

--===============7509807614183407253==
Content-Type: multipart/alternative; boundary="000000000000f673a505c768f9f4"

--000000000000f673a505c768f9f4
Content-Type: text/plain; charset="UTF-8"

Hello all,

Having done some simple bursty transmission with the UHD source code I've
become a bit confused by the relationship between the buffer, samples per
buffer and packet.

My simple C++ program is an adaptation of the tx_bursts.cpp where the
parameter spb is retrieved from the *get_max_num_samps()* function, spb
tends to become around 2000. My modulated signal which is around 8000
samples long is then transmitted in several bursts until all samples have
been transmitted. This works well but I've seen in other uhd examples that
spb is set to 10 * *get_max_num_samps()* or to whatever the user dictates.
The function itself is described as "Get the max number of samples per
buffer per packet." This brings up a few questions:

   - Can spb be set arbitrarily of what *get_max_num_samps()* returns?
   - Is there a maximum buffer size?
   - What is a packet defined as?
   - Can spb be greater than the size of the buffer?
   - What is the purpose of using *get_max_num_samps()*?

I guess I'm trying to figure out if I can transmit longer modulated
sequences without breaking the transmission up in several bursts.

Best regards,
Martin Elfvelin

--000000000000f673a505c768f9f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello all,<br><br></div>Having done some si=
mple bursty transmission with the UHD source code I&#39;ve become a bit con=
fused by the relationship between the buffer, samples per buffer and packet=
. <br><br></div>My simple C++ program is an adaptation of the tx_bursts.cpp=
 where the parameter spb is retrieved from the <i>get_max_num_samps()</i> f=
unction, spb tends to become around 2000. My modulated signal which is arou=
nd 8000 samples long is then transmitted in several bursts until all sample=
s have been transmitted. This works well but I&#39;ve seen in other uhd exa=
mples that spb is set to 10 *=20
<i>get_max_num_samps()</i> or to whatever the user dictates. The function i=
tself is described as &quot;Get the max number of samples per buffer per pa=
cket.&quot; This brings up a few questions:<br></div><ul><li>Can spb be set=
 arbitrarily of what <i>get_max_num_samps()</i> returns?</li><li>Is there a=
 maximum buffer size?<br></li><li>What is a packet defined as?</li><li>Can =
spb be greater than the size of the buffer?</li><li>What is the purpose of =
using=20
<i>get_max_num_samps()</i>?</li></ul><div>I guess I&#39;m trying to figure =
out if I can transmit longer modulated sequences without breaking the trans=
mission up in several bursts.</div><div><br></div><div>Best regards,</div><=
div>Martin Elfvelin<br></div></div>

--000000000000f673a505c768f9f4--

--===============7509807614183407253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7509807614183407253==--
