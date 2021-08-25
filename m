Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6CC3F6D16
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 03:23:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3796E3846AB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 21:23:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B8w0mhL6";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D74638463F
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 21:22:59 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id k12-20020a056830150c00b0051abe7f680bso46206252otp.1
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 18:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=DzpaRp/ASxBBlj302Hs/wax00hpdGpYbV0IJUz3eyiY=;
        b=B8w0mhL6CNOrgD3dJYv3yOgScKWxg/LT5AzK5ilvQb+rxM34j+biML12rqRxfns7Hc
         Vyk3MRdSJIKixmptZrC/B9oXYZgs/8DR92BTQRfycEOtH1P8oB9miuCSJ0l09F34nRJy
         isi/f0x/VW2JXNKuZutf3FPafYlHhWXytpgra0p98YyOAWpq+CfLoFsozy9p4w1Zv1hg
         5wDZNnbqeWFlhITvFqoyJA5zKRA0nf3OvWWCPNqgjgSDYGrDqu73j1Y9PtPphKnjoMJ+
         xyQh1wvfwezm66QhA3YX/8Bcn5hCOHwfvuyzPxPgLB8gBMM/OtVTQtHMqQjQ/sX7R0Qq
         jspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DzpaRp/ASxBBlj302Hs/wax00hpdGpYbV0IJUz3eyiY=;
        b=qtrigJjhmJJm6DusPfqcli/41go39j0IyFywS8weF97JNNXUz4dxnZzd4KGIgGeLUc
         UUWAm0GqjWpBwfmn0jJKgQ0wkHNiPF5NbN0c8Ph/A228o1hepJTIMQ9ABlwFziDzjBkH
         aJgwlBTOjC04V4TJIO6f6RaSYCLL6nXj8i4MSYakNKrMG3DJkYzyHodffa77fagFfFfu
         r0Hs9YhTXDX2BDn8acecPu9DTRyPKdcZ1xaWKmoswrzOWqhUUAO30qeMbN2Hvp8ObSeo
         WIZFEV3RY6JCqxXOQK9eLyUBMd6s9ekED0bmBrxo/8YHco61akZkb07/wDPT3sqAdQmx
         MpJg==
X-Gm-Message-State: AOAM532jYC+6mlgJS6UoPIp8CX46eePu8sed2mEmYCbQ7Iz1jBuLBFSQ
	SQaw79QUAE9bEO1Bhe91WQ1DagKGdzeQT5bX7/E5Iz41
X-Google-Smtp-Source: ABdhPJw5bAGZaMYkZLP2TDMvuzu0Oa46kcYw38FedjLvcomaHMvaDt5tRRqhD5aVI4jHfNjdEW/5AtYwypn+Xb0tlG8=
X-Received: by 2002:a9d:7618:: with SMTP id k24mr34209476otl.235.1629854578173;
 Tue, 24 Aug 2021 18:22:58 -0700 (PDT)
MIME-Version: 1.0
From: Boris Marjanovic <bmarjanovic@gmail.com>
Date: Wed, 25 Aug 2021 11:22:46 +1000
Message-ID: <CALTvoPuaO4nPz4-_Gih4U+M9wbQ-UjLEUx4ZqjGb6itXmA9g7g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YXGPUTMRYCGWMKMCOATS3O3H3TVDGCD6
X-Message-ID-Hash: YXGPUTMRYCGWMKMCOATS3O3H3TVDGCD6
X-MailFrom: bmarjanovic@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc modtool for GR 3.9 UHD 4101+
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXGPUTMRYCGWMKMCOATS3O3H3TVDGCD6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1665602455538889526=="

--===============1665602455538889526==
Content-Type: multipart/alternative; boundary="0000000000002aead605ca5817c5"

--0000000000002aead605ca5817c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking to move a block to rfnoc implementation. We use GR3.9 and UHD
4.1.0.1 (hopefully even newer once B200 issues are rectified)
Going through github and ettus knowledge base, there does not seem to be
support for GR 3.9. The most recent branches are master (expected =F0=9F=99=
=82) and
maint-3.8-UHD4.0

Considering 3.9 is using pybind instead of swig, I guess the update is a
bit more involved. Does anyone have an estimate when it will be available?

In the meantime, is there a set of steps/instructions for setting up rfnoc
OOT in GR3.9 manually

Thanks & Regards
Boris

--0000000000002aead605ca5817c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m looking to move =
a block to rfnoc implementation. We use GR3.9 and UHD 4.1.0.1 (hopefully ev=
en newer once B200 issues are rectified)</div><div>Going through github and=
 ettus knowledge base, there does not seem to be support for GR 3.9. The mo=
st recent branches are master (expected =F0=9F=99=82) and maint-3.8-UHD4.0<=
/div><div><br></div><div>Considering 3.9 is using pybind instead of swig, I=
 guess the update is a bit more involved. Does anyone have an estimate when=
 it will be available?</div><div><br></div><div>In the meantime, is there a=
 set of steps/instructions for setting up rfnoc OOT in GR3.9 manually</div>=
<div><br></div><div>Thanks &amp; Regards</div><div>Boris<br></div></div>

--0000000000002aead605ca5817c5--

--===============1665602455538889526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1665602455538889526==--
