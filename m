Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D504689FFF2
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 20:42:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D1D385020
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 14:42:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712774530; bh=FUc1Fg8O108VeuCz+/ncMEu2TkAtz5NCQdVy4hwBYjE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VxwkRgFCdHwvBUxSKLyNebzRoG1OSbQrnusK0gjsbQ/PBbqztdr+S3LaKaJxnc2Qe
	 ccabVjSpKw5NdBKOaaB225fjC/8BJNA1CmVx9qsnBZB97y7mYfYRlZpcKbMmGvgPK2
	 CNcObUE9EjvAtxndRZlmqXMtr//xyGFYG+UFG+rLFJJjHoQtCJq1zaMCVCz38iZPTT
	 1RyiH69UML40ybAHmsa56q+L8WUtw0NJPZAQ+1jDEXIke4VRdlIMe1ylNUsCub/qKt
	 6gwHKdrzSf7CvSp9k/H9V3J06OoyDDodb4MZMzQQe5vYAQHushNpUC0T0TbUweFYew
	 P1KohHROoumTA==
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EA44384A1A
	for <usrp-users@lists.ettus.com>; Wed, 10 Apr 2024 14:41:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="G3mXRpTt";
	dkim-atps=neutral
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2a484f772e2so3545768a91.3
        for <usrp-users@lists.ettus.com>; Wed, 10 Apr 2024 11:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1712774493; x=1713379293; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=++0/F6NXHCW5ATtnI6VBxXH5yoIunK1LxBd1OYlxFK4=;
        b=G3mXRpTtTDAAB9BgmyVntZx+ssDnpV02VO7LrfZX2238wH79E3NaINd4OD8zbU2+1C
         4QvHpsREBVGUpdOA7Fvn1v1rM/dx3zj3ECZBo4jNDm71Mrur/AcHlFLFb7Mbv4IwJ8NZ
         lB9cpLv7m7PgVRrcTfclqwK6U5Pyyk9xCJ7mo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712774493; x=1713379293;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=++0/F6NXHCW5ATtnI6VBxXH5yoIunK1LxBd1OYlxFK4=;
        b=JyH5MkR/XKufuhmfgaVsoeDrRDUaJ4o9tuE4RyqLU1BAq35LxzM8Hp4XGgqMW2fT/g
         fH1Obf42larBTWXUjK3y6xRhl5yP8p+LVQTnr0+L8rOeYZXco9TmQOoPqV0A/wbjWvu/
         Wup+5lmWbrAj6QQT50RPJPMKKSs4iKL11rn1n9/1m7KDaES5dInk2NrdEnGEdn5e1cJt
         AxpOm/lMDH4g5o+1Yfjtu5D7q7DjiXwPQlGr84KxEi4UmKQJ/iY2UMsS0dvNwczP7FiA
         NesSqYKZWnwnEhth6mr9KS5/F/j0KCloVG58Upf7G9G6iwXDMI1/wv2qmErHtcXut4gu
         x2Og==
X-Gm-Message-State: AOJu0YzC2dPdozMZWDPYnbg1MEQsBUG5C9cx+085IJ70cd5lSOnHxR0x
	0N78LtSe6LovAx8YwEV25DH0w/D0rmZHobyoByPySitLC6eUdpMU+fWz9RPaYSU7B8T/BIuM2SY
	BLtPpEUst4soHfj5Xr3BNERZeGIewOMRtX8giCS3f5gsncSsIiNNViQ==
X-Google-Smtp-Source: AGHT+IGgYD8oxi6vGKijWyrB/ovp2gVZHk2+L02svMwSOKx9qydHK53zshOKRDkzb30W+FnOy6PrB2nFRlr8Ag1TL3Q=
X-Received: by 2002:a17:90a:bc88:b0:2a2:5860:dea8 with SMTP id
 x8-20020a17090abc8800b002a25860dea8mr3254722pjr.7.1712774492943; Wed, 10 Apr
 2024 11:41:32 -0700 (PDT)
MIME-Version: 1.0
From: Yashaswini Guruprasad <yguruprasad@umass.edu>
Date: Wed, 10 Apr 2024 14:41:23 -0400
Message-ID: <CAD8oTTMSeYJ76nQvRn+zZoFp0_yWpX+4AC9v-4bCh1_YZiH8bg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BC7BK5H6S73LSE4QPM5I4XYNIHHXPZ5C
X-Message-ID-Hash: BC7BK5H6S73LSE4QPM5I4XYNIHHXPZ5C
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding keep one in n block control and plot the graph receiving signal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BC7BK5H6S73LSE4QPM5I4XYNIHHXPZ5C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3431670890591875371=="

--===============3431670890591875371==
Content-Type: multipart/alternative; boundary="0000000000003b96de0615c263ac"

--0000000000003b96de0615c263ac
Content-Type: text/plain; charset="UTF-8"

Hello, I'm adding the keep one in n block to the
 rfnoc_replay_samples_from_file
I'm unable to plot the graph for the rx_samples_to_file --args
addr=192.168.10.2 --freq 40000000 --nsamps=10000 --rate 25000000.

How does this rx samples to file , work along with
rfnoc_replay_samples_from_file
here, the rfnoc_replay_samples from file picks up the input from the
rx_samples_to_file.

Thanks
Yashaswini

--0000000000003b96de0615c263ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><code style=3D"border:0px solid rgb(227,227,227);box-sizin=
g:border-box;font-feature-settings:normal;font-size:0.875em;color:rgb(13,13=
,13);font-weight:600;font-family:&quot;S\0000f6hne Mono&quot;,Monaco,&quot;=
Andale Mono&quot;,&quot;Ubuntu Mono&quot;,monospace"><span style=3D"font-fa=
mily:S=C3=B6hne,ui-sans-serif,system-ui,-apple-system,&quot;Segoe UI&quot;,=
Roboto,Ubuntu,Cantarell,&quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Ne=
ue&quot;,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&qu=
ot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;font-w=
eight:400">Hello, I&#39;m adding the keep one in n block to the </span></co=
de>=C2=A0rfnoc_replay_samples_from_file<br><div><code style=3D"border:0px s=
olid rgb(227,227,227);box-sizing:border-box;font-feature-settings:normal;co=
lor:rgb(13,13,13)">
</code>I&#39;m unable to plot the graph for the rx_samples_to_file --args a=
ddr=3D192.168.10.2 --freq 40000000 --nsamps=3D10000 --rate 25000000.<br><br=
>How does this rx samples to file , work along with=C2=A0 rfnoc_replay_samp=
les_from_file<br>here, the rfnoc_replay_samples from file picks up the inpu=
t from the rx_samples_to_file.<br><br>Thanks<br>Yashaswini</div><br></div>

--0000000000003b96de0615c263ac--

--===============3431670890591875371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3431670890591875371==--
