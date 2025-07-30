Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF01B15DD5
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 12:09:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C08A3867B5
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 06:09:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753870186; bh=Q+P3lUmqLNm9vTQPUhEofrxpO7ZukXc6NDeHLqU3w34=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=n+5kJkCgx+ae/oKM0f6QvYLEdZH0b9kxQr8KNiPGmEr1JPumR1jxO8rJ4Gr+26NJ2
	 tCiPeJH2Ob7fKZwINzijb+Y5WuwDay53pIhNtTODNcZjFrfboFH3M4TS/KOQ2zVQq9
	 Mecob2x5YrVhg57P0/lQvwz2qWioDt9FLLfqWrLg21a0xhZybDF5EbBpfqrJ8DDuwA
	 4rfnYH2d2CN+1/4H4rff2+tomSG9nFT37ql3n1R3NANe+B6a8m+50TKGxgVW5n/Brh
	 bzhgidfTqfyRmCtdyWa9VYlMu6NVpz6OLH40AuC8XqVd4G0rHwssXkkzpUsemfgSMz
	 XtQ4kJ82iISjA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 169C8386504
	for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 06:09:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Fn5tPvJL";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ae0c4945c76so941451866b.3
        for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 03:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753870159; x=1754474959; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zPKq98SVNvzlcgP7Pldo6NdUOq6fs/CTy4CKxhfss0c=;
        b=Fn5tPvJLZJc/LTVkko6Hjso5ZcSSdzKCXWrVBAr3wSPiWTPiqGpU9RDgxpmb2ZO2+O
         pmJ3JcrG+jziRLMWNxck6p6TL0F4jYTzUsUZKEcJ0Gd18eLw7DGNPDnGL4Wu88mtybM7
         4NzQlR5UZ8LG/Yyl67ghscTdhCrY9KpZAq4EPutYcVLhtgCmTrQVQ+azPWHxobnTjyy+
         EGu9ijMViZwUoAqJ8XCtWIeVOswCKXaDvcj1qwNbah7SWjCCessamZO5QLmqQd95GMPn
         d/Hk7h4i1RmhWOd8VZT3BPVqzkHdxEXK1n8Wh1wLkw1y9wjEBCnh4R2L7y+kbZSsy7RT
         qh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753870159; x=1754474959;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zPKq98SVNvzlcgP7Pldo6NdUOq6fs/CTy4CKxhfss0c=;
        b=nAINwbSq+iMFizjmWH+ZSqDAYSXR88xFqfDhXa32Usiym3EYR8IP5qekhCJa3lwLWU
         ODJRkq8m8BHfm+347avmLRJEYyQ4kk5igUsTIYo5FKT3u5eruQq11KnvaOVQAvDN3LMl
         IBmKsrMaxV63biQGU0FwtQRUJPFpnHEtiDuODRWxhQgxVctWhZkcEcIKZvCTrSL8PpkQ
         vMICb3i4DsZvMSza9baNjIInW09hTTe20+idKnUdQwWceW02ddSVf94keTUeCjFr8xuu
         RYXMuiWX9wfdrSiiToyTVKEvRYV4ipUhwMhkLC8JqIXl6txkFBUCjtOsZL95VCbYBLVi
         WO0g==
X-Gm-Message-State: AOJu0YyAUj22MZ1/V73GS+Wkz1qpvEmcsbyC/EPFjS1EpBHsaq2XXyOY
	kW9XLV9HJPXCsWwL/LaIdCUDx9Aeh5+OlMRqi/DOA/kTUbX08qxcHJi0azmBdkK0Xk76RB7mRA5
	9Q9PMKUb1YHGNYEGdqs2UQP+i3grbeH4x4pp5pUibpvbWH0zo4gELOghbiA==
X-Gm-Gg: ASbGnct9uLUBpgdEFXcrdjsg/J/NaCf3n6MwXoG34xqVLJuynJUsiBLsPE9mYFJLsas
	muhJD6gJKYQuJPQKt0laX7RpScg21t4P76d6ExkoDECv0F6OzWwx8SlogMcMnQ3Z8Li/QpINl7e
	nTckY96IQK95Pxn3wLpvIS98vvX7aVYcMOUAsnVohQbjoPBtNJVvAzXGdmShnN8X2pnWVQiW0id
	THG6DWUgUJTyf6Wm2BDRi+mMfl/GSrWIyj6OB0=
X-Google-Smtp-Source: AGHT+IHXj50cej0yg1sdWlqRkgoo9u/tm6wLFLDyMHfdIzBCiBMEPnWkHnml3CAo0Vh5y6RKxa8RrtiUO3dudBhQuak=
X-Received: by 2002:a17:906:730f:b0:ae0:da16:f550 with SMTP id
 a640c23a62f3a-af8fd9b15d3mr277732166b.49.1753870158576; Wed, 30 Jul 2025
 03:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com>
In-Reply-To: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 30 Jul 2025 12:09:07 +0200
X-Gm-Features: Ac12FXwGFb6DWcrBaqdUR7LZBCfySx6nUBcbuTb-8UZYNdtww5MEcRRcGfjnk7I
Message-ID: <CAFOi1A5hKqnG5Vs4qxJSGcPZCkqB1PQhcBCxVsmGWtrCFksavw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: JF5DR35DEUXMTEGBBYSH33WBYF7KXXYN
X-Message-ID-Hash: JF5DR35DEUXMTEGBBYSH33WBYF7KXXYN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JF5DR35DEUXMTEGBBYSH33WBYF7KXXYN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4250122732948036021=="

--===============4250122732948036021==
Content-Type: multipart/alternative; boundary="000000000000c8f165063b22b707"

--000000000000c8f165063b22b707
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Any answer is a variation of "get a better computer" and "get better
software". tx_samples_from_file is an example that is meant to show how to
use UHD APIs, although 20 Msps is pretty slow and this tool should be
perfectly capable of handling that. You can even safely transmit 20 Msps
over 1 GbE. You could try mounting your reference file on a ramdisk. Also,
run benchmark_rate to make sure your connection is capable of handling the
speed. You can also check out
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks, although
those tuning tips are typically meant for higher rates (and for 10 or 100
GbE).

--M

On Wed, Jul 30, 2025 at 8:46=E2=80=AFAM <gechb21@gmail.com> wrote:

> Hello,
>
> I=E2=80=99m using USRP X310 devices on both the transmitting and receivin=
g ends to
> handle a data stream. During transmission, I run the following command:
>
> /usr/lib/uhd/examples/tx_samples_from_file --freq 2484e6 --rate 20e6
> --gain 10 --wirefmt sc16 --ref=3Dinternal --file
> /home/ubuntutx/uhd/examples/tx_transmit_data.dat --repeat
>
> I encounter consistent underflow issues (indicated by "U" messages in the
> console), regardless of the sample rate used. Could you please advise how
> to modify my setup or code to enable stable transmission and reception
> without these underflow errors?
>
> Thank you,
>
> Getaneh Berie
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c8f165063b22b707
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Any answer is a variation of &quot;get a better compu=
ter&quot; and &quot;get better software&quot;. tx_samples_from_file is an e=
xample that is meant to show how to use UHD APIs, although 20 Msps is prett=
y slow and this tool should be perfectly capable of handling=C2=A0that. You=
 can even safely transmit 20 Msps over 1 GbE. You could try mounting your r=
eference file on a ramdisk. Also, run benchmark_rate to make sure your conn=
ection is capable of handling the speed. You can also check out=C2=A0<a hre=
f=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks">htt=
ps://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>, althoug=
h those tuning tips are typically meant for higher rates (and for 10 or 100=
 GbE).</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quot=
e gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul =
30, 2025 at 8:46=E2=80=AFAM &lt;<a href=3D"mailto:gechb21@gmail.com">gechb2=
1@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hello,</p><p>I=E2=80=99m using USRP X310 devices on both the =
transmitting and receiving ends to handle a data stream. During transmissio=
n, I run the following command:</p><p>/usr/lib/uhd/examples/tx_samples_from=
_file --freq 2484e6 --rate 20e6 --gain 10 --wirefmt sc16 --ref=3Dinternal -=
-file /home/ubuntutx/uhd/examples/tx_transmit_data.dat --repeat</p><p>I enc=
ounter consistent underflow issues (indicated by &quot;U&quot; messages in =
the console), regardless of the sample rate used. Could you please advise h=
ow to modify my setup or code to enable stable transmission and reception w=
ithout these underflow errors?</p><p>Thank you,</p><p>Getaneh Berie</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c8f165063b22b707--

--===============4250122732948036021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4250122732948036021==--
