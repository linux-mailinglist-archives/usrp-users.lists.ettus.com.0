Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 966B6420930
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 12:14:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 313AA383DBB
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 06:14:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T/vnMEzF";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id F2A48383D19
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 06:13:30 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id i84so36296617ybc.12
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 03:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=C4NOg0PZOIkY5UafhZJ9DhaYraYJ/tXy6yk8n8GmmjU=;
        b=T/vnMEzF+4yxAopvPi/YYOciuLeSsV+I7JbLQ2qoG3aBwb8IdFZFZlPMSYq4AiZS5K
         KrYwd5L8lxIcfYL3FZwiOlycGX7qb/EP2rW82kf5Xqyd8TP0LoLDxQeLGYNYlv/eWItI
         2NZRO66w6Sbav2CExOWuHNUvuTCWOMqokQPCBzjwrcI+Rf5rbq8T5Lnkj0CyouC8THHr
         k96+pUNLQdOji/3/iDd3a3ZI8KWZWHxbs0+kr/wqXmjpBsuD//NK8Upctkz+SLRfTnD/
         aSeXA6D7jv9dpO+cIV98NPScYl+bW/mMHRuaZYZjqOlMwlUvLN+eMLxnZDk+Y8vf1brr
         e29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=C4NOg0PZOIkY5UafhZJ9DhaYraYJ/tXy6yk8n8GmmjU=;
        b=Y7gUNEQwBApsYf6HvscQw7wgGQ7Ykthdkxej/8yMQmrD/JuIUJn1U/TAJGKbzWljNU
         t2+S8Mz9KVeL4/ZBQ45mXz9elZXCXcx2HvMi5ULSup168G4aGTyqqZsDWSe8VPkmZiQZ
         j3juiY1E5KsExNawO1Gh548wsl0O+BdTHr1o4V2/HMKVse1fyecvYep61k3C0Z1D2lku
         InHWixZRZWXhASuVRmOt1UKnSDOJxcvg0mUlkZb7CiSHDaSoQ+gv00e7RW8NnV1+1zG4
         ah+fAFyTEQBRjQ6ns45CuIhsYVMRmcPVrdJn6ZfkF0nyLBZipBKUAcGrcaX1XYDIOC0M
         SLCg==
X-Gm-Message-State: AOAM532rEKG+Zv7GSszjq5OQU6WlkYQJTYWZh7v9g3WwoLoNopVwUf/L
	mPIIt1I0zL9O6x+LUdOJEXdr812js1CNxrKHLhp2rczW
X-Google-Smtp-Source: ABdhPJw679BvEb/wrKXb+LPO7wF91mapJyqP04SL+Mj0tKiE3PD/mqocl361A6w297PIbqPEwwOCe8yuKGdkEsx+lIs=
X-Received: by 2002:a25:3142:: with SMTP id x63mr12636133ybx.99.1633342410290;
 Mon, 04 Oct 2021 03:13:30 -0700 (PDT)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Mon, 4 Oct 2021 13:13:18 +0300
Message-ID: <CAHqKquxikMusGTodb+hEMtUwpdxAu=QXSvgFtSNWU4DsUkZiRg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OAP24JZFJ7PKQE24HUVNDZEN4ZODRBLO
X-Message-ID-Hash: OAP24JZFJ7PKQE24HUVNDZEN4ZODRBLO
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OAP24JZFJ7PKQE24HUVNDZEN4ZODRBLO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5486597170825544440=="

--===============5486597170825544440==
Content-Type: multipart/alternative; boundary="0000000000002977f705cd842aa7"

--0000000000002977f705cd842aa7
Content-Type: text/plain; charset="UTF-8"

Dear USRP users

I have been working on USRP B210. However, every time I try to put the
following comment "uhd_usrp_probe" I face this message "fx3 is in state 5".

Even when I try to use gnuradio for transmitting files to another SDR
device I faceD the same problem.

I would really appreciate your advice on a solution or the reason for such
a problem.

Thank you.

--0000000000002977f705cd842aa7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr" style=3D""><div dir=3D"ltr" style=3D""><=
font face=3D"sans-serif"><span style=3D"font-size:12.8px">Dear USRP users=
=C2=A0</span></font></div><div dir=3D"ltr" style=3D""><font face=3D"sans-se=
rif"><span style=3D"font-size:12.8px"><br></span></font></div><div dir=3D"l=
tr" style=3D""><font face=3D"sans-serif"><span style=3D"font-size:12.8px">I=
 have been working on USRP B210. However, every time I try to put the follo=
wing comment &quot;uhd_usrp_probe&quot; I face this message &quot;fx3 is in=
 state 5&quot;.</span></font></div><div dir=3D"ltr" style=3D""><font face=
=3D"sans-serif"><span style=3D"font-size:12.8px"><br></span></font></div><d=
iv dir=3D"ltr" style=3D""><font face=3D"sans-serif"><span style=3D"font-siz=
e:12.8px">Even when I try to use gnuradio for transmitting files to another=
 SDR device I faceD the same problem.=C2=A0</span></font></div><div dir=3D"=
ltr" style=3D""><font face=3D"sans-serif"><span style=3D"font-size:12.8px">=
<br></span></font></div><div dir=3D"ltr" style=3D""><font face=3D"sans-seri=
f"><span style=3D"font-size:12.8px">I would really appreciate your advice o=
n a solution or the reason for such a problem.</span></font></div><div dir=
=3D"ltr" style=3D""><font face=3D"sans-serif"><span style=3D"font-size:12.8=
px"><br></span></font></div><div dir=3D"ltr" style=3D""><font face=3D"sans-=
serif"><span style=3D"font-size:12.8px">Thank you.</span></font></div></div=
></div>

--0000000000002977f705cd842aa7--

--===============5486597170825544440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5486597170825544440==--
