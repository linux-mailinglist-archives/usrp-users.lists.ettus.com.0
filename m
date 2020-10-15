Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3488728F282
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 14:40:07 +0200 (CEST)
Received: from [::1] (port=39372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT2Y9-0007el-Dk; Thu, 15 Oct 2020 08:40:05 -0400
Received: from mail-vs1-f53.google.com ([209.85.217.53]:43964)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kT2Y5-0007Y2-CK
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 08:40:01 -0400
Received: by mail-vs1-f53.google.com with SMTP id d19so1377724vso.10
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 05:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=W/kvNbFF8TsEa+yB9w+61UHvd9zX4/JTVaqEndgiMjU=;
 b=NbJVhQnP2U6Y35fJLvioiAS4Rr8f/N20arr0sEOX6zzHJEdlgE/0lspX5xDrl7SOvj
 Z05U+m6DBLqf3V5RhJQ1AIR/UaUiM7CJL0yeUa8fauGqARyu8G9SoEfJE3XTQNJr0QCS
 fD6qUoQLR4GpCVWFFT2k8uepW2u9ASwfqBfsJD0kojYwSJWbsl9JPP+GMuKmvMO5Tx3e
 2I1FKu35haQMePJA1sTDh2zlKVbbj6keA23S6CVdThM8jAeMIsiKzUc171LJQx8k7rcH
 o303MyqWMhMYgjw3F8qXF4AJdbCcDbNL5saezDb+L3nJrdDgTNDIk3caRXIb1hTKGsJ1
 JSCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W/kvNbFF8TsEa+yB9w+61UHvd9zX4/JTVaqEndgiMjU=;
 b=jDuZ6VOk2YQw09uYbP1V1ExH3jcB2kcOfmdnD7hXOxe80gkiH/pTfhi4UJQvlKW6HF
 GES4hWGSm2/w1oRmEAgorNaN5PD73BzmVVXSfBelu4MdI11/FymMomvXIleQnmeNjC8z
 COuV4Wngm79yR40bNGqfAUk95eoNLvR8aqDD4fh0vgeJ3EuCUUlSgi0AFNibhZmq0o3V
 nhLGEMeHJFGZbCAJ1hqC/4yHb1Ipf5aT3MMBZcxuF5EYJFdBxZ5ooiO6TEaa6f9eFhmm
 ucMNkJrDI39gIbNhr2OjDlzf7fOoml0x9sWsvW+/mykyKUDv57/AlLceO9q4qXJb3D9i
 KWMw==
X-Gm-Message-State: AOAM532gAGnG6sjBaHa+kxzDHVEb77hB3l/gobjmNmlU8TvKVLtz/CpD
 dmrZGdQJl1S3idQIgJce4i9yruUW/e6rgR039f/1XZI8jr5Z9g==
X-Google-Smtp-Source: ABdhPJzF6r8inOfxtss+Eln+0uBge9B7PvLy2jh8kTM4485lRrvysVwRywElBhuKQyuj7+O1IgTuljIKl0NoWAtETC4=
X-Received: by 2002:a67:d392:: with SMTP id b18mr2006997vsj.59.1602765560136; 
 Thu, 15 Oct 2020 05:39:20 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 15 Oct 2020 08:39:09 -0400
Message-ID: <CAKx8PBjBPv2RaTDXDExg+GXZH9bxJq6JUwfyfNdVbRS4i+WsiA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Custom SD Card Image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============2500764303077490280=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2500764303077490280==
Content-Type: multipart/alternative; boundary="000000000000dec66505b1b4efaa"

--000000000000dec66505b1b4efaa
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to build a custom sd card image (e310) that has gnuradio 3.8 but
am struggling to figure out how to get there.  I have the oe-build docker
image built but not quite sure how to change the recipes? that will be used
to build the components that go into the image.  I'm basing my steps off of
what is published here
https://github.com/EttusResearch/ettus-docker/tree/master/oe-build.

Is there a version of the sd card image where the install of gnuradio can
occur via pybombs like it could on a desktop?

Thanks in advance,

Ben

--000000000000dec66505b1b4efaa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to build a custom=
 sd card image (e310) that has gnuradio 3.8 but am struggling to figure out=
 how to get there.=C2=A0 I have the oe-build docker image built but not qui=
te sure how to change the recipes? that will be used to build the component=
s that go into the image.=C2=A0 I&#39;m basing my steps off of what is publ=
ished here=C2=A0<a href=3D"https://github.com/EttusResearch/ettus-docker/tr=
ee/master/oe-build" target=3D"_blank">https://github.com/EttusResearch/ettu=
s-docker/tree/master/oe-build</a>.</div><div><br></div><div>Is there a vers=
ion of the sd card image where=C2=A0the install of gnuradio can occur via p=
ybombs like it could on a desktop?</div><div><br></div><div>Thanks in advan=
ce,</div><div><br></div><div>Ben</div></div>

--000000000000dec66505b1b4efaa--


--===============2500764303077490280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2500764303077490280==--

