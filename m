Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DCA36F458
	for <lists+usrp-users@lfdr.de>; Fri, 30 Apr 2021 05:17:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6033C383C37
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 23:17:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QA15oyZu";
	dkim-atps=neutral
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 338B5383C99
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 23:16:23 -0400 (EDT)
Received: by mail-ot1-f42.google.com with SMTP id g4-20020a9d6b040000b029029debbbb3ecso30323387otp.7
        for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 20:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2YynmBrQHPqvyuhbFCYhC0IaWynGD5/f+Lfw7PelBlk=;
        b=QA15oyZuoV9atqRBt258kPXBnKgRapEu9sn63969WRwWPV6FjYHmzaef/HOxzFy69i
         v4PsmmblGCBcGfQ/ZJKExFSi+NUIRZrTBDr97ZeXJQaQRmSOFKBY26UFZu+wE5W15ihX
         EFXmWhn9bVnoRQmsC7DJ1bujFj4Ctl3x6q5GJiOqpKtE796/S9cqqPiylY3RWgId9tc+
         NxTn8s9lflsf00/zvIVgQuS6QxjBygQXzGSathxcUfVys6c+Me3V6V4hyIpvzfFfNFfd
         K0L3IHRJZy8FyKfYQZFD5A7FkIpFsb62T/dadB/h0z5oBfzvr2k3OurAY3qNPpUrUJt/
         B+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2YynmBrQHPqvyuhbFCYhC0IaWynGD5/f+Lfw7PelBlk=;
        b=USBW/Vj9M6sRumE9qeFCWbBOcfMkjLhLMO2c9MXQLThTQEdmug02PYwzBKatf7gHnt
         jDZbHVlNGt2izI9d7oW4k2lWsFAuRAYj59lOgnHoZcZrcZsgr9ZBSCHoUeKDT8kAjD8+
         +UgykQ49nYexdr8pC+rH66vzuSBBAcYW9XR7F135K937olLd06lXZdzIaq62dhKin6PC
         wj2dyMeY2p409Nd2cN1vOZyMSrOBDV5AowlUB7y00zJvRKVkFTST7EHjIZTUuYGd0YjD
         oqsT57V5FkZIc4qKT9actiQINGVWu+HnTPGOfQvvTbK5zb3aAZECdYafo633jL5eMuID
         6ztQ==
X-Gm-Message-State: AOAM531/b67pTEzWP4FXxvGU6ETBPtLRDAAHVXnPo8a56UPquW0XBqBj
	zZhlTyLzeGwh3/EmLZNbhj4emD/RH9F7OdsYkQOTnx4QWXI=
X-Google-Smtp-Source: ABdhPJzzg/PUZUfsbEi8J54g53x1xVexFcXKl4zUHy9FJOxa6kf4urc/f0bCHA71uU1l6CwDjOLM1sK5oa3+8PE8oi8=
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr1948899otc.302.1619752582447;
 Thu, 29 Apr 2021 20:16:22 -0700 (PDT)
MIME-Version: 1.0
References: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu>
In-Reply-To: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 29 Apr 2021 23:16:11 -0400
Message-ID: <CAB__hTQ5wFf6k+bRC_mqMAk+H+vDPJcP=LhxPLDVi-_du2VLTA@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: 6XJ56UOPIIILWCDAMHYENTZ2R2KBKCX3
X-Message-ID-Hash: 6XJ56UOPIIILWCDAMHYENTZ2R2KBKCX3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n3xx series questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XJ56UOPIIILWCDAMHYENTZ2R2KBKCX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5989829455461548606=="

--===============5989829455461548606==
Content-Type: multipart/alternative; boundary="0000000000004d4ea105c12809fc"

--0000000000004d4ea105c12809fc
Content-Type: text/plain; charset="UTF-8"

Regarding the computation engines, this may be a 3.15 limitation that is no
longer relevant in 4.0.  If you are using 3.15, I *think* that the CE
limitation for the N310 is the same as for the X310.

On Thu, Apr 29, 2021 at 2:34 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> How many rfnoc Computation Engines (CEs) are available on the N3xx radios
> FPGAs? For example, i read online that the x3xx has 16 CEs.
>
>
> How does the tuning speed compare between the N2xx and N3xx radios? I saw
> a whitepaper a few years back that listed the max sustained hop rate of the
> N210+WBX of approximately 250 hops per second. I'm wondering if the N3xx
> radios have comparable tune times or faster/slower?
>
>
> Thanks,
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004d4ea105c12809fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Regarding the computation engines, this may be a 3.15 limi=
tation that is no longer relevant in 4.0.=C2=A0 If you are using 3.15, I *t=
hink* that the CE limitation for the N310 is the same as for the X310.</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Apr 29, 2021 at 2:34 PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-4915977250646958479divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>How many rfnoc Computation Engines (CEs) are available on the N3xx radio=
s FPGAs? For example, i read online that the x3xx has 16 CEs.<br>
</p>
<p><br>
</p>
<p>How does the tuning speed compare between the N2xx and N3xx radios? I sa=
w a whitepaper a few years back that listed the max sustained hop rate of t=
he N210+WBX of approximately 250 hops per second. I&#39;m wondering if the =
N3xx radios have comparable tune times
 or faster/slower?</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004d4ea105c12809fc--

--===============5989829455461548606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5989829455461548606==--
