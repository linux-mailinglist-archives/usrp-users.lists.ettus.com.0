Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 846D873859B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 15:46:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F0CE384A60
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 09:46:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687355214; bh=QieS7HOiCLxvWFqRs9B//2Xp85cmLZQxHz0WGXNCcpU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B2Y2nvqD3LCNeapUYP+oxT5o6E3Af2wdCvPmxe9SLVrTJzCwToWuxFXHrh1iGU2RS
	 TGd2GmWQWvUA3y0YVr+ECLJAXifyj2y0+pqn9+WyDtA2SwhAosuGnCXrKAYosOf+fe
	 AIUxEylv7zuqCU1YG8K1rS8DDnO0tM03yeuFAjryw9hj85bFdSDIBhVZ/KcI8tslto
	 C78kvUqjc4kTnRXnaw0TNGUNNcqA+u1qNdUZwcp7kjzhnWtmhDcR7ruIz459X+4uMg
	 sPG0lwART+mGDyFi9RyoIXp9inJdKr2HtiK7FHStxinRHEhQlOOxUbwzm3fStM85UU
	 l1ppVriIBjvSw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 510B6384A81
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 09:45:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="2HIai+X+";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-98746d7f35dso761914666b.2
        for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 06:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1687355155; x=1689947155;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TX3NGuHTAKRrhBHvM3BUtcZylgQuMhew09tsd8V7i9Y=;
        b=2HIai+X+Nfj0DqWwf37BLiX9q6qlKiMGmBVbqP4FCNmJfkSzd6pxH2BJnNkhN8qAgD
         mJnRi1Vis9nGheFdJNJ3AAETZvKDcdXx/q6hlmYflp0tslxzb64nYFikmHOzDxnFZsGI
         Z1XRy/RTz8GmiIIMlhSkLWn3wEogQmP67e4tv6Ar3i2mt91GqQoqAKrl3IigdGur6nFr
         d++WRjM0eqy99jVR6sqv6G864TN7hmOALaI9+MT9cfIcBnQAfVSBKn/+FDIa/CnWVHY2
         EO2RD+//oypGVylXOHH5FVBnDbQczKIdKDsD9URN4l4rpLq+RXbgjragImXDlXE4KWvV
         w5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687355155; x=1689947155;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TX3NGuHTAKRrhBHvM3BUtcZylgQuMhew09tsd8V7i9Y=;
        b=YwUmuwBQUwoTAgta3S+fcQmuT50xfPC8kBSQP35a+fIih+1L11FTkMgzW/rPurk00F
         40iporyfUQ9+vpF4EVjAkxIWS0sXwwcHu2/2jx0Lsl9nEbR6ThiMBO68A+e13Qvl0GRw
         ydrz2p/ZoO2KTBYE/nzFwlDUgV+CH27Pee9J6rLnw9K7JKX0kiXFOopPpwIy2Bo+GRhm
         r1aP4buu75P440AaKEjubFEYjvlbfsHsKdzHY2YEPVBX8enFJYV76azxtp9ML9ktxXO2
         RQULNGkkPwEsO00kGrlzOnSYCX+8sSKy7Egc4GAgqkLNGrTOHbWc/cMK481pLx3ANSOl
         mIkw==
X-Gm-Message-State: AC+VfDxKzbBBc5W9LB2VTu4UVHBbiEuOW8HNgYJQ+57PVtUv8jVzntof
	AfJgf38borh9HPeZGqqMaoUAneVklNY6JvzAuUxSKJpDKUCw4jNuq+lhyQ==
X-Google-Smtp-Source: ACHHUZ5CDbc5ZMJwDKTjudmvoGWZF/Y+ZeAKUQa8yeZvf4tHQ7/Fd2780GGvUh4DmzCInKTRp/M7HdOnXZCMgcVj2Js=
X-Received: by 2002:a17:907:a412:b0:988:6e18:3f83 with SMTP id
 sg18-20020a170907a41200b009886e183f83mr9105412ejc.5.1687355155111; Wed, 21
 Jun 2023 06:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8@lists.ettus.com>
In-Reply-To: <L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 21 Jun 2023 08:45:38 -0500
Message-ID: <CAFche=gu+YR0ZGXeT0SmBdKYXU_6UDRGLcC50Eu0es-z1cu82Q@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: BMTHCV6XB632MZWOFEZ4R2HFQ4R4YEUV
X-Message-ID-Hash: BMTHCV6XB632MZWOFEZ4R2HFQ4R4YEUV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Control operation timed out with custom block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BMTHCV6XB632MZWOFEZ4R2HFQ4R4YEUV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2920164313197915253=="

--===============2920164313197915253==
Content-Type: multipart/alternative; boundary="000000000000a1771805fea3fc39"

--000000000000a1771805fea3fc39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

This error message usually means that the host did a register read/write
request but never got a response from the USRP. This might happen, for
example, if a clock wasn't properly connected to the NoC shell. It could
also be some kind of network issue (swapped cables, firewall, improperly
configured IP addresses, etc.).

Thanks,

Wade

On Tue, Jun 20, 2023 at 2:10=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently trying to build an image with a 500 Mhz sampling rate with
> a custom block. However, I get the following error.
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: OpTimeout: Control operation timed out waiting for ACK.
>
> I do =E2=80=9Ctamper=E2=80=9D with the chdr data before it goes into the =
noc_shell, and
> with the chdr data that comes out of the noc_shell.
>
> Specifically, I only take 64 bits out of the 128 bits coming into the
> block itself(currently 4 SPC is used) and feed it into the noc_shell, whi=
ch
> is set to work with a CHDR_W of 64.
>
> I do something similar for the chdr output of the noc_shell, except I
> expand it from 64 to 128.
>
> Could this have an effect on ACK? It seems all acknowledgement protocol i=
s
> does using the ctrl_data, not the chdr_data, but maybe I am missing
> something.
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a1771805fea3fc39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joe,</div><div><br></div><div>This error message u=
sually means that the host did a register read/write request but never got =
a response from the USRP. This might happen, for example, if a clock wasn&#=
39;t properly connected to the NoC shell. It could also be some kind of net=
work issue (swapped cables, firewall, improperly configured IP addresses, e=
tc.).</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, Jun 20, 2023 at 2:10=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@u=
mass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>Hello,</p><p>I am currently trying to build =
an image with a 500 Mhz sampling rate with a custom block. However, I get t=
he following error.</p><p><code>[ERROR] [RFNOC::GRAPH] Caught exception whi=
le initializing graph: RfnocError: OpTimeout: Control operation timed out w=
aiting for ACK.</code></p><p>I do =E2=80=9Ctamper=E2=80=9D with the chdr da=
ta before it goes into the noc_shell, and with the chdr data that comes out=
 of the noc_shell. </p><p>Specifically, I only take 64 bits out of the 128 =
bits coming into the block itself(currently 4 SPC is used) and feed it into=
 the noc_shell, which is set to work with a CHDR_W of 64.</p><p>I do someth=
ing similar for the chdr output of the noc_shell, except I expand it from 6=
4 to 128.</p><p>Could this have an effect on ACK? It seems all acknowledgem=
ent protocol is does using the ctrl_data, not the chdr_data, but maybe I am=
 missing something.</p><p>Thanks,</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a1771805fea3fc39--

--===============2920164313197915253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2920164313197915253==--
