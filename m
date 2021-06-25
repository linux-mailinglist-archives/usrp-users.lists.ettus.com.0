Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7977A3B3B5D
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 05:58:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DDA6383D63
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 23:57:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="fHN+M9DB";
	dkim-atps=neutral
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 01F3D3809E1
	for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 23:57:13 -0400 (EDT)
Received: by mail-oi1-f180.google.com with SMTP id q10so9920199oij.5
        for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 20:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G6HcPlJEJ1i83ZjobBIPt3jnUkOWbAxkfDYgKKBnOwQ=;
        b=fHN+M9DB0xMJMAEt9iDa8PQqIQIph3B56q1dWXPC+KEJn50mJigpS+f7j5gArhd0p3
         41CPlEBCwIa+1jvtzPVvA5OBKR7grfEGKmAnXz4k7L+n65JBNFXr5qfogw+MzpaU9AeO
         Co+uyDpsVYA7EfUn9/04k/zqO6s5wtQjkgmILHCNRqz+48fY3OifjJMyulqEU29Xl6my
         yypmDwi9UiufVLf5uzheKE1g0iPKyX6kreHMS0Tx4Rxm1wChaqSqDRT7d1Fs7QZxnvLw
         dqWuJQx7/feoyaUp9EBezaX4QS9SOhdeZjK+fJgTjzf5wK3jY7CsKFEzFTkKbiR8tHxM
         x/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G6HcPlJEJ1i83ZjobBIPt3jnUkOWbAxkfDYgKKBnOwQ=;
        b=TV01VmfF9qFTpj2Hrnpl0ad8ALs6Z40ImooKSrZp3bnQBk2VdH0/0uXem/qEorLIDb
         5vG1sjKALIkc4Mjt8ARzmjbQXlgLce5Vb8vseeKOily/fDBgBdRReh9n+NPR04mYCMVQ
         +xxLZAGoMATcdHOtgJleaO14C32XpZ7tYnmW9HnPn6syY1+QTmeWOlxRgWfESS4Bog9D
         H28rizTTDIQF5D63dTrDSZYs4pEgSavEwibuIrpVhfqQeaVB2SNr/jWkfIF2D02/tql8
         /dxKJAErN95AaJHNwd+/i6b+Y0S8MwziOtHvi1Rh0D4j/l4eUP2qeNoHyMaeKQy+Akjj
         VVBA==
X-Gm-Message-State: AOAM532qftgczixtWU8pUADVTbJfmEjIV7cEFGQuKX8ljgNbTcdaY0yl
	T8cwGhCXF5yznpylnQVIylQ/1ppQGhWh22UeFA+Z1wXm7m/jZQ==
X-Google-Smtp-Source: ABdhPJysNgTsf3+2/+YM1C3JLdtcSb4oXpFePAfxM+X6Ooq2ywRpbMSj2mlkAxBJFWctNj2GzPrbPrk0ls1RPhPzeN0=
X-Received: by 2002:aca:170a:: with SMTP id j10mr10184710oii.23.1624593433252;
 Thu, 24 Jun 2021 20:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3ngMGQGFLtNSnHstCT5XuYZqQo1j7VNXcR7jA0Rv9QP+g@mail.gmail.com>
In-Reply-To: <CAKHaR3ngMGQGFLtNSnHstCT5XuYZqQo1j7VNXcR7jA0Rv9QP+g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 24 Jun 2021 22:56:58 -0500
Message-ID: <CAFche=hDE6qUZg7PpaiLvvPNrJd+Ph1E6DW1O0aBodUYp76Xew@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: DC4QX6B65FVXDFWSN6EEPT5P47NCQIRX
X-Message-ID-Hash: DC4QX6B65FVXDFWSN6EEPT5P47NCQIRX
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 OOT control port inaccessible when routed statically
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DC4QX6B65FVXDFWSN6EEPT5P47NCQIRX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4423481110151243507=="

--===============4423481110151243507==
Content-Type: multipart/alternative; boundary="0000000000007e6ac905c58f22e7"

--0000000000007e6ac905c58f22e7
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

Could you share the YAML description of the FPGA and your block with me,
and maybe the generated rfnoc_image_core Verilog file? I'd like to
understand what's going on.

Thanks,

Wade

On Thu, Jun 24, 2021 at 8:50 AM Dario Pennisi <dario@iptronix.com> wrote:

> Hi,
> i developed a rfnoc block based on uhd 4.0. this block has two input ports
> meant to be connected statically to the two radios and to have a single
> output port that is meant to go to the PC.
> if i connect the radio0 to in0 and an endpoint to in1 so that i can either
> feed data from the PC or from radio1 everything works however if i connect
> radio0 to in0 and radio1 to in1 statically gnuradio won't start saying
> there's no route to the control port.
> I see that the generated verilog file has a control port connection in the
> control axi crossbar however for some reason UHD seems not to know how to
> reach it.
> Is there any possibility to handle the case of connecting everything
> statically? i really need to save as many resources as possible in the
> final build.
> thanks,
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007e6ac905c58f22e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>Could you share th=
e YAML description of the FPGA and your block with me, and maybe the genera=
ted rfnoc_image_core Verilog file? I&#39;d like to understand what&#39;s go=
ing on.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Jun 24, 2021 at 8:50 AM Dario Pennisi &lt;<a href=3D"mailto:da=
rio@iptronix.com">dario@iptronix.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>i developed a =
rfnoc block based on uhd 4.0. this block has two input ports meant to be co=
nnected statically to the two radios and to have a single output port that =
is meant to go to the PC.</div><div>if i connect the radio0 to in0 and an e=
ndpoint to in1 so that i can either feed data from the PC or from radio1 ev=
erything works however if i connect radio0 to in0 and radio1 to in1 statica=
lly gnuradio won&#39;t start saying there&#39;s no route to the control por=
t.</div><div>I see that the generated verilog file has a control port conne=
ction in the control axi crossbar however for some reason UHD seems not to =
know how to reach it.</div><div>Is there any possibility to handle the case=
 of connecting everything statically? i really need to save as many resourc=
es as possible in the final build.</div><div>thanks,</div><div><br clear=3D=
"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><=
br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.33=
33px"><br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007e6ac905c58f22e7--

--===============4423481110151243507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4423481110151243507==--
