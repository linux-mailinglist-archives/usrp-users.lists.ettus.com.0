Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6109EB738
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 17:54:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 423B6385F8C
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 11:54:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733849695; bh=x0hX/Jd7IgCO5y7AvuOofUjYSgwHfAq0MQgdqoWyzQQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pMZzYNTKZ8v3HR1RF0og/P8OnEkC6iuIRjNqU7piQndm1c506q2HnOyLV6sWBe6bx
	 2p1cepPVf2G8y/Yu65iteA/7XSkxdDhpfG1Fnh9IAsIGoojmX1U3lGgygdlsyYMx0k
	 E1M6mRAfKzevDcLU24zWlp3GStdKz3c6N7dWenz7N+GzlXLlHIrO+pulTQW6E3i+ai
	 q6KY0/lEQDXGnR8XRIWYhAK83AuEWrerjd00BuUY8SK6fW7+ozaFIR22VYFrtggvji
	 ZYO8/hXvgUTl1tJoLjdr57/rIqezrZL98MJhkW0rM9Lqgke476wdvNu/aaPrqnRHE+
	 KifJ6f5jiPMLQ==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id DBF23385BFD
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 11:53:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hDMkF2L7";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b678da9310so509728585a.2
        for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 08:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733849639; x=1734454439; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uuB7A+HgI4Km3FLj7i5zWB54QxjkvoT5H0ey7ssYHy8=;
        b=hDMkF2L73YNISS8/NyTCTEpadqd8M9XiNqpuuqHGJGajiNI12CdzqFvOlZe+AQMWsZ
         vDnqLWJHuHeZIXqoGHYzaI7vqE3+paP44uJmeWcyMSMI4EjNT0E+tvQ95Rn6AAX+5SAM
         /Kzkk1Q9XzrK93Xq5lDFfsMX06m3Iwp28v3f9/17BIRh8pfN4l4hjVj4PTq3QuqXfxhR
         eDT7DltXeLxxt3nxeGWos7hDFEkCtQXA1Br7Uc/84tbqKz565A6qdYc/IBjumSr/d++R
         h4lAMOV2Y7+OD36q7hxtId19w8aGQdNbmPQnfZNbHczZcoWgHBSgJy1jDZundne8lXVn
         gq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733849639; x=1734454439;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uuB7A+HgI4Km3FLj7i5zWB54QxjkvoT5H0ey7ssYHy8=;
        b=pS54a64xUnaQf31cujobPbByYiRGksL28zYGjJNBQtcNFTeyz5+iM2jutRbw9BLZ8H
         TVJAaxvx/7zzsNDOzWvL8SiqvJXFYmArOjJQ08hAUFfnn47bXVdguP+qv0Qml8UfnLvU
         PHvwDk4kf0CDGKCn2vNUn5QqUGoab4keyU5QJQfyYyZlppBEqmYnrdrQml50yLTCzd6j
         IwEXOAdac90UHBXpwMFGcsZ/gOFgCalb1rD0MeLrq6lPBKGC9oDkObezZeaIDs5VGlQQ
         5Z3G4QxfXEA1JDj6NEeB3v+HyvxlObch9X9T8TAjm+RsCdkbkFjjgfxPCm+1Z0byCC8v
         ABQw==
X-Gm-Message-State: AOJu0Yzs2DLoHazUL3bUqQtPPLeLxajYKN6yC7YNi9iIH2lWWqu1jNX0
	Iu/dXKVo3hskE2zLi7ZK9sFRDAGKCFm18dMNPlyzUTBrCKmi1KvgAJo+xg==
X-Gm-Gg: ASbGncuPKNEy4p/nEjxv6KDAlbLaZHwNF4Am8QH1pfE8l3/eYwYnqko45FoQ5ywZ3in
	7pVHpaXRYsgPnZsDqVcaR/b4m8vuUTLSIrW3EqMo6OG/JdwuMKG9zVdDXWX90j1V2r0HPgayIVy
	Mr15gYiun1cJAEE3oAxmGmJa1DVAcNQLwBMoWB1n7muXcp4SFQNsDNTO/s6zSaq6g/WLDnyCRC8
	MtxN6AaWeU5X7kmTwdPD3+fXqftWpI6b5oxEveEiOky54sql4/+WxKqGSEYeuMV
X-Google-Smtp-Source: AGHT+IHIE18UVQ0whIgporJhcWOvQMIW8zYMQpMpfxcpy2I6c9gR5zwY6xiDLxADI/qu+TA5ok0Dow==
X-Received: by 2002:a05:620a:2906:b0:7b6:d70a:86d6 with SMTP id af79cd13be357-7b6dce7bdecmr760368985a.36.1733849639063;
        Tue, 10 Dec 2024 08:53:59 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8da6968b1sm61548946d6.39.2024.12.10.08.53.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 08:53:58 -0800 (PST)
Message-ID: <3043da7a-61e5-4cdf-879c-a78086031877@gmail.com>
Date: Tue, 10 Dec 2024 11:53:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PYlFxq1MvpqoRAC9f9EwnkONwHOWeqgLTss3dTMadA@lists.ettus.com>
 <CAFOi1A5O27MKb9nVEJLBPfBd1beQmX7v_5QC0TEZjH0Xhy_tmA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFOi1A5O27MKb9nVEJLBPfBd1beQmX7v_5QC0TEZjH0Xhy_tmA@mail.gmail.com>
Message-ID-Hash: WY4HEFX7OMJWMEPCE7DGV7OJEZQZLLK4
X-Message-ID-Hash: WY4HEFX7OMJWMEPCE7DGV7OJEZQZLLK4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Blocker issue with NI-2943R (=Ettus x310) PCIe connectivity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WY4HEFX7OMJWMEPCE7DGV7OJEZQZLLK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2551859788523522949=="

This is a multi-part message in MIME format.
--===============2551859788523522949==
Content-Type: multipart/alternative;
 boundary="------------5pCEsApO0017g7kaHt44m8fE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5pCEsApO0017g7kaHt44m8fE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/12/2024 11:44, Martin Braun wrote:
>
> BTW, if you are able to get a 10 GbE card, you can exceed the rates of=20
> the PCIe link, with almost no downsides compared to PCIe.
>
> --M
I will second this.=C2=A0=C2=A0 10GiGe cards for PCs are not expensive th=
ese days,=20
neither are the SFP+ optical transceivers.=C2=A0 Short
 =C2=A0 optical patch-cords for these are also very very reasonably price=
d.


>
> On Fri, Nov 22, 2024 at 11:21=E2=80=AFAM <seppo.j.rantala@vtt.fi> wrote=
:
>
>     Hi, I cannot get the NI-2943R (=3DEttus x310) connected to the PC
>     via the PCIe transport connection. The Ettus firmware is upgraded
>     to the currently latest one, UHD version is
>     UHD_4.7.0.0-0ubuntu1~jammy1. The default HG image was uploaded to
>     Ettus. The upload was done via SFP+ Port 0 Interface, 1GbE copper
>     SFP connected. Since I had Terasic PCIe x4 Cable Adapter (PCA)
>     conversion card available, I would like to use that instead of
>     1GbE SFP port.
>
>     PC is Precision 3680 Tower WS. The OS is Ubuntu 22.04.5 LTS with
>     kernel Linux 6.8.0-49-generic. The NI Linux device drivers were
>     installed according to the guide:
>     https://files.ettus.com/manual/page_ni_rio_kernel.html
>
>     Command lspci -k -d 1093:c4c4 returns nothing. I checked the
>     Terasic PCIe x4 PCA LEDs during operation: If I first power on the
>     NI-2943R before powering up the PC as recommended, the LEDs on PCA
>     stay off. In the other order, powering up NI-2943R after the PC,
>     the D2 edge, D3 power and DN2-DN4 (signal detect output for CH_B,
>     receiver detect outputfor CH_A0 and CH_B0).
>
>     I have tried various grub options, disabling power saving modes
>     there and so on but now just more or less helpless. Does anyone
>     has had similar issues with the similar HW.
>
>     I attached output list of dmidecode, lspci and lshw commands.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------5pCEsApO0017g7kaHt44m8fE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/12/2024 11:44, Martin Braun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A5O27MKb9nVEJLBPfBd1beQmX7v_5QC0TEZjH0Xhy_tmA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>BTW, if you are able to get a 10 GbE card, you can exceed
          the rates of the PCIe link, with almost no downsides compared
          to PCIe.</div>
        <div><br>
        </div>
        <div>--M<br>
        </div>
      </div>
    </blockquote>
    I will second this.=C2=A0=C2=A0 10GiGe cards for PCs are not expensiv=
e these
    days, neither are the SFP+ optical transceivers.=C2=A0 Short<br>
    =C2=A0 optical patch-cords for these are also very very reasonably
    priced.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A5O27MKb9nVEJLBPfBd1beQmX7v_5QC0TEZjH0Xhy_tmA@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2024 at
          11:21=E2=80=AFAM &lt;<a href=3D"mailto:seppo.j.rantala@vtt.fi"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">sepp=
o.j.rantala@vtt.fi</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>Hi, I cannot get the NI-2943R (=3DEttus x310) connected to
            the PC via the PCIe transport connection. The Ettus firmware
            is upgraded to the currently latest one, UHD version is
            UHD_4.7.0.0-0ubuntu1~jammy1. The default HG image was
            uploaded to Ettus. The upload was done via SFP+ Port 0
            Interface, 1GbE copper SFP connected. Since I had Terasic
            PCIe x4 Cable Adapter (PCA) conversion card available, I
            would like to use that instead of 1GbE SFP port.</p>
          <p>PC is Precision 3680 Tower WS. The OS is Ubuntu 22.04.5 LTS
            with kernel Linux 6.8.0-49-generic. The NI Linux device
            drivers were installed according to the guide: <a
href=3D"https://files.ettus.com/manual/page_ni_rio_kernel.html"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/page_ni_rio_kernel.html</a><br>
            <br>
            Command lspci -k -d 1093:c4c4 returns nothing. I checked the
            Terasic PCIe x4 PCA LEDs during operation: If I first power
            on the NI-2943R before powering up the PC as recommended,
            the LEDs on PCA stay off. In the other order, powering up
            NI-2943R after the PC, the D2 edge, D3 power and DN2-DN4
            (signal detect output for CH_B, receiver detect outputfor
            CH_A0 and CH_B0).</p>
          <p>I have tried various grub options, disabling power saving
            modes there and so on but now just more or less helpless.
            Does anyone has had similar issues with the similar HW.</p>
          <p>I attached output list of dmidecode, lspci and lshw
            commands.<br>
            <br>
          </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------5pCEsApO0017g7kaHt44m8fE--

--===============2551859788523522949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2551859788523522949==--
