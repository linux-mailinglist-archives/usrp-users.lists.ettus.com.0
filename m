Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 311015B901B
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 23:30:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D117E383BC0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 17:30:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663191016; bh=Eo0VxPr9ul9q20IFvb+MKkMSPs//aBJS7Autv4mJrqE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=n1NfsNDvexWNHWrdKgRwee65m7nsAMwdr3D5PszIpxRXrNhiZphz0xdOpPs342D0F
	 zUyz9sm335gFMIaqrZ3bEFi92JdBAbcl1AnWP+6nP63XuunHcEeFooXmSReiCKHm1N
	 cBpc2936nkNwHcESqmkRMrBV7mFzuWesUgRvaip4JCM6XApv0Iwl8Eps4fsy0Rz245
	 NWC+jmAyiVMo+Rc+ldNvkoXkAgXlRKy07x+RrjlMcYHA1U6ytoq55KWB8ar5oBb7jx
	 CeJvr2VgsVdA1fExIQSVIggaoV4svVHzUKPFl7lafnSYv9ghvneARb/gZZAT646mwQ
	 m9/j10mq/pY4g==
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C1922383A1F
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 17:29:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VF85+BRv";
	dkim-atps=neutral
Received: by mail-pj1-f45.google.com with SMTP id m10-20020a17090a730a00b001fa986fd8eeso20389900pjk.0
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 14:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Tz25T3MBVyLfiEi1g7lM5uNayA/dbjMRx1hZIR0+Vyw=;
        b=VF85+BRvC05gZFDz5NZZYs8NylcDH6QnePXdmJg7khl15kmDo7I2nUyZ89erxG1jrg
         TbtBHk+BiVEZRr8kNfyHm5bkTUZujzwtBnrS61xiVWpFd3kTgO6gGm24UQtrzHZoWd7i
         PYktxwvE6g9eb9oMAxmvvBgQ+caSfwq+8z3HmmDs/fl5kMloROP+asdu+Pk4+/DsOUyb
         quQ1RtohjAzXErWaPE/iB3NY39ebQGWz4fDxshXXleoZTpuLqz8TyaTAJGiIOhIYiZbY
         veN+u8Fn6bUGo9tsZhBS5eQc1cUSrAUIBV0Tm+S+9JYK4nwnWlaPUcJw5bnsOQtFobsS
         9Dww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Tz25T3MBVyLfiEi1g7lM5uNayA/dbjMRx1hZIR0+Vyw=;
        b=QbywSIz0yg/8rwDtDDpbYpyfTOH7yBHhvfxBjx43NOjEbP90/tULoeIXJHoo3K+8I2
         XFEELHI8Lb1LrpEHMA3TpyMAM4eUCmMjokX5X1B7kLn9piymFzlKtXIGgR5eoOrFjk2r
         c4QRrgU2Nx9tNIBTHVt8meg9fgFIJ52MNSKKTCpiRm67hq3gfiCh88vNqIUroK0kAU4E
         oNowPHgCRtbyu6H9npK/YO/OcF6jfTxrskqyH73qlNmZIX9k/QCGP2g9NPtIIFmcelz2
         DwHCLwC2S6sxQgC6Fd/DQWXffSTL6aJ4LPPWO2DZkugE4k/urIdKUXTZwmwm1VqpJYQt
         nQYw==
X-Gm-Message-State: ACrzQf35UsaUJTSyz6xFiPQdTEsrUn/UjFktcCxYpxKuBel98kZImzPj
	SXPhMEpPHekPTQdnawJDx/NtjjwVwm9uwR3Emso=
X-Google-Smtp-Source: AMsMyM4J/s2l6NOsxJypEq3MadGazvig313krua0bTTuFRT25iMwe8MbxVmwqyyxVw/fYkPGhNJVMq5GxWxEXWupSgY=
X-Received: by 2002:a17:902:d2c7:b0:176:c8a4:2f2 with SMTP id
 n7-20020a170902d2c700b00176c8a402f2mr937482plc.119.1663190942665; Wed, 14 Sep
 2022 14:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
In-Reply-To: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
From: Richard Bell <richard.bell4@gmail.com>
Date: Wed, 14 Sep 2022 14:28:52 -0700
Message-ID: <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com>
To: eduard.sivolenko@ni.com
Message-ID-Hash: XSLTUHQKNX6DDRHU7GJCJM6ADUNHMTII
X-Message-ID-Hash: XSLTUHQKNX6DDRHU7GJCJM6ADUNHMTII
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XSLTUHQKNX6DDRHU7GJCJM6ADUNHMTII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0678703055902192896=="

--===============0678703055902192896==
Content-Type: multipart/alternative; boundary="00000000000054d39d05e8a9d1b4"

--00000000000054d39d05e8a9d1b4
Content-Type: text/plain; charset="UTF-8"

Hi Eduard,

Yes that was my mistake. I am talking about the N310 family.

Richard

On Wed, Sep 14, 2022 at 1:13 AM <eduard.sivolenko@ni.com> wrote:

> Hello Richard,
>
> In the title, you mentioned N310. However, the description is about E310.
>
> Could you please clarify the USRP family, i.e. N or E?
>
>
> Thanks,
>
> Eduard
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000054d39d05e8a9d1b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Eduard,<div><br></div><div>Yes that was my mistake. I a=
m talking about the N310 family.</div><div><br></div><div>Richard</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Sep 14, 2022 at 1:13 AM &lt;<a href=3D"mailto:eduard.sivolenko@ni.com">=
eduard.sivolenko@ni.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><p>Hello Richard,</p><p>In the title, you mentioned =
N310. However, the description is about E310.</p><p>Could you please clarif=
y the USRP family, i.e. N or E?</p><p><br></p><p>Thanks,</p><p>Eduard</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000054d39d05e8a9d1b4--

--===============0678703055902192896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0678703055902192896==--
