Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD67A0F96
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2019 04:31:28 +0200 (CEST)
Received: from [::1] (port=34584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3ADe-0008U5-4m; Wed, 28 Aug 2019 22:31:26 -0400
Received: from mail-lj1-f172.google.com ([209.85.208.172]:43421)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i3ADb-0008PE-8z
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 22:31:23 -0400
Received: by mail-lj1-f172.google.com with SMTP id h15so1442667ljg.10
 for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2019 19:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BW4Tg1GdVkPDnl01l5uraVbRAZPs2X7ls9oxz74V//U=;
 b=oj4F0FO2Sxi9NHCryYeon/0XSahcjIVhCB8Ez14u6mHVwvqo0T7UPumYrUayHdpqBM
 aU17dPfLOniGpjRux4i1wa9gD0Cggdj+2S958KUCFCxBOq0leYrVAlAB67fOlZas8bme
 wjaWv/1NtYGA+cAMGNlijpHdUcLdDf6LcHurZGWE74Xi2PAvBY5T4bzFGQKgfRGnVb7P
 B7BXD5kkeVIKh1x9jvWp0PzN4UKjafRw2k/pu5cc3GnBqay6sfsA6t0uNijN7y8BVSDM
 v7HIJta/QFwWtn88KptKeBBEOQ1jQ7ZcS1ZT9pPCHtjOvcfIHAIZM5JeVruCiaFTgQwp
 IQyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BW4Tg1GdVkPDnl01l5uraVbRAZPs2X7ls9oxz74V//U=;
 b=NqvyO0z6EqJhR/xS9GY7j+ljOsKGVnmzOczaLCLQcmaO9AFOYW4GOfgUPy5sgyFX7g
 tK22mfDJ1MUAyxZgV0FqSNtdy06dIfDMbcewR2zYvsI6YYA/6P+PyW27w+lOYS7IUsDc
 +AIfdDnkcd186hL9/+1Z4a7Ft5A6PlMpo4r/wNRltJEYaxq61okm3ftormSUGvWBEoYs
 U7KvZIOccnCW8x+UlM4vMPeNjFUxUN70JBoLddQqSC5D7S0K9OL2SgiqJ0m6cpzBs+8x
 IyaX0y1TB0zlubkNIgVcdXYnzBWG7Hd8Z9zQtDTp12pvBi9GPKj6yJO2zVKZFXFVq51R
 T4XQ==
X-Gm-Message-State: APjAAAVTb+sOp/pwJpcNbNOMbx5Xy2rNrVsv9/h/Q7iqk4n1OaQCnDBb
 hFSDlC8oPlhHck6al40aMvyPQDRrocBkq5mtozn7kxoj
X-Google-Smtp-Source: APXvYqyGjg4YYq1yHQtC+EqX3ABjnLdzqjf2b6tJkgi1YwqURdaOKsVxeNUczUO65RQfRvtFycndrD9ZD66AxqP4n+0=
X-Received: by 2002:a2e:b0c6:: with SMTP id g6mr3900828ljl.60.1567045841880;
 Wed, 28 Aug 2019 19:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOR0_ui_9E3Mub_j4grbCAs+7bX-iD+gvbXtgOhyT3Pc8nz4uw@mail.gmail.com>
In-Reply-To: <CAOR0_ui_9E3Mub_j4grbCAs+7bX-iD+gvbXtgOhyT3Pc8nz4uw@mail.gmail.com>
Date: Thu, 29 Aug 2019 11:30:05 +0900
Message-ID: <CAL7q81vFQA_dVnwYLcBEOW1+PsPduvnL1isCt8sCUw0TThuuaA@mail.gmail.com>
To: Huacheng Zeng <zenghuacheng@gmail.com>
Subject: Re: [USRP-users] RFNoC OFDM FPGA Build error on X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7526215830821801247=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7526215830821801247==
Content-Type: multipart/alternative; boundary="000000000000c09d420591384afc"

--000000000000c09d420591384afc
Content-Type: text/plain; charset="UTF-8"

Hi Huacheng,

Unfortunately, the Schmidl Cox and Equalizer block's code has gotten out of
date. I would suggest looking at the blocks as a good starting point for
making your own version.

Jonathon

On Thu, Aug 29, 2019 at 4:57 AM Huacheng Zeng via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have been trying to build FPGA image for the RFNoC OFDM blocks -
> schmidl_cox, eq and ofdm_constellation demapper.
>
> I have tried different combination of build with just schimdl_cox or eq or
> ofdm_constellation_demapper:
>
> 1) For eq build, I always got the following error:
> ERROR: [Opt 31-2] SRLC32E
> x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e
> is missing a connection on D pin.
>
> 2) For schmidl_cox or ofdm_constellation_demapper, I got the following
> problem:
> ERROR: [Builder 0-0] The design did not satisfy timing constraints.
> (Implementation outputs were still generated)
>
> Can anyone help with these issues?
>
> Thanks,
> Huacheng
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c09d420591384afc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Huacheng,<div><br></div><div>Unfortunately, the Schmidl=
 Cox and Equalizer block&#39;s code has gotten out of date. I would suggest=
 looking at the blocks as a good starting point for making your own version=
.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 29, 2019 at 4:57 AM Hu=
acheng Zeng via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<br><br>I have been tryi=
ng to build FPGA image for the RFNoC OFDM blocks - schmidl_cox, eq and ofdm=
_constellation demapper.<br><br>I have tried different combination of build=
 with just schimdl_cox or eq or ofdm_constellation_demapper:<br><br>1) For =
eq build, I always got the following error: <br>ERROR: [Opt 31-2] SRLC32E x=
300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].sr=
lc32e is missing a connection on D pin.<br><br>2) For schmidl_cox or ofdm_c=
onstellation_demapper, I got the following problem:<br>ERROR: [Builder 0-0]=
 The design did not satisfy timing constraints. (Implementation outputs wer=
e still generated)<br><br>Can anyone help with these issues?<br><br>Thanks,=
<br>Huacheng=C2=A0<br><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c09d420591384afc--


--===============7526215830821801247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7526215830821801247==--

