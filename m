Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D565AE724C
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 00:30:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B29E7385BC3
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 18:30:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750804240; bh=Rr0I3sb4KgbYpj/lgb3DgPeRkKgoIGSn7BPiBZEx2i8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=f6dgWZ2kvSZEVEw/Ykmnb7+5KFZtz+hXoGUddNOmgus031nsDGCOkFGPgwJezCHRe
	 3dngJaDOeBhFa0EU312s4BqU3WuJFKZIQ2VtUzvYm/qJH+IcRmj2wtSTmcPwPOaVHz
	 SZGaXvlsTyicz+MHK2r2lDUah+12Z7+0Y5+BZ3XA9xhbOnDKwt8EnM9yTpZela0rYC
	 TODDpBZqk5nMOH0adUSjagXD3/oD1IMxHJy7m91LNY8arZJU/LagU8hwoLUAMNcCJ9
	 vDhh5RzWsinMgK75Vy2PiT9T4Vn8ITR9xwqou/xj1m+bjEOy2zUA71J0kFlrmSldo4
	 q+AFMuhSr4Y0w==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 99B97383E3A
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 18:29:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qfixv45A";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ade5ca8bc69so173519166b.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 15:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750804170; x=1751408970; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bv2LG8S3BRsOpJht4PFg9ddDEVNfwtGRSrpPD61BWeo=;
        b=Qfixv45AfctsxY8/7Pp8eZiZh429T9TsLqJsx+RPzK5asTRKYZBu+IYx92uEFuwyOm
         lod5f91IT8ks24Ta+KHjXJkzf7uPcqHJhwmqTO1jS6B/AN6/4EBUTrnoQgKEohf/IPx4
         f2T1C7qk5jhYgCSc0DBAKnGMeXBd19/f9kf2ukyFJOSkv/1GsZBq93UD+j3DTV9peJ88
         bAmgWyB2NfJLiUc3O+pC2aI/mo6xBJrlIZbx2jqfDKEiHceSXf1NoxF2adxsXQNvyeqb
         1BxpOaQPV6ultvu1JITQ5dBD3YbR69jgWM0SMC6iPwYNkzoz1ZghhwegWn5aNEi4CyWF
         qNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750804170; x=1751408970;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bv2LG8S3BRsOpJht4PFg9ddDEVNfwtGRSrpPD61BWeo=;
        b=wNDQgzLqRQ9kwouHY+GAp1NlODWstINP9P0LESH0adK37DZ/wmGTYeyxNyKz9g0PcH
         rmOf3LiSC4UZ72r58qOxCeJA5chePc4dkf5piQvpu1RrcPrD0Tq4l1G14l1+p1F1t0GC
         QHZds8dZCu6aijucJvMD4hTrj6zm10A+4naIRyJ9/xKEO9uQMFpmd3SQ1Ge7SP5J9FqJ
         bod5ro/UvLKcPACusOEb3wFKEJ1st/nk3+zPft6J7iITIcPDDGg+pI36Jt3GiLDq1H7F
         Hbts+5uM9DTyBFBwdWTVJemBpgTtwBro66fyDcfcuSsaNS+OAOfv+iVxDAukufbBq/AU
         cQ9Q==
X-Gm-Message-State: AOJu0Yzt51Fe4YF5p3gPJa7yw8EZE+z/VpYOnxXHmpuzMJJaCymi4O8g
	BJg699s3vgOmiXYG5i9EVRs0djDD+Oue678H1Pe+bQjtnxFBs17KlGS9uIM9CWxleyjWJsGIctb
	nJgTIUEiJ5n9DR2HxsOgrrf2tnHr0HULPxGQ9h+s=
X-Gm-Gg: ASbGncuJLC3MqwgyBueCeBvvQjnxMBxZxv7g4ZDgVqKWKVCDOuy6SfZdhoYy16zlJSs
	DkrF1tzFfCW/zARd3eilHx0uIXXgySVkQULrBaP8O16bME4dVGFsYFnt5I9YSCNTkFvQqoc4l2i
	GfzOue39DjIIUoXumy1y8rALVzfn7Iw/koighSMOwTG/6pbh6e
X-Google-Smtp-Source: AGHT+IEYehrBi56YvsKqfA3wsmxAiTFsrLZ8L2gPOlt0GxUbG4oqFj9Ug8zBn2iDKdZBwDpxITkEEI4wW7sO5jZ9PBQ=
X-Received: by 2002:a17:907:d5a5:b0:ad5:74cd:1824 with SMTP id
 a640c23a62f3a-ae0bf154af5mr67481566b.38.1750804169947; Tue, 24 Jun 2025
 15:29:29 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 24 Jun 2025 18:29:18 -0400
X-Gm-Features: Ac12FXx9VvHz6fUqlYnvm5oKYUANg5UwzOAQfZg9mKvK39yCmuWA54lbOUDP5sM
Message-ID: <CAEXYVK6aKCTCU5e9PwX5ijtUQ2F1sZm4jq3w+z7nbMa7fgytEw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: LYE3C7LQHF4GX6VTZA5A6I5CAOFMVRVD
X-Message-ID-Hash: LYE3C7LQHF4GX6VTZA5A6I5CAOFMVRVD
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC SEP Control Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LYE3C7LQHF4GX6VTZA5A6I5CAOFMVRVD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0349822912635167755=="

--===============0349822912635167755==
Content-Type: multipart/alternative; boundary="0000000000009f0055063858dca3"

--0000000000009f0055063858dca3
Content-Type: text/plain; charset="UTF-8"

I am reading the documentation for RFNoC SEP Control Ports and I came
across this:

"Each SEP can have an AXIS-Ctrl and an AXIS-CHDR port, as indicated by the
ctrl and data options. At least one AXIS-Ctrl port is required to
communicate with the RFNoC blocks, so ctrl typically enabled on just the
first SEP. Every SEP will usually have AXIS-CHDR connections to one or more
RFNoC blocks, so data is usually enabled on all SEPs."

...from: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

I see the axis_ctrl_crossbar_nxn, but I am unsure what the statement about
the first SEP is supposed to mean. Don't all the endpoints need some type
of control to configure the endpoint?

Is this supposed to mean that so long as a CHDR data port is connected to
the SEP, then configuration can be passed that way? If this is the case,
does each SEP need at least 1 IN and 1 OUT port? Is the only downside to
enabling all the SEP's to have control ports is some extra utilization in
the FPGA?

Can someone clarify what this is supposed to mean?

Thanks,
Brian

--0000000000009f0055063858dca3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am reading the documentation for RFNoC SEP Control Ports=
 and I came across this:<div><br></div><div>&quot;Each SEP can have an AXIS=
-Ctrl and an AXIS-CHDR port, as indicated by the ctrl and data options. At =
least one AXIS-Ctrl port is required to communicate with the RFNoC blocks, =
so ctrl typically enabled on just the first SEP. Every SEP will usually hav=
e AXIS-CHDR connections to one or more RFNoC blocks, so data is usually ena=
bled on all SEPs.&quot;</div><div><br></div><div>...from:=C2=A0<a href=3D"h=
ttps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus=
.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></div><div><br></div><div>I s=
ee the axis_ctrl_crossbar_nxn, but I am unsure what the statement about the=
 first SEP=C2=A0is supposed to mean. Don&#39;t all the endpoints need some =
type of control to configure the endpoint?</div><div><br></div><div>Is this=
 supposed to mean that so long as a CHDR data port is connected to the SEP,=
 then configuration can be passed that way? If this is the case, does each =
SEP need at least 1 IN and 1 OUT port? Is the only downside to enabling all=
 the SEP&#39;s to have control ports is some extra utilization in the FPGA?=
</div><div><br></div><div>Can someone clarify what this is supposed to mean=
?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--0000000000009f0055063858dca3--

--===============0349822912635167755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0349822912635167755==--
