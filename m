Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9810C4B2A7D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 17:36:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB3413857B9
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 11:36:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WWT9dY0f";
	dkim-atps=neutral
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DD3A385472
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 11:34:00 -0500 (EST)
Received: by mail-pl1-f180.google.com with SMTP id y7so5112514plp.2
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 08:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y7Vw75Yn8WjP8w2YAoB+ak5OsajF5Z+oovMRpcVEMe0=;
        b=WWT9dY0f/DRoHiVY1Zq3dBCwuiOFWcafFfkcUo9EnaI3NX1ZdD4vqiA/Pod3pKdigU
         tfvy2LegmozAxzPpFp/J/5fmESV8BmnGAEpxYyGh8jmSsJlLFd/W68MnvJjO+yINwAII
         d6zRYZJcXPQF1GvASEy+9QMd3x7IRuslTbVHAFiMm1jfpjN+T34oIMs7aKwu8/f/xmmt
         co0CzNyRcpnDNPhvV96ycnwZiLoYDZtoCil73bfOz9pDFd/PN7iuWbpqGPZkYDlLv+lQ
         A0p5Qx08PXUK5DlWPxAMBSx0lpwq2zDoAjnptAq1bao9250Q4MmRNuwNWN5YlURM6p7y
         CX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y7Vw75Yn8WjP8w2YAoB+ak5OsajF5Z+oovMRpcVEMe0=;
        b=qKckvCk2AqqqD4QUYjckEL8o5WAAaIkIBC/0tE3Am2HiixqETuY1W2t7Zkl6xsWzoN
         ht6YwRZCb2K5oFSOAWslYeQDkMu3MWifsP3vMNvfPu3WjEVUwp+E099XMmTsNSLDArmE
         eegKDuVm3+9YDGlNY21MfwFyn+at9saEj5p5/6A4wLI5ErZBRVJ3afnWT/lPGmWIprld
         jrjhDhDno5uEIlDBSIgR9mOIrIhhuDEBtAGcDsHsyOP0Nc21hauG3Svb5IGnDdUO6oIr
         75JB+jVadoArQVZN2Qhr48KX1pDMoqE5gjxMEv1Vo/0kL4yS/6KJfVR5LK4VbF38PXXp
         BZNA==
X-Gm-Message-State: AOAM532As33On8p9srufRVWw/pq9Hf+nTlva/4lYzjI7RcwfyNutcp3I
	DB1baqB+AsgDAyNlUePf8RdksegGAuY7LbunqN541R4B
X-Google-Smtp-Source: ABdhPJwviEeZH2NgdLMUCvC/nHXbQHpFJYO2as6A4HNxslNhdLCe+Vs+dYF8RHkkhnD0XjyK99ng14rPd16vBmGZ1gQ=
X-Received: by 2002:a17:903:1112:: with SMTP id n18mr2178328plh.163.1644597239486;
 Fri, 11 Feb 2022 08:33:59 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAPKzeN=Ei1g6J4fOL+KcWff8e99afBHUG5w7kZx5xnpQA@mail.gmail.com>
 <CAEXYVK623aF24R2wT_ZWcTXUrjcSv9E4=H3fA1tt2SLanij6eA@mail.gmail.com> <CAOucfAOtFXa1o230VnLB_84T11Jm_0wY-fPFnyXOA28bX-em5w@mail.gmail.com>
In-Reply-To: <CAOucfAOtFXa1o230VnLB_84T11Jm_0wY-fPFnyXOA28bX-em5w@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 11 Feb 2022 11:33:48 -0500
Message-ID: <CAEXYVK6apaihkC0=bU=wsvKtLryQHNZmCvf6q2K9bzKY8EfzDA@mail.gmail.com>
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Message-ID-Hash: U54M2WR4ERRZWWZ2WGMBGMZ3BOQ2XDYO
X-Message-ID-Hash: U54M2WR4ERRZWWZ2WGMBGMZ3BOQ2XDYO
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Could not find block with Noc-ID ...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U54M2WR4ERRZWWZ2WGMBGMZ3BOQ2XDYO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7770726757160203652=="

--===============7770726757160203652==
Content-Type: multipart/alternative; boundary="000000000000421e0405d7c0a223"

--000000000000421e0405d7c0a223
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 11, 2022 at 10:14 AM Lautaro Lorenzen <
lorenzen.lautaro@gmail.com> wrote:

> Thanks for your prompt response (and to Rob for his response).
>
> You are right, my mistake, it is a warning. Besides its nature, it
> prevents the gnu-radio flowgraph from working at all, and prevents
> uhd_usrp_probe from displaying the correct block name.
>
> Setting up the environment variable worked just fine, but I'm wondering
> how I should include two OOT blocks if I've to set the env variable to one
> path?
>

Separate the paths like you normally would for any other PATH environment
variable:

  $ export UHD_MODULE_PATH=/path/to/one:/path/to/two

Brian

>

--000000000000421e0405d7c0a223
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 11, 2022 at 10:14 AM Lautaro =
Lorenzen &lt;<a href=3D"mailto:lorenzen.lautaro@gmail.com">lorenzen.lautaro=
@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-fa=
mily:arial,helvetica,sans-serif">Thanks for your prompt response (and to Ro=
b for his response). <br></div><div style=3D"font-family:arial,helvetica,sa=
ns-serif"><br></div><div style=3D"font-family:arial,helvetica,sans-serif">Y=
ou are right, my mistake, it is a warning. Besides its nature, it prevents =
the gnu-radio flowgraph from working at all, and prevents uhd_usrp_probe fr=
om displaying the correct block name. <br></div><div style=3D"font-family:a=
rial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial,helvet=
ica,sans-serif">Setting up the environment variable worked just fine, but I=
&#39;m wondering how I should include two OOT blocks if I&#39;ve to set the=
 env variable to one path?</div></div></blockquote><div><br></div><div>Sepa=
rate the paths like you normally would for any other PATH environment varia=
ble:</div><div><br></div><div>=C2=A0 $ export UHD_MODULE_PATH=3D/path/to/on=
e:/path/to/two</div><div><br></div><div>Brian</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--000000000000421e0405d7c0a223--

--===============7770726757160203652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7770726757160203652==--
