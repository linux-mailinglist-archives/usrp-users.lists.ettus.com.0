Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644F8737DA
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 14:38:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7652C385306
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 08:38:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709732299; bh=0Qb4b7h5GyzebIS/1uwAsWw9Mqk10g5KFIxqJF/jTkI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GiN/YNRktKa5LJU8S0hGuKL2kjjHmS/WxhNR3oHPDpqVgBeACBZlmmimedUyao8Ll
	 Wb/iePPWQZ4G0CIEhcL/ClCDSRfYiqDr1+K+RD6UV1T0lTgTuOhT5cdPrlIq+Tk2VE
	 o1E31OZ8kmRJNTkBinXAvkQ06pB/t+Nigk0OscFewK/16xNBfWIrrZ1qS3QyaepwJe
	 E66SF+7a6OVdkc6guyTjEcK2AwB9IonDe9aDdgV86eCYFgM04Wexj3Ku/Ob6PCd/tt
	 LqH4O7Pta9WpgKVbhef0gQv/k9iEr70fmRgY1IX/MVJEMmNfAwPIuyPnQwOtk2Tczj
	 FbXIoRHUGvGVw==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 36F9D385108
	for <usrp-users@lists.ettus.com>; Wed,  6 Mar 2024 08:37:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="d5+fNTk1";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a456ab934eeso121063866b.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Mar 2024 05:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1709732259; x=1710337059; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gubHEZ0doDoG4dv5QyMCTBal8+eJOWGiABqa5ZBZAfg=;
        b=d5+fNTk1aBbZebRqY3WrxByngjK8Nq7DCf0Jwcy8sEzvkj/doft0oLLwyHBD2GWy6L
         lxmXapYRX+BL3FbUPY03reJNNjAdRRswqQz7gs1HiqeEMDN7TcsRLKup2F/uPNkm3oSk
         U027MWLF8P4K+5tgSLo2guS9oc/1P6pZQehI3UBFIC9TVhjrHLeKRTFCm5ezYonTfIks
         9hMr0/BLhxPMx0Yhw2JJGk0F25UFtF+64x9oyTYjlfCp87c9ytzp+lpEthfZQeK7Bh5r
         dgYgQtsp04Qg7sjUpUDNOzbv+WaHdhsqyr+q9yk1gL3VPUrLO+fYOfYnn7x0JKGpzsSW
         Hz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709732259; x=1710337059;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gubHEZ0doDoG4dv5QyMCTBal8+eJOWGiABqa5ZBZAfg=;
        b=gs6Ry3kHNjPsiOW4vErsoQ3MZlDTlZL35CY23wQPtqGnhM4glK0QLo//v+jada6Ux+
         vBqPc5YUWIsFrmwF3EGSd+C9iOPN7/GdUwDk2nXmZ6y3gYBOi/3j/xvpi82S3ZP4hIrd
         hKrDw1UGUEaBTsbSEJt2EMHTTdgGzZVpuiLiKEAEhKPO9JjeT/61ATxr5u7o4qo3ZYbO
         pR3R+L17+1bQDH/TPx4nwHp2YqvUAOy3Ksbnbpfa4Dv0XqMIWGQZVQwQTVsI4bbEUF2J
         ZXGfWnAciJR6ClacaVBzLX8Mv5RsyzBVvSBOPznGJSw73/3ZhALmME9996LNZQOmCM8P
         XRmA==
X-Gm-Message-State: AOJu0YzKaAUmqiN+5vlPO8yJqOdn2bmQ+uTOfPRGpzdamXATR9og1pi6
	QjIGp32zd7ka0+EGvkCLfpbGCL5QEOzadQ0YrvpV2W2b9KhJbztGNsJNcdSgYp210oakD9de1pp
	CwmLXQSszrl6XPjIObqGl/uKBfZo4p/5QhTj9wSMM
X-Google-Smtp-Source: AGHT+IF4tTfPwjFe9qE5jZokVlz2vNkxSjzBpmr0T5/IZ/6fVnPc+6hxq3TtD7qrkV1SsdtnrZ8PmQuMg1hyQA/IlH0=
X-Received: by 2002:a17:906:4895:b0:a45:a736:eaf4 with SMTP id
 v21-20020a170906489500b00a45a736eaf4mr2946151ejq.72.1709732259092; Wed, 06
 Mar 2024 05:37:39 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3nZa=rZZqQZyw+KYkZukKzN=5BjNkh8=6OQ81-i43yXsw@mail.gmail.com>
In-Reply-To: <CAKHaR3nZa=rZZqQZyw+KYkZukKzN=5BjNkh8=6OQ81-i43yXsw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 6 Mar 2024 07:37:23 -0600
Message-ID: <CAFche=hUs2WbQ9tc++UXFbS99kdPYOfXRxQ7BNvYR6Q=dKtHSA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: 3AFTCKH5FZTLQHJR5VKQK4XYD4GUM5QJ
X-Message-ID-Hash: 3AFTCKH5FZTLQHJR5VKQK4XYD4GUM5QJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: question about X410 _d images and CHDR width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3AFTCKH5FZTLQHJR5VKQK4XYD4GUM5QJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5149160917685970335=="

--===============5149160917685970335==
Content-Type: multipart/alternative; boundary="000000000000f6f8080612fe0f21"

--000000000000f6f8080612fe0f21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dario,

The _d version is optimized for use with DRAM and the non-_d version is
optimized for streaming to a connected host computer over 100 GbE. On the
non-DRAM versions, the wider CHDR width gets applied to the stream
endpoints, which connect to the host computer via 100 GbE. In testing we've
found that PCs have a really hard time keeping up at high rates, so that
width is necessary to minimize any slowdown through the 100 GbE link.
Effectively, the 512-bit is sized to handle 100 GbE, not the RF BW.

Regarding the MTU, the first thought that comes to mind is that the MTU
size also includes the packet headers. So if your payload is MTU size, you
may not have left enough room for the packet headers.

Wade

On Mon, Mar 4, 2024 at 10:25=E2=80=AFAM Dario Pennisi <dario@iptronix.com> =
wrote:

> Hi,
> i'm working on an X410 image that needs to run at 400 MHz (500 MSPS). i
> see there are two templates one called X410_400 and one called X410_400_d=
.
> the first one has CHDR_W set to 512 which seems quite oversized while
> X410_400_d has CHRD_W set to 128
> if i'm not wrong bus clock in both cases is set to run at over 200 MHz so
> sending 4 samples per clock should be more than enough so why does the on=
e
> with 512 bits exist?
>
> as a secondary note i'm having some trouble with my block which is a
> signal generator that connects through static routes to radios. in this
> case if i set packet length equal to MTU radios won't output anything
> whereas if i set them to output MTU/2 it seems to work.. any hint?
>
> thanks,
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f6f8080612fe0f21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>The _d version is =
optimized for use with DRAM and the non-_d version is optimized for streami=
ng to a connected host computer over 100 GbE. On the non-DRAM versions, the=
 wider CHDR width gets applied to the stream endpoints, which connect to th=
e host computer via 100 GbE. In testing we&#39;ve found that PCs have a rea=
lly hard time keeping up at high rates, so that width is necessary to minim=
ize any slowdown through the 100 GbE link. Effectively, the 512-bit is size=
d to handle 100 GbE, not the RF BW.</div><div><br></div><div>Regarding the =
MTU, the first thought that comes to mind is that the MTU size also include=
s the packet headers. So if your payload is MTU size, you may not have left=
 enough room for the packet headers.=C2=A0 <br></div><div><br></div><div>Wa=
de<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Mar 4, 2024 at 10:25=E2=80=AFAM Dario Pennisi &lt;<a hr=
ef=3D"mailto:dario@iptronix.com">dario@iptronix.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div=
>i&#39;m working on an X410 image that needs to run at 400 MHz (500 MSPS). =
i see there are two templates one called X410_400 and one called X410_400_d=
. the first one has CHDR_W set to 512 which seems quite oversized while X41=
0_400_d has CHRD_W set to 128</div><div>if i&#39;m not wrong bus clock in b=
oth cases is set to run at over 200 MHz so sending 4 samples per clock shou=
ld be more than enough so why does the one with 512 bits exist?</div><div><=
br></div><div>as a secondary note i&#39;m having some trouble with my block=
 which is a signal generator that connects=C2=A0through static routes to ra=
dios. in this case if i set packet length equal to MTU radios won&#39;t out=
put anything whereas if i set them to output MTU/2 it seems to work.. any h=
int?</div><div><br></div><div>thanks,</div><div><div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-=
family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br styl=
e=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><=
br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f6f8080612fe0f21--

--===============5149160917685970335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5149160917685970335==--
