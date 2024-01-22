Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03662836AFA
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jan 2024 17:37:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1157C383ED2
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jan 2024 11:37:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705941464; bh=joqcqkViwjGtt9vqlTk7riI3YXWjxrETIKiwvQ+x7pc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fRqlnxxx1vch2vE0Y2TfvCe5cGWxzzz3vCelzhbUH9wGKxVe2Dp5m85OKajSvlUWZ
	 h5AYAEkzl+IEOS1fwizjUUPdRHdcbrMjYCH6xRYtOzJ4U5Z2DsKdGVr1+htIaS6nBB
	 YN8CNyld3aG+eXYxLBH2hIJ6Itst0RMxobLFxquv7Jj8zqAMNlYBFWjLMth80sM84D
	 JsO8ipH81q1Cu3sV+qjvylZeAAtQrQvGLxlme4TXC1ImCN/L2mAMLsOEHN1BPYNios
	 tzY9WFHTYvcnkY0yWIFuFRp8MpIF6SeTh8y04bgU/7a1onbzQLYrt+R4603mwaSItl
	 23cc1Nhwtc9AQ==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E0F4D383A70
	for <usrp-users@lists.ettus.com>; Mon, 22 Jan 2024 11:37:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="Ovu5IrLY";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2cddb0ee311so33975021fa.0
        for <usrp-users@lists.ettus.com>; Mon, 22 Jan 2024 08:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1705941455; x=1706546255; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7yy1+7JYAv0VvLqJrsI7cTSopP3nTdhjU3cmqGldAdg=;
        b=Ovu5IrLY7OSHtI5wg+w4v+9NR58dF+Vzzp6HglgfW42hClznOxOdlch3E4oiW41B6s
         VtCMSYw7pMF7RECB2QCmHWjKjs8+TM6vbtCn6Tp2BCaYyDMKGdtKGtb2INgPYDvOGHcS
         XoVLY+mwufNY9LIcYHIyhq3dTCRe3XC0xAfFkRIP6k/DRxmSAHrtRdVm3VUlzCDsC6W7
         Na/oH0eI7srWMpEKhXHj+7Fv6u8u+1r+WXbQMyctqfgexWgxpCqEItGy+cEgFS4r/I0d
         PH+s2S6pkt5o9c/Nmrjj3HKf1z3rHHXJmscjayY/CwdTOM5er1U106yk10a98PiXGFoY
         UGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705941455; x=1706546255;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7yy1+7JYAv0VvLqJrsI7cTSopP3nTdhjU3cmqGldAdg=;
        b=r2y2n2FWEm8kbfhUq/YreMIt8qQIUofPS8dSrFS5FeANXzW8h65I5rZ7pCuEV483hH
         VQsGPy3Vm+48NryCjbqHutiZuZLtSYnVAq//oGSsdIiNS4JTE42f8DUpNOxEeCSw8/9R
         gt7c7FecziJnCs1pZM9GpwJiOe8/g6meHCaJEsKjb/RyaD4Q5IIzK0S6cEt0nISIf9Mr
         BdLViCA6u6lA4EtAnEHTWlh++JRmvFbVxTEO9P5tdqNqXn40ebLM6ET6YleV4WM903Y5
         QtRrptayR+Jf5eBb+QJTEPXg5wvRonqpMS9iIzGk/7kjvdTGV3Jv96jMRpAJFmBMlnha
         YgXg==
X-Gm-Message-State: AOJu0YxY/cbdqjbIYaMcG6MIhav8EXx03U8Z/NbY/UiwIDiNCSqJ+Fkb
	vdy5n700z7jQOcEWZodDOCHUCAJ3JCsEK1wNs3/uKFAZpkHWIHyulec4s9AWST5FL9me+Awij7B
	m1Srwdq2wQnSPBaG5G2H1Cc4PQuoZhXZod2aYjiTsEAAxptKLfLE=
X-Google-Smtp-Source: AGHT+IEy6xANYIEcd7pJ/YwrM2b5w6JCyrRMmyk94/RkyMZuri+CjfJDkzsuWOzArqTdpB08QR2oKNo3yA6hHiSdMRA=
X-Received: by 2002:a2e:b74e:0:b0:2cd:16fe:da36 with SMTP id
 k14-20020a2eb74e000000b002cd16feda36mr781644ljo.190.1705941454951; Mon, 22
 Jan 2024 08:37:34 -0800 (PST)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 22 Jan 2024 17:37:22 +0100
Message-ID: <CAKHaR3kbcmH8o01pSb=S6SppD51TyJjsVYxBwG+KbSdrX+1sEA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: QBCTVXNLFOGNW5T7DGBVWCVK3NH7OC6Q
X-Message-ID-Hash: QBCTVXNLFOGNW5T7DGBVWCVK3NH7OC6Q
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnocmodtool
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QBCTVXNLFOGNW5T7DGBVWCVK3NH7OC6Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5672206488714672718=="

--===============5672206488714672718==
Content-Type: multipart/alternative; boundary="0000000000006e24fd060f8b723e"

--0000000000006e24fd060f8b723e
Content-Type: text/plain; charset="UTF-8"

Hi,
i have been using RFNoC for quite some time and am now starting a new
project based on UHD4.5. in the past i used rfnocmodtool which was very
useful but i can see that in gnuradio 3.10 gr-ettus is not required anymore
but at the same time there's no replacement for rfnocmodtool, at least that
i found.
also, gr-ettus seem a bit outdated with regards to UHD and some files have
been moved to UHD repository (for example the simulation script)
since support for gnuradio 3.10 seem to be still in early stage i'm going
to stay with 3.8 but i wonder if rfnocmodtool from gr-ettus is still the
best way to create an OOT block and eventually what is going to be its
replacement in the future.
thanks,

Dario Pennisi

--0000000000006e24fd060f8b723e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i have been using RFNoC for quite some time and am=
 now starting a new project based on UHD4.5. in the past i used rfnocmodtoo=
l=C2=A0which was very useful but i can see that in gnuradio 3.10 gr-ettus i=
s not required anymore but at the same time there&#39;s no replacement for =
rfnocmodtool, at least that i found.</div><div>also, gr-ettus seem a bit ou=
tdated with regards to UHD and some files have been moved to UHD repository=
 (for example the simulation script)</div><div>since support for gnuradio 3=
.10 seem to be still in early stage i&#39;m going to stay with 3.8 but i wo=
nder if rfnocmodtool from gr-ettus is still the best way to create an OOT b=
lock and eventually what is going to be its replacement in the future.</div=
><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span st=
yle=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"=
>Dario Pennisi</span></div><div dir=3D"ltr"><br></div></div></div></div></d=
iv>

--0000000000006e24fd060f8b723e--

--===============5672206488714672718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5672206488714672718==--
