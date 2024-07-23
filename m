Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 211D7939E36
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 11:49:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3759C385848
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 05:49:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721728159; bh=PQwqibxsL5pbHWiGIz7gt7is9GyVnafFMAg6u3A/Ggg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HqMwJ9VqTKMtbsMzfGKYHvZRvSmLsGzFJQi0MAjSiwYBQt2qDo/XBRlAx2OiqVMop
	 FQEu5y+0o5uoW8pZPS27qlAOYrievk4ctIj3e1mkNH7kGX0fjXmuz10iH/uG/xt7Nv
	 F9Al/u7DAK2gDLM/A4tQIyTAzm8UZaUGJxMOg9OCcyGEFopfTAvqvdvV3ClPyHk6fs
	 +7x6WBwhE7spO/cE5rqEoVL7GCKltypmrbDM+Jmaq1HRJ45R9O5dDrzpv5vT7wQ0sl
	 4yGtez/Q39s3sSp4GOnOyj8LdzKISQmSXul3Af/8pnRmcbcUnohkGav6+CDOLXanhQ
	 nitkGAIm3yvqg==
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 25AEB3857EB
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 05:48:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="otHqkDEj";
	dkim-atps=neutral
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52efc60a6e6so4018691e87.1
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 02:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721728119; x=1722332919; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pl6xXWo9KCkRu+7fWGyVddj0ySCM2yUDWNdutD42aGs=;
        b=otHqkDEj1uLfnabPWuKohP8Z1C8Jm/VNVoQ3FCM3MH1UfOjO264xLaYnSPGuLIkW6B
         KYYB9LUH2Q/CI7gNx/CYb77kFa14npwF+zQuiX507ZUiLMNPHbevmoNnqeBMfb/4cGWB
         neHe0YCYwSZ1eJYuJLI7Q97p7Kyp6V60eJyB6VpFvNd4W5QgXjk00lyoaCO6miJUBo3F
         4icwmYY/oMjN97WW0quPs8DpzE01b4Hr/d95jNu1Ysn8gXHDVCFGgF3ydVjh7BybZjKn
         pfFn8eKS258aBZ/lT/UA0entDgwYVJuxf4ljE/+TTP5ZWL7aLiWqBtIKglK8PX/f9MnL
         tdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728119; x=1722332919;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pl6xXWo9KCkRu+7fWGyVddj0ySCM2yUDWNdutD42aGs=;
        b=HwOya84qLIQcq7XaOa1O1wCnCTOZLFIfRu8abWR9dzK4QfjtsV9CVTKs54ZKdq2E2w
         NKc9bOJcNLLvGCuRoa351xih0sh5Tf0VKkAPRU1zutXAOgt7o+3SV5MrBmHX9kQySaJ9
         EY5TrqY0Nw+BcIfGCmIzJdlHj/SpbcX/9PL2idStVixH8PZM8+sARu0qLoqTEOnH/7U4
         COTjpC6sNa1dZsg+Mq4fFYA+jK7O/6ACmREJp3EgdkPYsAViIRqtPEQETzqqOSqJDzIb
         NjjLWsB8kXADBjtZiQ2sE5kf/hBdoPfgC4ZPRlR0BvJjexlx7crru79X3HpRuyrg3afO
         Msag==
X-Gm-Message-State: AOJu0YwkuScGny6W/0VitJ/+muMBzOZB/yxK9QEFpUFTzg8k9lWVq/VA
	3EpsK3QWnCPaZU0KpHloCbouf6rh/Flz7Ib951vUsbxskB45IlXuHY4Svj0vg8kv0tzWNlHk4fW
	AmwvUfKVQb9JJxWbHdlkrHdDg9Rx/clV5n8e8uc5y
X-Google-Smtp-Source: AGHT+IGqr2066IAGSRe3aihLiA14vov3Bcv+BE9UssflVroWoW/GsBcTYzREZzTZnV8T/PJ3662WP5v+IQr+Roo0sa4=
X-Received: by 2002:a05:6512:3409:b0:52e:9d60:7b4c with SMTP id
 2adb3069b0e04-52efb85ac69mr4793482e87.61.1721728119222; Tue, 23 Jul 2024
 02:48:39 -0700 (PDT)
MIME-Version: 1.0
References: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com> <116ed2b0-3e83-410b-8075-01f1afa25037@gmail.com>
In-Reply-To: <116ed2b0-3e83-410b-8075-01f1afa25037@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 23 Jul 2024 11:48:28 +0200
Message-ID: <CAFOi1A4Z+P_VX5X37=BCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: J4IIFHK37COG37VBAFBVNZDDV25U3HFE
X-Message-ID-Hash: J4IIFHK37COG37VBAFBVNZDDV25U3HFE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J4IIFHK37COG37VBAFBVNZDDV25U3HFE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2431721322796089372=="

--===============2431721322796089372==
Content-Type: multipart/alternative; boundary="000000000000f25c54061de7104b"

--000000000000f25c54061de7104b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Check this out:
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-exampl=
e/icores/x310_rfnoc_image_core.yml#L16-L35

Unit is bytes. You can try and increase it but you might have to remove
stuff from the design.

Note that I think of them as "tx buffers" (because streamer -> SEP -> TX
radio is where they get used) but I'm a radio guy, not an FPGA guy.

--M

On Tue, Jul 23, 2024 at 12:44=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 22/07/2024 18:39, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> Thanks for the answer in 2).
>
> What about 1) *FPGA Rx Buffer Size:*
>
>    -
>
>    What is the FPGA Rx buffer size on the X310?
>
>
> I honestly don't know, and I'm not an FPGA guy, so diving into the FPGA
> code likely won't enlighten either of us.
>
> Martin likely knows, but he only dips into this forum occasionally.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f25c54061de7104b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Check this out: <a href=3D"https://github.com/EttusRe=
search/uhd/blob/master/host/examples/rfnoc-example/icores/x310_rfnoc_image_=
core.yml#L16-L35">https://github.com/EttusResearch/uhd/blob/master/host/exa=
mples/rfnoc-example/icores/x310_rfnoc_image_core.yml#L16-L35</a></div><div>=
<br></div><div>Unit is bytes. You can try and increase it but you might hav=
e to remove stuff from the design.</div><div><br></div><div>Note that I thi=
nk of them as &quot;tx buffers&quot; (because streamer -&gt; SEP -&gt; TX r=
adio is where they get used) but I&#39;m a radio guy, not an FPGA guy.</div=
><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2024 at 12:44=E2=80=AFAM =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 22/07/2024 18:39,
      <a href=3D"mailto:cjohnson@serranosystems.com" target=3D"_blank">cjoh=
nson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi Marcus,</p>
      <p>Thanks for the answer in 2).</p>
      <p>What about 1)=C2=A0<strong>FPGA Rx Buffer Size:</strong></p>
      <ul>
        <li>
          <p>What is the FPGA Rx buffer size on the X310?</p>
        </li>
      </ul>
      <br>
    </blockquote>
    I honestly don&#39;t know, and I&#39;m not an FPGA guy, so diving into =
the
    FPGA code likely won&#39;t enlighten either of us.<br>
    <br>
    Martin likely knows, but he only dips into this forum occasionally.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f25c54061de7104b--

--===============2431721322796089372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2431721322796089372==--
