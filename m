Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 098A64EF1D3
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 16:41:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E80D538418F
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 10:41:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648824106; bh=PokXY0Yx3fj3+DGBwpWpYtARmPh2ZGBtoAjdGb4IH3A=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KpZYhsCpO5WavL82XiuWk3RfK1wgTNU/m1rLgnZfa3YfmQwHeQ+IJ3WcX89cZP3T7
	 vu9oCzFggrKgKFgEh5oeT93eaCBZ6DGgOCbZ73GorQI6m3UJQxNr0PDyC2FE7IRE3Z
	 DhKGybAr61kjSRk8PJgQUUnrJclTv5gEwncSLYZQt41j2On2DYLYfiOTDGoisgAvT2
	 gPoq0zdZpG57bBGHnMaF9Pz5oUiFYGCMV/XT2xxKVNtmEMpWEveXtemkRzVzP229Zi
	 KHNognUbeUUe5yvQeMow4j578Ux07lSsdUpdZ0bIRrmZB/1FVhXq5KUWDrH7ibrp9Z
	 etmcClP1OG23g==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 13597383FFB
	for <usrp-users@lists.ettus.com>; Fri,  1 Apr 2022 10:40:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="KEBe52CO";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2e6650cde1bso34815857b3.12
        for <usrp-users@lists.ettus.com>; Fri, 01 Apr 2022 07:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=R0P29iZS+O0lS8epS2G76132efPxQfXaV878chRkCxg=;
        b=KEBe52COn7kZApMxtnyChkzdQ1aXcJ1H0UJb0G/kJv2uk7fWMIZLEAGjiXyy7Y2gVF
         JZjrI8/z7Rei6/20MZrrUoIrjMleKq5GQa34d6ySVODMJk3x4ixHzqmE3lc3BBC211N8
         +Y93Qg1Iac0ob2k4ofgrx15Ca4HmVPVf7OoY0PNsZc0ziujjUGoDyJiQD5rrJpaXh03M
         BGzUqesDeHlQNYGc0gPRLeM/sHWkIb1pnMG+qXiuJKfG2gznwKaWqFivCgMu+L2AC5G5
         mMA8M9F5c8r5GE6FfR/Ng4/fj/iL0owPvRloWU65vUIAUq2eZCvYcpcPsk0XLpNb4AXp
         j2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=R0P29iZS+O0lS8epS2G76132efPxQfXaV878chRkCxg=;
        b=0nsEgJKa6KQNNaUzjtBWAVr2ZRpxVqp8ZLVibZdk0xMESsBjWRyVE7aSFOPJeCDATX
         pE61tYtfohcwXY5OpNWmHtmNwfQ2No6qyonyNOGGjxr80aD4vUXSX/LOKpRQrSg94/fM
         BXHBMYCgyj8KH1vFPPPfMTNvYMUzoA1ZPJjjhlvFqZ1sH11YwXTUQOl0n0UxbUzmtT5g
         okH++AH5iAmPhi7zPmsrVyhP3CaeRb28o4fq7anl4UPm7AbEv8J+Pz2mbnXirAGZsgWS
         495QCgDnEIS5ApM5DCkrGSjTxo+G/aIsRqZlDimvVT+uwgDNcAUL6p0K7Nies7Hp6+Y1
         HWzw==
X-Gm-Message-State: AOAM5303BuDfysbMVDrtnBfg6IzktJgDvjHPaeUq3Bw6t/jAviOqnfrV
	vsFcmZVROMrZLxAjyg7n37ZTtnvDhUt1pN9uw0Y5rk+wGg8=
X-Google-Smtp-Source: ABdhPJwhVZcc7SdWqZCSejWYZhK6+W3mErJ8bIxYUCycgRH8QxMEpMDuEBuS70v0ic/VhhtLdb5iz10idhC994QDbV4=
X-Received: by 2002:a81:7983:0:b0:2e5:9d0a:1c52 with SMTP id
 u125-20020a817983000000b002e59d0a1c52mr10012134ywc.411.1648824047049; Fri, 01
 Apr 2022 07:40:47 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 1 Apr 2022 10:40:36 -0400
Message-ID: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ISNK43DNM7TCVSOBJQZJOONGYJ67M7NC
X-Message-ID-Hash: ISNK43DNM7TCVSOBJQZJOONGYJ67M7NC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISNK43DNM7TCVSOBJQZJOONGYJ67M7NC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5452830842711350627=="

--===============5452830842711350627==
Content-Type: multipart/alternative; boundary="0000000000009f6dd105db98c35d"

--0000000000009f6dd105db98c35d
Content-Type: text/plain; charset="UTF-8"

Hi,
I am trying to copy some large files (~500MB) from the N310 to the host.
The transfer rate I get using scp or sshfs (mounting in either direction)
is about 12MB/s. Given that the interface itself can do >100MB/s, I'm
wondering if there is a faster method. One thing I tried was to setup a RAM
file system on both the N310 and the host and copy from one RAM file system
to the other. But, still no better than 12 MB/s. Any ideas on faster
transfers?
Rob

--0000000000009f6dd105db98c35d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am trying to copy some large files (~500MB) =
from the N310 to the host. The transfer rate I get using scp or sshfs (moun=
ting in either direction) is about 12MB/s. Given that the interface itself =
can do &gt;100MB/s, I&#39;m wondering if there is a faster method. One thin=
g I tried was to setup=C2=A0a RAM file system on both the N310 and the host=
 and copy from one RAM file system to the other. But, still no better than =
12 MB/s. Any ideas on faster transfers?</div><div>Rob</div></div>

--0000000000009f6dd105db98c35d--

--===============5452830842711350627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5452830842711350627==--
