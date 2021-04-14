Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB81C35FB3D
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 20:59:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C001F384457
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 14:59:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MyuMxfPE";
	dkim-atps=neutral
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 89770383E2D
	for <usrp-users@lists.ettus.com>; Wed, 14 Apr 2021 14:58:48 -0400 (EDT)
Received: by mail-lj1-f171.google.com with SMTP id p23so20734777ljn.0
        for <usrp-users@lists.ettus.com>; Wed, 14 Apr 2021 11:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ORNE9ObLxUyrPVmQLE126MKdB6lG4Gx3bQKz1VCjQsU=;
        b=MyuMxfPEMkqEEwXm+4FoRvjdeBzei2iAdVHASl+mTfzHnJwQiEVxJhg8lWWoIj3u/x
         USseXxDcYc/GmalCuMZxJyKLClxkhOfJ8/7nuSUg/iaLjTSWjRwjipitqK1DKTAaHLmP
         vTir/xhc18GuYTRtq13lxR8f6dw/0yoXuNhTD8F37f/fCPL1rz2y+Nw7f920Nk09UBpF
         unsKJ5MHo9xIs3ci19rQAZ4dvlDvevgPvCMQlx3wXz7vV7B/+qcYxicrOxsNtNEQE2LK
         GRRaPToXZQ7uw4VxKr5UUCLBaZ60jYa4BflyHSONoCSL7NWLTQU04PkrbhrySkMUdn2o
         5VJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ORNE9ObLxUyrPVmQLE126MKdB6lG4Gx3bQKz1VCjQsU=;
        b=K/yiDv/2KAWKkpqEimZ9MiCyydixymDDcPcTFDGEB8FBchJNE8+kQT44GZ+vEs/GEI
         FsG00MFoff5jHMQ2WUGvffC9AttpYS+BVof8hLRXtVGgvy+Q3pbat2CXrSmGzxIPxEYr
         NjgdnCdiAVJfJpSDPSaltj0XfNQ4e8SYeOJ9UHzQ02ZzybgkUf8YRf4EVIj7Xz5BkyGN
         zHrnxev9Bw286COpUo3msJUinhQcphRVELGRT38gbziooSiHxxjJvbq0ssTBl7Cpx1Ge
         pBNTukojSjdxDRiHBLPqzQ1h9ZMocuwVrES1ndSsDn2py3uk9V9iaLDN8pVVPcUVI0vU
         cJHw==
X-Gm-Message-State: AOAM5316+ziNlaJN/21+JqxoFp/j+lP9y7QNHgajJII4UoJnhToFJoJG
	VizaiujKrsnmb4c8ngmHw35Um7JVrycdf/blyMWlayUgq1g=
X-Google-Smtp-Source: ABdhPJz6v9fzIELgk1EcifcUF4Q12m2bi7+ELwzmkCJVVjZWiyFvzFXFRCN31ajo8I/mNrGUrdUrydpYzyZAOqarwSg=
X-Received: by 2002:a2e:3603:: with SMTP id d3mr24754159lja.495.1618426727093;
 Wed, 14 Apr 2021 11:58:47 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Ronny_Bola=C3=B1os?= <ronnysebaz@gmail.com>
Date: Wed, 14 Apr 2021 13:58:35 -0500
Message-ID: <CADCSL63n0XtebUBme_Yj-=gGt3q=PyLU8n1--u2Qe0iar3WYaA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ATD2V6LT7VRWEKVXGPSQCF2CP2SSEIRP
X-Message-ID-Hash: ATD2V6LT7VRWEKVXGPSQCF2CP2SSEIRP
X-MailFrom: ronnysebaz@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NO MORE E-MAILS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATD2V6LT7VRWEKVXGPSQCF2CP2SSEIRP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1564566118367228561=="

--===============1564566118367228561==
Content-Type: multipart/alternative; boundary="00000000000029d75205bff356cf"

--00000000000029d75205bff356cf
Content-Type: text/plain; charset="UTF-8"

PLEASE I DONT NEDD MORE E-MAILS ABOUT USRP-users

--00000000000029d75205bff356cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">PLEASE I DONT=C2=A0NEDD=C2=A0MORE E-MAILS=C2=A0ABOUT USRP-=
users</div>

--00000000000029d75205bff356cf--

--===============1564566118367228561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1564566118367228561==--
