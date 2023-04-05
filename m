Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 623426D7253
	for <lists+usrp-users@lfdr.de>; Wed,  5 Apr 2023 04:18:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FDFB384919
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 22:18:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680661135; bh=8JdbR6/1hT1+K7xB/DoJM3BD0/H3apIzArtP8+V0nmk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jWFJcdbA0p6S2frK+L+jqSESIursRCFvRtdUP8AqPkr3DMdywjE2D01Ty/ySXxuRc
	 GwQjirW9D0reOmWRtb8Wsbm+SccwGN5w2tNhrGHUHCpv7J2dyTMLZJMT/c75s/zXBC
	 0i/3LQgPOxqbxp/CEURLzg6wa4L3DySmrS/wQQGWvYaJ2ZrQRQIxB8H+LcBE73uFg6
	 belDneoZP/cc2qTx7n+BJjOmq6ZgwhAfUpGTxc+WNWnB0szA2+E0O4PqrCqFpWWyh+
	 d/m+b6WUzObNd998NlUNJI7bnj4k0oQsmbfbh7XxVRzHfjsoxKcqyiy9Vut+O+ucxK
	 4jv9WzHH5gXbQ==
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 19298384919
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 22:18:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="QSRtaYKJ";
	dkim-atps=neutral
Received: by mail-pg1-f171.google.com with SMTP id 184so6211210pga.12
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 19:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1680661127;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V0Vxv2vhZSW8dkpq/xdQyOd0NPAuslLwXZXsNCt4LEw=;
        b=QSRtaYKJr49L9rMT3dCrO5YiMncyBBgEMIyVzCuHfLYu6iVXFJQB+O3qNBqM8k+ILA
         ANrYtKwoYj7i3Sfdaa8MfDZ9Kl/73LhBRkAnuE2SEuoyO70RAlCJo04aFkKw8R0s1JX0
         UAUE88FzspSXwFh8gZih6DW0+t0RnoKWXUShHEyhm/oPmc0Z1d4wtaI6sC25APJ9ysv6
         Wq4516lLb5wy16AiUSNxgIdJGVJKIAUYQYNxLeRc0soC114BhW/iiRqKrHlk4Ka+YqIR
         EBxBR8zAnzpsb67vWJ1fj7FfcrRO1EqIdSYe0EAQPqwT89Am3RIC8a2o02HpQVgK/JAW
         LQeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680661127;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V0Vxv2vhZSW8dkpq/xdQyOd0NPAuslLwXZXsNCt4LEw=;
        b=7LxNXJPtpeHbqgh3nPSJVhajWXKvw9e1E7nh8Z01V1AiJB++4WWddaskP0cpWrT6bh
         lD5XuGX3B/jt+Pjy5TiyUCiioBGGvMzGIHyWY12Gly0gf9Zo6a6lU6A4HYEjaJpUJpit
         qAOX+52dNySFlARf3VMZha666V1JYtEwZS9jQdeLtTUIXIdtudk37XirqMbk6Qi3ncpC
         kqOLNOi/b6cIVcDmuDq1KRjVgp42Ek9BXY2OZdNeHcECYx2RCGqkn/zHG4zuacNqz5jZ
         yQkQIYBwDOuANmuYHAhgyNd/QhXutjE8a8y7C2ppY7lC8lv5qO1YDdfeXMV3fvOahAec
         r53A==
X-Gm-Message-State: AAQBX9eDCM1CukW+tP4p7QqcHQVkxajrYMqoCZDnVoIrzPnnf/kPuOld
	0DCKNbRHY5wdAU4CPk9YQtF2BrkUA391wsSTD6ppMQE/wdh95rrvlQIHrw==
X-Google-Smtp-Source: AKy350be8saE+bT/UiO5dCqgOOpi4KLF1lzT39xKSA2Px6V2pGEov7ZsqF94v8OZcsSfe9aDoJG5m4S2lARNSS6KiTs=
X-Received: by 2002:a05:6a00:2e9a:b0:625:dac0:5263 with SMTP id
 fd26-20020a056a002e9a00b00625dac05263mr2475990pfb.0.1680661127346; Tue, 04
 Apr 2023 19:18:47 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 4 Apr 2023 21:18:11 -0500
Message-ID: <CACaXmv8eXpzBBjWuTpVyN0GLNpaxoXnd_+Fg52V8AjQQ39Jw7w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LKICFGM43KHAOQLMAB2J2JXYAG6TPZTK
X-Message-ID-Hash: LKICFGM43KHAOQLMAB2J2JXYAG6TPZTK
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2023 on Friday June 2 at WPI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKICFGM43KHAOQLMAB2J2JXYAG6TPZTK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6980626823241819145=="

--===============6980626823241819145==
Content-Type: multipart/alternative; boundary="0000000000007bcd9605f88d6945"

--0000000000007bcd9605f88d6945
Content-Type: text/plain; charset="UTF-8"

The New England Workshop on Software Defined Radio (NEWSDR) is being hosted
in-person at Worcester Polytechnic Institute (WPI) on Friday June 2, in
Worcester, Massachusetts, with two exciting tutorials ("USRP FPGA
Programming with RFNoC" and "AI for Wireless Communications") scheduled the
evening before on Thursday June 1. Many thanks to the support of our
generous event sponsors Mathworks and NI/Ettus Research.

We are excited and truly honored to have presenting at NEWSDR 2023 our
keynote speaker Dr Thomas Rondeau (Principal Director for FutureG & 5G, Office
of the Under Secretary of Defense for Research and Engineering) and our
invited speakers Professor Muriel Medard (Massachusetts Institute of
Technology (MIT)) and Professor Tommaso Melodia (Northeastern University
(NEU), Institute for the Wireless Internet of Things (WIoT)).

To learn more about this event, as well as to register for free to attend
NEWSDR 2023, and to present a poster during the networking sessions, please
visit our website at the link below.

http://newsdr.org/workshops/newsdr2023/

--0000000000007bcd9605f88d6945
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The New England Workshop on Software Defined Radio (NEWSDR=
) is being hosted in-person at Worcester Polytechnic Institute (WPI) on Fri=
day June 2, in Worcester, Massachusetts, with two exciting tutorials (&quot=
;USRP FPGA Programming with RFNoC&quot; and &quot;AI for Wireless Communica=
tions&quot;) scheduled the evening before on Thursday June 1. Many thanks t=
o the support of our generous event sponsors Mathworks and NI/Ettus Researc=
h.</font></div><font face=3D"verdana, sans-serif"><br>We are excited and tr=
uly honored to have presenting at NEWSDR 2023 our keynote speaker <span cla=
ss=3D"gmail_default" style=3D""></span>Dr Thomas Rondeau (<span class=3D"gm=
ail_default" style=3D""></span>Principal Director for FutureG &amp; 5G<span=
 class=3D"gmail_default" style=3D"">, </span><span class=3D"gmail_default" =
style=3D""></span>Office of the Under Secretary of Defense for Research and=
 Engineering) and our invited speakers Professor Muriel Medard (Massachuset=
ts Institute of Technology (MIT)) and Professor Tommaso Melodia (Northeaste=
rn University (NEU), Institute for the Wireless Internet of Things (WIoT)).=
<span class=3D"gmail_default" style=3D""></span><br><br>To learn more about=
 this event, as well as to register for free to attend NEWSDR 2023, and to =
present a poster during the networking sessions, please visit our website a=
t the link below.<br><br><a href=3D"http://newsdr.org/workshops/newsdr2023/=
">http://newsdr.org/workshops/newsdr2023/</a><br></font><div class=3D"gmail=
_default" style=3D""><font face=3D"verdana, sans-serif"></font></div><div c=
lass=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"><br></=
font></div></div>

--0000000000007bcd9605f88d6945--

--===============6980626823241819145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6980626823241819145==--
