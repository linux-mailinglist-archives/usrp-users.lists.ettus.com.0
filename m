Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E46D6B4E
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 20:16:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61C2238466D
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 14:16:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680632191; bh=TkXCZXa58q6qh4HCT3HPin4qi1SJTfa9rTWFd4qLQUs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TGk9qKi4lhA4l4s8DB2fPUEUTkJZH3awO9aRMucs+WMeqHIq9DCbt5fWjXriRdNRm
	 q0POtZct1mTw5JOLsWVB7PrnSQ9Ld+qqJt9eX98W57tcSFc92sTxEqV6N+UDacoyGU
	 6gB9HCkoOMwhCohfCenJytXzILRlRDEZWkSNLHagSRx5ZSSwjFV/a11CWMlHtmAC+M
	 O5+L19iCT8AldOSAMcuhxszfTcwoG0Lmv3yLF/H1bkGd3tHJBHy34WPXueSF3+Lm8Z
	 nmL2pdLRKW+Itjb6hVmpiE9sgUSf4uZSej8eQLhl+GLlczEPJj21o1bLg6xSvfXJve
	 Irnn3OzDB/eTQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 06A22384561
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 14:15:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="MjktCvfX";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id y4so134248746edo.2
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 11:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680632157;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a1Uq8KKmU2/VFfuFi8M3z80bmVV6VQ86Szr4h+JmIKU=;
        b=MjktCvfXHMKMvE1M1JAIYvaDLXlmgt3Z5MzpIIRLw33fx2APQnWGUUS7UuTnSgaPMU
         vDqA3/UlhOKN58qJZ4dgqeuJM2DCylFWLnO4r95VpaVxBkHSd4PysQZxwLDhUOA4voZC
         XhbqyEgu04DL+pgsTd8aWl7R1AxEczxZpzRXOYJa/BRBYzk3uCM+EqnXHq+leYFeb/VK
         wxxoY+j4mcL+oquWO6EyKLGmwgvOu5dt18EgQl41k4+rruL5emqgkyQ8UxER1sM2UCTA
         5mvzlx04VpZ5+D+vN/dzkuq5MCkG9ys2ibldQqA8ofAfAqXxLWAq3q+UlbYT1ehy9pmh
         OJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680632157;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a1Uq8KKmU2/VFfuFi8M3z80bmVV6VQ86Szr4h+JmIKU=;
        b=Klen1JqmXQrf4XmksrVlj3SrhYEcJFbDx9YVgBcGaELYR684W6oOOuD7SjIYGhOObV
         6AG+ZFsd0c6uNdhGN7F582JPk0e/63o05OATnL9T9rI6Y2AfdoDySSrBe/hN2LnfQ7qv
         Ivi8MI0iWlSa4VxEf/Kq+yyb2vCTJ+TxyysBhVdMaTP6zfhnQnD4BPL+0eoXvqkmlxiP
         3OJDJVdlk8cGREw6oMWOfHPfe0yhHyRUOSTputDtlpHqBT4z/qFqo48YqyeGcvJDJh//
         iXAp6H5UvUJOjUc8mKBbH+N6xHK0f/f/wv5EJebIeLiimlK+tGQDs8uvOOpZIM2arEPi
         JY+g==
X-Gm-Message-State: AAQBX9eRtlkfSQBPtoyI+cjlf58aPz2L/jw7go+4VRK1FBn3tVs9F+GO
	KyJ/RFkhnW6Zt2fQNzqNA3QZN8wHDKwIt+W8FVCHfQxLEsUwnwHq
X-Google-Smtp-Source: AKy350YTQp7hc5WPu8f6Yi0EmetdcCwXZY39ZrWEDDsmqi3yi/cNO3djX1tOh2Ie1K6+D3KjAV2/fxpTuJ7uKQN6X1w=
X-Received: by 2002:a17:907:20ce:b0:930:310:abef with SMTP id
 qq14-20020a17090720ce00b009300310abefmr95755ejb.3.1680632156604; Tue, 04 Apr
 2023 11:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY@lists.ettus.com>
In-Reply-To: <kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY@lists.ettus.com>
Date: Tue, 4 Apr 2023 14:15:45 -0400
Message-ID: <CAB__hTTgHDAxzmP59jM9+iMmvCN60HrNF4WOfbW4_x5mMvzx_g@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: VOEHJEQEML6ND7VVUZGX7RH25GMDXTDX
X-Message-ID-Hash: VOEHJEQEML6ND7VVUZGX7RH25GMDXTDX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOEHJEQEML6ND7VVUZGX7RH25GMDXTDX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0670856688979560055=="

--===============0670856688979560055==
Content-Type: multipart/alternative; boundary="000000000000b1c03705f886aaab"

--000000000000b1c03705f886aaab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is a persistent setting on the XL710 such that it can be either
40GBASE or 4x10GBASE.  Intel has a utility that you can use to program this
setting.  Perhaps this is the issue for you?
Rob

On Tue, Apr 4, 2023 at 1:43=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Hello,
>
> I am trying to integrate USRP-X410 with XL710 intel PCIe NIC card through
> QSFP ports.
>
> LED on both sides is off and I cannot ping USRP (192.168.10.2 and
> 192.168.20.2) through XL710. PCI card ports can be ping successfully, as =
IP
> addresses configured in the same subnetwork. Therefore, it seems link
> cannot establish between USRP-X410 and XL710 NIC. I think, it may because
> of rate mismatch between USRP-X410 and XL710 NIC card. (While USRP X410
> with QSFP28 supports 10GE and 100GE, XL710 with QSFP+ only supports 40GE)=
.
> Is there any way of auto-negotiating for speed in USRP, or other solution
> to help overcome this issue. Thank you.
>
> Here is my hardware setup.
>
> -          Ubuntu 22.04
>
> -          USRP X410
>
> -          UHD v4.4.0.0
>
> -          GNU radio v3.10.5.1
>
> -          Dual Port 40G QSFP+ NIC - Intel XL710
>
> -          40G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper
> Twinax QSFP Cable (from 10Gtek)
>
> BTW, I tried both X4_200 (10GE) and CG_400 (100GE) FPGA flavors, but stil=
l
> same problem.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b1c03705f886aaab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is a persistent setting on the XL710 such that =
it can be either 40GBASE or 4x10GBASE.=C2=A0 Intel has a utility that you c=
an use to program this setting.=C2=A0 Perhaps this is the issue for you?</d=
iv><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Apr 4, 2023 at 1:43=E2=80=AFPM &lt;<a href=3D"mailto:h57=
jafari@gmail.com">h57jafari@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Hello, </p><p>I am trying to integr=
ate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports.=C2=A0 </p>=
<p>LED on both sides is off and I cannot ping USRP (192.168.10.2 and 192.16=
8.20.2) through XL710. PCI card ports can be ping successfully,  as IP addr=
esses configured in the same subnetwork. Therefore, it seems link cannot es=
tablish between USRP-X410 and XL710 NIC. I think, it may because of rate mi=
smatch between USRP-X410 and XL710 NIC card. (While USRP X410 with QSFP28 s=
upports 10GE and 100GE, XL710 with QSFP+ only supports 40GE). Is there any =
way of auto-negotiating for speed in USRP, or other solution to help overco=
me this issue. Thank you.</p><p>Here is my hardware setup.</p><p>-=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ubuntu 22.04</p><p>-=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 USRP X410</p><p>-=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UHD v4.4.0.0</p><p>-=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GNU radio v3.10.5.1</p><p>-=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dual Port 40G QSFP+ NIC=
 - Intel XL710</p><p>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 40G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper Twinax Q=
SFP Cable (from 10Gtek)</p><p>BTW, I tried both X4_200 (10GE) and CG_400 (1=
00GE) FPGA flavors, but still same problem.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b1c03705f886aaab--

--===============0670856688979560055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0670856688979560055==--
