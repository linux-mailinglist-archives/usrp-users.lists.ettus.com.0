Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FF73761F1
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 10:28:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2FB43843AE
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 04:28:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kJZwE8xE";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2141A384383
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 04:27:13 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id n15so4613359edw.8
        for <usrp-users@lists.ettus.com>; Fri, 07 May 2021 01:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JRnvzJNagCVS29rVrT03XkfMiYPcgZATsENmIAZ2Tns=;
        b=kJZwE8xEk9h+/0kvWmuw0hopWqBFpHv1P480YnSMaIM/Xab/heO0QEhFDSYyZTi9Mn
         OjZ97NNvMGUZf4mzgdEzJqr8pDVNgntsRF0MlO/efmCyy1RstTSa3OmgiV4FtDQ5TLWS
         r44R+9lbjPTCzhjLlGU+4mGnGdbYVZiH1NgwawEkcQt+LfIHXOt1w0twcT3iai2F6IMZ
         b/1R68I3QAf8vjmUjrDidACtCxVPjj1n3/hUnQVA7gdbDi08qdH9Up+QuNfUs1l2W4DX
         +6oj5d2vMah3uJp/e3oFUsIDA6Fp0bG5wA9brVzl3Er2COsDTRHJfZEmWRYkBND8qksV
         QvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JRnvzJNagCVS29rVrT03XkfMiYPcgZATsENmIAZ2Tns=;
        b=Y4wWfCDNwsqx2GUKy6nOg5sEEpoxdy+u7Udfd8QirXFXP445XVLNEexhG/7r/n3k3q
         U8kSGCVyw5cDajx95gh6CxyGGpMIpB1ZH0Rho7Ct5/5bH/hrJ2vcTFSixrE2LnWdxkYp
         u5Lb62GYDwudYlTtqh0M9zQ/g3xuzvpR8ucFqJWLtcilOYJjRerYP8B+WDtpmOd0l5uT
         vjInriDguXkUq55asy45wPdcvTgOwJRrf/ywmMexYt6478NatOENT55dONflzaktML4U
         aAbf+EZwQcf8KJkniEAIao35wJ7IhsJDGWAElzJUnyC2xQmXxe6Hjl4L0CVd31+bKClm
         pi/w==
X-Gm-Message-State: AOAM530OUiSuUQDVr4c5/lqmJprQN0CYATTSn1Zp47eGKVWXOI1BFJkJ
	G31//e2dxcge06TNcG9MG4Ml30SSkkJctn+5xOn8HwpFIUOvOw==
X-Google-Smtp-Source: ABdhPJy+NZsmyT0s6YT9g4jpTQwU/E95PCe1SL/gMt1KnVM0PNN+l+jEHluCTd1waM4cfUgplgppnZ7EguN4uay10bI=
X-Received: by 2002:a05:6402:350d:: with SMTP id b13mr9985383edd.21.1620376032813;
 Fri, 07 May 2021 01:27:12 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 7 May 2021 10:27:01 +0200
Message-ID: <CAG16vQWJRMsKuzDveuxR=bHYDUZoLrLyq+FqUr5kGPE9GuUNFA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XZRJ7BFRLJE2E7IEH5KM3CPY4JG5R42R
X-Message-ID-Hash: XZRJ7BFRLJE2E7IEH5KM3CPY4JG5R42R
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Aurora default image in USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZRJ7BFRLJE2E7IEH5KM3CPY4JG5R42R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9101080187054896897=="

--===============9101080187054896897==
Content-Type: multipart/alternative; boundary="000000000000d6a46005c1b9315e"

--000000000000d6a46005c1b9315e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to load the Aurora default FPGA image in USRP E320 but when I
make uhd_usrp_probe I'm getting the following error:

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
RfnocError: Specified destination address is unreachable

I am using UHD 4.0 and 2 connections, one for data streaming on the SFP+
and another for management through ethernet 1G.

I haven't found that error in the lists. Has anyone tried to load this
image successfully?

Kind Regards,

Maria.

--000000000000d6a46005c1b9315e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m trying to load the =
Aurora default FPGA image in USRP E320 but when I make uhd_usrp_probe I&#39=
;m getting the following error:</div><div><br></div><div>[ERROR] [RFNOC::GR=
APH] Caught exception while initializing graph: RfnocError: Specified desti=
nation address is unreachable<br></div><div><br></div><div>I am using UHD 4=
.0 and 2 connections, one=C2=A0for data streaming on the=C2=A0SFP+ and anot=
her for management through ethernet 1G.</div><div><br></div><div>I haven&#3=
9;t found that error in the lists. Has anyone tried to load this image succ=
essfully?<br></div><div><br></div><div>Kind Regards,</div><div><br></div><d=
iv>Maria.</div></div>

--000000000000d6a46005c1b9315e--

--===============9101080187054896897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9101080187054896897==--
