Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CEB24E676
	for <lists+usrp-users@lfdr.de>; Sat, 22 Aug 2020 10:59:15 +0200 (CEST)
Received: from [::1] (port=60330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9PMk-0005uu-Cz; Sat, 22 Aug 2020 04:59:10 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:43758)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1k9PMg-0005pi-Ue
 for usrp-users@lists.ettus.com; Sat, 22 Aug 2020 04:59:07 -0400
Received: by mail-ej1-f44.google.com with SMTP id m22so5297572eje.10
 for <usrp-users@lists.ettus.com>; Sat, 22 Aug 2020 01:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6Z9iWooGmlwWtDpcKoxCEM4DtWOcflOdWJDT1eLKQmM=;
 b=H0LWsfnPJKkGo1BYiIDRQxo6yhNvGw39Amc3GdPcxxIcT99zv0DSLJea3hNJrrsmP7
 57gfWpZdHNjXbDFkb8ChTp0qDDEBHy+rvIwpkTmspTbqSLjLb4vlbwzn+8AImJdHcjtY
 JAjY36nbuhDlF7SGOANuktBB0Y27OSup0KxciFoBrGBwmAYavTA0JjEMs9AE1y8b1o5u
 zdb/i0JGWSjcIDhdjJa+yI3hqtx2hnyqkklDtehVaXnfsUaSYID6sqgOyEAAcpPxZEka
 Sd0Dxbw3jUAF7NxsCigc+e+pafWTxxdX2t6fSMZQUZef9mXSrMMJlgHei+wBpFfQ3eCs
 HBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6Z9iWooGmlwWtDpcKoxCEM4DtWOcflOdWJDT1eLKQmM=;
 b=JtoQ2RqHfIEl/UKnGnNvE29H8zF8w0kReVP9eWkP8XrvwxhAvR6/Omf0QEk1KXJSi/
 6hle2qgPVxgh71XVCtRnE4uyX5SneaqqbPOs912rf+7S8zwQsHceLrgLH3SYb0qwZ7OL
 ypCPEcI+PZXPFl+e6zKzQtDnP5kbcXX7tncrniqwt8XDCJiMLLcbXZiSximiRfFs+79r
 5K3/Rp/yYH39J7SLvj8VfIywklxkb3kVtckpK53pQuJRNMvtz4tWgxK7iLZCpMjMbNeE
 LO0UQ2OR8bb3AoNE1j4fe3697ZcHJUI/R2IvcWPLMxqMJ7W0Zu8nYiVi+sczKef2k4t0
 OyPQ==
X-Gm-Message-State: AOAM533WlwEMAQmzJhKcUON0BCPVlFxPbJrswPGPFwyEiLZALwpV3RCV
 OR4+p5VMgOZJInCbeUAngF1wCOYIN5CaXEu5TPGmLbvB
X-Google-Smtp-Source: ABdhPJyBRFVITLTk/u5iuI7MBBCSYf/YuW01BQh/8BhL4OIa5fOYDOu7yxx1ljLkt+1Q2OeaRgKmartWLeJI/TvLaoM=
X-Received: by 2002:a17:907:9ed:: with SMTP id
 ce13mr1834468ejc.180.1598086705540; 
 Sat, 22 Aug 2020 01:58:25 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 22 Aug 2020 11:58:14 +0300
Message-ID: <CAMVZM+9wHRAeTFc+H84XqGqanVfYFr0nEZDY=rm7-s6B9omDLA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Antenna suggestion for usrp B210, LTE band 7
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
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============0801452869488955746=="
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

--===============0801452869488955746==
Content-Type: multipart/alternative; boundary="00000000000067731805ad738ed1"

--00000000000067731805ad738ed1
Content-Type: text/plain; charset="UTF-8"

Hello,

I hope everyone is well.

I am looking for suggestions for antennas for the usrp B210. I am
interested in LTE band 7 at 2.6 (to be used with openairinterface) with
sma-male connector.
I found some relevant ones from several sites, but I am looking for more
options. Any suggestions?

all the best,
Pavlos.

--00000000000067731805ad738ed1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div><br></div><div>I hope everyone is well.</di=
v><div><br></div><div>I am looking for suggestions for antennas for the usr=
p B210. I am interested in LTE band 7 at 2.6 (to be used with openairinterf=
ace) with sma-male connector.=C2=A0</div><div>I found some relevant ones fr=
om several sites, but I am looking for more options. Any suggestions?</div>=
<div><br></div><div>all the=C2=A0best,</div><div>Pavlos.</div></div>

--00000000000067731805ad738ed1--


--===============0801452869488955746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0801452869488955746==--

