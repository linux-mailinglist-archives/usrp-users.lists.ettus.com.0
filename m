Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE15947A25
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 08:39:42 +0200 (CEST)
Received: from [::1] (port=52040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hclIj-0007cY-Db; Mon, 17 Jun 2019 02:39:33 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40163)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1hclIg-0007YR-19
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 02:39:30 -0400
Received: by mail-ot1-f49.google.com with SMTP id e8so7264473otl.7
 for <usrp-users@lists.ettus.com>; Sun, 16 Jun 2019 23:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=a9MaMttKY84pSctHOAuJgkqbEvAqsx9r1+hueicJY80=;
 b=CBj4cVwrGfsW24Vzw0Apgl7i0kfOUldj5ylH9SQhoUA6XsiDl5hARDbYhXS649gckW
 wjydOL0tAEGOrV5ZJ/7MkyW0YYrkZWb70tbxTFJIQhEwWXxpuXiNnFj7VABdROuaHp6j
 OGhFfOw/8OpK37M8/boo42zOLa2moo5c0YzX6tepSbiqULBqKgGIzEM+R09WtfuK31cS
 b66BSGnjHkP/89z02n5zGB8iIDduUEPsBYhfMig2t1BSLD47wpL/EQJu2O9dz/iE1PrB
 IytPj2UQKDmWI9zfba5Ysl7YNFx5UPGDZptWo1BPEztKnUTCybV+sSd5oOI6bVQYzBo3
 8L6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=a9MaMttKY84pSctHOAuJgkqbEvAqsx9r1+hueicJY80=;
 b=rrF6NDE2Eo40xr8hYaNYcxfhhIBQ1onP6Bc8dXu0Moeg1Gbud/5eYYjDla03g43xhu
 J5z9NwDKeXmSonuUG0MsHBJaoZJaxyW0tGbj4qvCFJjQB+PvZIyEZjIipZ2esVtOwSph
 eK1vSqtOW/dDc3aq14vN+WYSFJwPK68YpW3JLYv42byElMe1ZixksrN3pq8y4ExHLSDM
 qixKJhi7AzCt5HL1EocYZ5lJaeePiYD0wi0niq0Qx4UERGamUhpca0QX/om3jmwM4Kwv
 cUWDzMV76xM2alMc+gsZKP/ErukInQFVtPoXoVjp4n1McmkBGaO0JH4g/u7Bn7BedWS+
 5QXQ==
X-Gm-Message-State: APjAAAVh9VwUjHrjDpo8Mw2mC82uAkB4R2Q4NEB0QS+fSNFM9mC6WJ9h
 H0EP3xNa+e6OWYqXVENNY0wK2Dv8Uax+GBX0d4qHJj4N3tc=
X-Google-Smtp-Source: APXvYqxCWWhmuUGV4NDfi5BSnmN+PL1numsfFinC0uaBvPJPcxqkWPp8nkOAcIxwEhiVSSRDDK0N7aVBS29JUFCiBmM=
X-Received: by 2002:a9d:3675:: with SMTP id
 w108mr55761528otb.271.1560753529019; 
 Sun, 16 Jun 2019 23:38:49 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 17 Jun 2019 09:38:38 +0300
Message-ID: <CAKA0MUh7YvcFKaHvxa1zuW62L37O0emMw2L3VzNE4S7vu2wYHg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Getting interval between samples
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Content-Type: multipart/mixed; boundary="===============0254223078138348122=="
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

--===============0254223078138348122==
Content-Type: multipart/alternative; boundary="000000000000ade1ed058b7f3f8e"

--000000000000ade1ed058b7f3f8e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Recently I have been trying to figure out how to get the sample interval
(in nanoseconds) on my USRP b205mini device that is coming from the radio
IC. In regards with this, I would kindly ask you for assistance on the
following questions:

1) While browsing the Verilog codes, I found out that a clock of 40MHz DDR
is used for reading and writing to the AD9364 IC. When the =E2=80=9CUSRP Si=
nk=E2=80=9D
block in GNU Radio is active, does it constantly poll at 40MHz? My initial
intention was to write a separate counter block in Verilog to get the
interval between the samples but if there are no stops/wait event on the
bus, can I use this as time reference?


2) On the block diagram of the b205mini, it is mentioned that the DDC and
the DUC are integrated in the FPGA. I have two questions here:

- I couldn=E2=80=99t find them in the top module, so.. where is the exact l=
ocation?

- Is there some way to read the samples directly from the RF IC, before the
DDC?


3) About the UHD interface =E2=80=93 are there any examples on how to inter=
face my
own block with my own registers via the USB?


Thanks in advance,
Varban

--000000000000ade1ed058b7f3f8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
=09
=09


<p style=3D"margin-bottom:0in;line-height:100%">Hi,</p>
<p style=3D"margin-bottom:0in;line-height:100%">Recently I have been
trying to figure out how to get the sample interval (in nanoseconds)
on my USRP b205mini device that is coming from the radio IC. In
regards with this, I would kindly ask you for assistance on the
following questions:</p>
<p style=3D"margin-bottom:0in;line-height:100%">1) While browsing
the Verilog codes, I found out that a clock of 40MHz DDR is used for
reading and writing to the AD9364 IC. When the =E2=80=9CUSRP Sink=E2=80=9D =
block
in GNU Radio is active, does it constantly poll at 40MHz? My initial
intention was to write a separate counter block in Verilog to get the
interval between the samples but if there are no stops/wait event on
the bus, can I use this as time reference?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">2) On the block
diagram of the b205mini, it is mentioned that the DDC and the DUC are
integrated in the FPGA. I have two questions here:</p>
<p style=3D"margin-bottom:0in;line-height:100%">- I couldn=E2=80=99t find
them in the top module, so.. where is the exact location?</p>
<p style=3D"margin-bottom:0in;line-height:100%">- Is there some way
to read the samples directly from the RF IC, before the DDC?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">3) About the UHD
interface =E2=80=93 are there any examples on how to interface my own block
with my own registers via the USB?</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0in;line-height:100%">Thanks in
advance,<br>
Varban</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>

</p></div>

--000000000000ade1ed058b7f3f8e--


--===============0254223078138348122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0254223078138348122==--

