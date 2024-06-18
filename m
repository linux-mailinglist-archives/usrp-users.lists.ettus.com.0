Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F283990C058
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 02:30:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 072D438544D
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 20:30:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718670613; bh=x9lsPhzVS0DmmDBRDJETkoKAhvkGjpoIJfDIZXsXVUo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=S8aBPXeIzWBEtCXWND2fFVmVg91uoVZsWfFP2NbIflOD+QtrLjnPzh5/EsSs56juu
	 mUBoEMqY520PDnrBSRIBOTmn/BjV/Xj3e2P/WE/GFoSZOsCNfpmmfknpY+a+rEhmfd
	 MCHfhoIsJXr1t4JgLf5PfgHWIyOH26MO98K3jK3xUIGJwKnt1hP3OSmQgxeMz27+vS
	 iRavpTuUGL4MSht2G8Uq8uWZkdTz8srz2+aeo83wF98BrupK/v/Bhja7QMXnr9M4/o
	 REBDAv+w3vs+/efwn0am+lsAmt8Cpt7uWQsbc2KDSlUM/swP9byZ60V9NxcEjj7hf5
	 77GxEkCo0vVGg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 403E638533C
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 20:29:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718670598; bh=QzjKQnk1ZwrmY1eRdmtq7848qWdn1PB/036Wgk1huX0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fXYlD1bZhpZgPcljdxrXcIeCJEiAapvbw1Do4E1uZXYBcUMSPK9GmX0V5bBCJvoiq
	 YuD7dchBPzp6UzpuHQyKpp9AW70w7CP5VvCqnMEZiPkneEg3soUUEp7538mvR00Huf
	 oc+QX7poSzhvml+CBS8PA5p89Oqaxq+AGLhGI7GMLiovWTOfmIDanzExLXZK2H5/HO
	 U0Ve3CNVvLUg+xFdDFEtWxxSvdIsbc2doOM5YoobYIfSpIhdh7s2r7VSvqGxVyvluV
	 yoi9h3VOuR2e/4hvL11QrpanM9p+zYEZzJNjirAU9TWDGt+uUohN5F7QsA0mWTDeZv
	 N0udxHG2NvFwQ==
Date: Tue, 18 Jun 2024 00:29:58 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3e7f7c87-14d4-46b1-a858-8d8cdd53c7f4@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SYHX36DQY4AMWRMP2R74EONC3CCZW27Y
X-Message-ID-Hash: SYHX36DQY4AMWRMP2R74EONC3CCZW27Y
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYHX36DQY4AMWRMP2R74EONC3CCZW27Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8357577251385028016=="

This is a multi-part message in MIME format.

--===============8357577251385028016==
Content-Type: multipart/alternative;
 boundary="b1_DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It is the switch that is internal to you hardware on USRP-2974.

You can see the switch below (from your documentation).  I=E2=80=99m send=
ing from the SBC (Single board computer) shown in the diagram.

\
https://kb.ettus.com/File:2974_blk_dia_hiLevel_v01.png

--b1_DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>It is the switch that is internal to you hardware on USRP-2974.</p><p>=
You can see the switch below (from your documentation).  I=E2=80=99m send=
ing from the SBC (Single board computer) shown in the diagram.</p><p><br>=
https://kb.ettus.com/File:2974_blk_dia_hiLevel_v01.png</p><p><br></p>


--b1_DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0--

--===============8357577251385028016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8357577251385028016==--
