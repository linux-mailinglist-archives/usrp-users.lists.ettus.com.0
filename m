Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F223813D25
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 23:21:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58564384FCC
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 17:21:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702592462; bh=1mHnCJp0u2gMEPJhLDA4JnejFFM645XlepEGzAy/zNQ=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=pJeShiJaNChO5CK8zzsByMrlQWZKKAD7lzffdWY83NqCXYJYg+kYkg2eKDCVxxj9Q
	 3dpZoeiJ1hVaXwQPjmQo3ZmwgSH6u+fNjawVr/m/HMzC0Re/rjgkNt3mZty0kCmH/a
	 lVT3go8Y+hCDPuw6wHCkOdPDaYsJIXnZ1zxwGEz046HXNyAoXpVezy+8b0ZvUTG3iC
	 SP+8YubtOy8eBf1vNJUnVVC6o9zbvvR1/s3O4RrDiBMyAz+MFIM7qoXHQ5OHnNz0VB
	 qCPYy7r3nkz9IJxee0YbeM4glGjDVmrPB3q+/4ieRB6MkZmjFEq5W1MPcukI1SBf9u
	 uMLiTOF01FcLg==
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 47B29383B15
	for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 17:20:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="cMFN2Elp";
	dkim-atps=neutral
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-58e256505f7so53248eaf.3
        for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 14:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1702592456; x=1703197256; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YYIxABogUadcDMOAKxhGLcWr+9NkufhweReSMELZEx4=;
        b=cMFN2Elpkdy23dWxtLUjV8hlP8yi9hltqzaddkfHQuMUsys0GwZFUpUmWZBm9HGWfo
         ywTtCkIISyawbDLA8TdsicNz1s0u6nCFA6oa+U7T7JM3QOU9+211EuwCwsuLqgXxGAmo
         zaAM6nOKc49t3F2HkXpSQafP46Yah28/gX4M7bM2AbG6MryZPuInY4g/U520mezxjA0P
         31mfnFgLGnp02JVuUHYWzQT0hdetxzBMEih2SKTrMIBGBnwmtCo2M4szUsAQzF97p8eM
         OlyvlBt98/S8wMr6j2oCh6VPL2IqnAwv4dGcMr03258ESRLCR1PHmaL+J6WSP0vRCJ6L
         /fCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702592456; x=1703197256;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YYIxABogUadcDMOAKxhGLcWr+9NkufhweReSMELZEx4=;
        b=m2oMGaJq7vG3gebvGij1ilr8kxOK1Nno/DoMDxPm8OA878Hw/5Nlhf6M2FTw2te9wh
         ifemTqeOEK13OXheLfw0wFOvp6XAn7HuInbgQlk3ViYsvqCveWeA2fTzg4MKBdu13CRI
         Kpoqj5dTHikNdDZYTysGKDySYkp1RDfOdXhZJXzdfmhlUZf24ewl9k3aiv3kI5ldJekz
         T3F/NXz+R3tPrrvpkz1r4v6owGxbNdsz3OkwGECPLieE3wQn5m/ZUBPCHSlq8c9vKGTi
         Q+K0N1dzsy4VMMZOO52JNC37+S6E7F0L/651JwEfiBUZjehDcObxvOYDTUbWGHfIwJ7S
         /xhA==
X-Gm-Message-State: AOJu0YwA4aioe5rKo0CvJpq9a95Ar2thW411u50l/KUcL/1UQp8Pmzo4
	yhjaFvsZ3nx2iMlg1n/MC5r47paGHbClsk643zLVSkgt5LfOsea7Da4=
X-Google-Smtp-Source: AGHT+IHuPeB4XpfnGfFRTbe1afe2a4qtc62gXSSeGrkeLz3qa2TF3roYvrXPpnx0nQghpqUfhmqvLlZE64T8camKl/M=
X-Received: by 2002:a05:6358:3417:b0:170:ec2e:4367 with SMTP id
 h23-20020a056358341700b00170ec2e4367mr5772399rwd.1.1702592455324; Thu, 14 Dec
 2023 14:20:55 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 14 Dec 2023 17:20:44 -0500
Message-ID: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: LLQUHQYDH2PG4TLV6ANBWVNC2IAVBK3H
X-Message-ID-Hash: LLQUHQYDH2PG4TLV6ANBWVNC2IAVBK3H
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Change UHD Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLQUHQYDH2PG4TLV6ANBWVNC2IAVBK3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============4024783142946424817=="

--===============4024783142946424817==
Content-Type: multipart/alternative; boundary="0000000000007fca40060c7fb214"

--0000000000007fca40060c7fb214
Content-Type: text/plain; charset="UTF-8"

Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to Ubuntu
22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect to my
USRP x310s via "*uhd_find_devices*." I can only PING them, and I can only
communicate with them via UHD when explicitly stating the IP Address of my
USRP. I was able to communicate with the devices via UHD v

While troubleshooting what is blocking the traffic with my IT staff, I am
trying to change the UHD version from 4.5 to UHD version 4.0 to see if it
changes anything. However, I do not see any instructions on installing a
different UHD version. I installed UHD from source following the NI build
guide (https://files.ettus.com/manual/page_build_guide.html).

Please assist.

V/r

LoyCurtis Smith

--0000000000007fca40060c7fb214
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Since Ubuntu 18.04 is EOL, my school upgraded my lab =
systems to Ubuntu 22.04. Since upgrading to Ubuntu 22.04, I have been unabl=
e to connect to my USRP x310s via &quot;<b>uhd_find_devices</b>.&quot; I ca=
n only PING them, and I can only communicate with them via UHD when explici=
tly stating the IP Address of my USRP. I was able to communicate with the d=
evices via UHD v <br><br>While troubleshooting what is blocking the traffic=
 with my IT staff, I am trying to change the UHD version from 4.5 to UHD ve=
rsion 4.0 to see if it changes anything. However, I do not see any instruct=
ions on installing a different UHD version. I installed UHD from source fol=
lowing the NI build guide (<a href=3D"https://files.ettus.com/manual/page_b=
uild_guide.html">https://files.ettus.com/manual/page_build_guide.html</a>).=
=C2=A0</div><div><br></div><div>Please assist.=C2=A0<br clear=3D"all"><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763"><br></fon=
t></div><div dir=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=
=3D"background-color:rgb(255,255,255)"><font color=3D"#073763"><br></font><=
/span></div><div><span style=3D"background-color:rgb(255,255,255)"><font co=
lor=3D"#073763">LoyCurtis Smith</font></span></div></div></div></div></div>=
</div></div></div>

--0000000000007fca40060c7fb214--

--===============4024783142946424817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4024783142946424817==--
