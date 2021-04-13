Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3835DFB3
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 15:06:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47F2E3841BB
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 09:06:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ORUtes1c";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 26408384160
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 09:05:50 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id j7so12604365qtx.5
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 06:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=aHFV0a6khdpqFiW98EoNZRguk5RPl+JmLD/5E5s8BCs=;
        b=ORUtes1c//fnwp7s/1Fi/hB57MhZIC3LP+S1yaTLZ/mmcBKAkFs/SGnF3wKfToYsyJ
         sZrawffN968F4t4E52PSDLVQDWqfv2OWeAn3XjivJuEPgT8D7f8wn80U1xXLLZ2Ttb6z
         qfUK7crkfzkOJSFxKt6vFuXUDgUl7CY8WVDaz7bcEF7K41L8eGqEyRBRpTtSg+V/bGCR
         tkEUOTlykoGq1+L/jrHEO0oMIaP2iA/a6CQTmRgIZh4tkHL5IjSD+mRwk5Tudm7hFVfn
         OK614TvmM08WhB9DTH9i8f7dskm+A9GLnCWdVwT4UwSmLmNgteBdKnPehEDnRRnJknla
         sZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=aHFV0a6khdpqFiW98EoNZRguk5RPl+JmLD/5E5s8BCs=;
        b=FUMCz8c8/TD9vU0YADmRbr3xvf6/ASTVIdMLOuEml2Pl1oR/qvgqwFarGWEp1hMBhb
         KlZ/1oZfUw7+S7Iem5eq6nmBbpCcFO9isLoVrvVFK//1SDqMsyiRZLJhNrwFRVuVsRAe
         6k6KjWURnZJOG4BtOpxMCxzIo9xVICgVsZfg9UkKDtamwco4ry7rTXvzoRa2VJ+H8aXA
         Hk+gla+7qMiMFhh5RuEjVzF6cZIdhWoUFqKzI3S7530QXzaOt1vrBNlrUFG4LNzV0MAf
         swfswgcr3lvTwwW2IWEyAXJLevkCz97zGDqBkCidaTXvTT9fN4EGsv7PFM0y4ayXSbfx
         sylA==
X-Gm-Message-State: AOAM530DBLKgPLuoFxGxs1H1Jxolymm91DkFC+5VRDqV5oIOr2vdmMz+
	MFG7XbECCUY7RQGFhknUIG72E6/idew=
X-Google-Smtp-Source: ABdhPJwsjRZaEd8L6gdJCiG05DAWHlonPLjLJ1NBfH9i/4hkgEUSDm1ZjjS6faXk57m6+TuVChkihA==
X-Received: by 2002:ac8:5847:: with SMTP id h7mr30680480qth.108.1618319150434;
        Tue, 13 Apr 2021 06:05:50 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id g3sm9697844qth.66.2021.04.13.06.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:05:50 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Apr 2021 09:05:49 -0400
Message-Id: <B1D3B718-A22B-434F-9F8E-A9599EAA0049@gmail.com>
References: <RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08@lists.ettus.com>
In-Reply-To: <RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08@lists.ettus.com>
To: brendan.horsfield@vectalabs.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: O3MTEIF3WWFEG6GOQ7AMIRPWL2NKR7HC
X-Message-ID-Hash: O3MTEIF3WWFEG6GOQ7AMIRPWL2NKR7HC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O3MTEIF3WWFEG6GOQ7AMIRPWL2NKR7HC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2834403669699952220=="


--===============2834403669699952220==
Content-Type: multipart/alternative; boundary=Apple-Mail-049B5CFE-D0F2-4B77-B719-C7F51D76BEA5
Content-Transfer-Encoding: 7bit


--Apple-Mail-049B5CFE-D0F2-4B77-B719-C7F51D76BEA5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



Sent from my iPhone

> On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com wrote:
>=20
> =EF=BB=BF
> Hi All,
>=20
> I am using a Python script to capture a short burst of rx samples from my B=
210. The script is based heavily on the Ettus example =E2=80=9Cbenchmark_rat=
e.py=E2=80=9D, with a couple of additional tweaks I took from the Ettus GitH=
ub repo (https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/us=
rp/multi_usrp.py).
>=20
> In my script I am calling my rx sampling function repeatedly using a =E2=80=
=9Cfor" loop. Any errors that occur during sampling are stored in a uhd.type=
s.RXMetadata() object, just like in the original Ettus script.
>=20
> Here=E2=80=99s the strange part:
>=20
> While the script is running, the letter =E2=80=98O=E2=80=99 is printed on t=
he screen about 50% of the time, which I believe is an overflow warning from=
 the Fastpath logger. However, the number of errors being detected by the RX=
Metadata() object is almost zero. How can this be?
>=20
> Some questions:
>=20
> How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning? What=
 does it actually mean? Does it mean that this burst of samples will be corr=
upted/incomplete?
>=20
It absolutely means that samples were lost.=20

The metadata should include time stamps that will allow you to compute how m=
uch was lost.=20

> Why is the RXMetadata object not returning an error every single time that=
 the Fastpath logger does?
>=20
This I=E2=80=99m not certain of.=20
> Thanks,
>=20
> Brendan.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-049B5CFE-D0F2-4B77-B719-C7F51D76BEA5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 13, 2021, at 3:=
05 AM, brendan.horsfield@vectalabs.com wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi All,</p><p>I am using a=
 Python script to capture a short burst of rx samples from my B210.  The scr=
ipt is based heavily on the Ettus example =E2=80=9Cbenchmark_rate.py=E2=80=9D=
, with a couple of additional tweaks I took from the Ettus GitHub repo (http=
s://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/multi_usrp=
.py).</p><p>In my script I am calling my rx sampling function repeatedly usi=
ng a =E2=80=9Cfor" loop.  Any errors that occur during sampling are stored i=
n a uhd.types.RXMetadata() object, just like in the original Ettus script.  =
 </p><p>Here=E2=80=99s the strange part:</p><p>While the script is running, t=
he letter =E2=80=98O=E2=80=99 is printed on the screen about 50% of the time=
, which I believe is an overflow warning from the Fastpath logger.  However,=
 the number of errors being detected by the RXMetadata() object is almost ze=
ro.  How can this be?</p><p>Some questions:</p><ul><li><p>How seriously shou=
ld I take the Fastpath =E2=80=98O=E2=80=99 warning?  What does it actually m=
ean?  Does it mean that this burst of samples will be corrupted/incomplete?<=
/p></li></ul></div></blockquote>It absolutely means that samples were lost.&=
nbsp;<div><br></div><div>The metadata should include time stamps that will a=
llow you to compute how much was lost.&nbsp;</div><div><br></div><div><block=
quote type=3D"cite"><div dir=3D"ltr"><ul><li><p>Why is the RXMetadata object=
 not returning an error every single time that the Fastpath logger does? </p=
></li></ul></div></blockquote>This I=E2=80=99m not certain of.&nbsp;<br><blo=
ckquote type=3D"cite"><div dir=3D"ltr"><p>Thanks, </p><p>Brendan.</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-049B5CFE-D0F2-4B77-B719-C7F51D76BEA5--

--===============2834403669699952220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2834403669699952220==--
