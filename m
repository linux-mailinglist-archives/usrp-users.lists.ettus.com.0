Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE85EE4D6
	for <lists+usrp-users@lfdr.de>; Wed, 28 Sep 2022 21:12:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 487B53840DF
	for <lists+usrp-users@lfdr.de>; Wed, 28 Sep 2022 15:12:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664392356; bh=SXOvUeD6atLNV4O3TiXJNRacZNEkCagX6m1+zlcgXiM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Uk6Ekw27+GstMVxGaMLMj/kY6SXfkufvA5vVYBwlvhm8+44r5+RSwwhJXAeor57tf
	 hdlXhfinQId0myjidimuBZ9DRndHIc/vUwaQTTyUvTzbpKm/X3q8jGrSjhfKTOUzvn
	 K5z0pTRNn+oKN10s9KN28jhfzcx0K/Sadf1WihUlBiQg4lVj6idJbcbF5qvzCJeBOZ
	 V0DHkawfQsiIVtlAKIkgxDbYJIEGUpcC7lO4YdanRiyK3y4iXHniurJAqJk9CeSn9r
	 fd1uN+ue1aztJ4qC89pBdgG3BUYODaIhsQJQOT4/WSU2vR8cDWeBj1llCvvQ+wgjXz
	 W4G2Zhb/nMuWg==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 471783840CE
	for <usrp-users@lists.ettus.com>; Wed, 28 Sep 2022 15:11:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="rWj4GbTG";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id f20so18526440edf.6
        for <usrp-users@lists.ettus.com>; Wed, 28 Sep 2022 12:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=H4y0A1B7bmOkfT1qb60jBk4Qt/RcF4TZd/lMWcKrLOk=;
        b=rWj4GbTGFBsT8vRMdcxkL8BpTwgROupqhyHS8axxGH7NNg5vnUpdXXAxmqxLbe3iNg
         XVWw+BmtzQWSa5GbAvR7GbpytIwlO04T5LEwkrypKlES79HTsHINDJZFsncl6ctw1hka
         /lnrfwRR+RwEepV7vs0eVk9Hu5lWdSRkQ4iBf1A4pl/U9UjZ5m3tJRXeMs/lNeY56RaU
         e5g1JEPltQTzDSn5luVMtrcd/J5rnzNYvFOx7SZjWl00xDR7nzDy7yhT8+UnEl0okGgc
         3ORNIhuUFysW0oBpWytDUiq40b88bx1YoAjoQXxgwGOyH7/1ttJRQLBJ04tIwuQ/H1Aj
         wbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=H4y0A1B7bmOkfT1qb60jBk4Qt/RcF4TZd/lMWcKrLOk=;
        b=plXGxmyQz82RFzLugtIaMB772kpKgdaPYuBvv2mJTQidAHTKbN0527mMmwy5smgV+W
         2R6M5mIHUm4NvNBWQnk1glgBnxc2TE5bTcomBaiz+xGaFqKQNztrzBLdpK5DwPmHqpWn
         qP/RU8fhfFKJqDc3xww3o5arBzEmvecStm0560K51j9HSYHauQNfrUO21GH3Lyz8zHFZ
         vCYcFbUwfy7MBPJ5vD0+v19oenU1vyKCBaUp6Khay/w8jXI9MlkUY1rlGoLxzh+iSqPo
         ILmh+M7qojhJxT6G3LEvoB3VBx6S6BQQWNSDM7qlZ5xv7hL/laiTInTRKBf3We02+U4a
         //pw==
X-Gm-Message-State: ACrzQf14bGaGYqEBTQpbRkNJCsOlpOBe267SQqG9sSom28bS7U8hbNPi
	QvzMQIE41DNhusKoVqC7Nv0mwsXxfodnmdIc7SlSFJQVpe804A==
X-Google-Smtp-Source: AMsMyM6uiCW279iUZJNcExw+FQy1/RT9F2U6Fyxtyxl8NwNKTZzj6OZxsPQ5+Fw5qsJtZUwSocwJRfiWVD5bY3Elok8=
X-Received: by 2002:aa7:dc0d:0:b0:443:e1ca:bdb1 with SMTP id
 b13-20020aa7dc0d000000b00443e1cabdb1mr34904382edu.62.1664392287053; Wed, 28
 Sep 2022 12:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6fAK6Qv7b+0_uLBNmZnO8eV4YZ4YS=-ACE34jDjrXVatg@mail.gmail.com>
In-Reply-To: <CAJhOL6fAK6Qv7b+0_uLBNmZnO8eV4YZ4YS=-ACE34jDjrXVatg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 28 Sep 2022 14:11:10 -0500
Message-ID: <CAFche=j0ckmfFsx2U=YMLm4M=2SUfQYqwaSvibrS+v9BzDZoDg@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: YKMMYJZSDWTEWKE2BXRTUB756HGJYBR6
X-Message-ID-Hash: YKMMYJZSDWTEWKE2BXRTUB756HGJYBR6
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ChdrPacket and ChdrData errors and warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YKMMYJZSDWTEWKE2BXRTUB756HGJYBR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4470069591744053502=="

--===============4470069591744053502==
Content-Type: multipart/alternative; boundary="000000000000097df905e9c187b4"

--000000000000097df905e9c187b4
Content-Type: text/plain; charset="UTF-8"

Hi Kevin,

The BFM for CHDR does some checks to make sure packets are formatted
correctly. The error message means the "Length" field in the CHDR header
doesn't match the length of the AXI-Stream packet.

The chdr_to_item call is giving a warning because it's expecting a multiple
of 32-bits (ITEM_W = 32, or 4 bytes per item) but num_bytes is not a
multiple of 4.

Wade

On Wed, Sep 28, 2022 at 5:24 AM Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi Guys,
>
> What does the following mean?
>
> I am getting packets sent to an IP core I generated, and this is the
> result of a blk_ctrl.recv_items() in my testbench.
>
> The first few packets are correct.
>
> I can see that 64-bit CHDR words are correctly unpacked, and 2 x 16-bit
> I/Q samples are injected into the core, and vice-versa, which leads me to
> believe I have the buses mapped correctly etc.
>
> Regards, Kevin
>
>
> Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length
>
> Time: 2445 ns  Iteration: 0  Process:
> /PkgChdrBfm/ChdrBfm(CHDR_W=64,USER_WIDTH=1)::get_chdr  File:
> /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv
>
> Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items
>
> Time: 2445 ns  Iteration: 0  Process:
> /PkgChdrIfaceBfm/ChdrIfaceBfm(CHDR_W=64,ITEM_W=32)::recv_items  File:
> /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv
>
> --
> Kevin Williams
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000097df905e9c187b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>The BFM for CHDR d=
oes some checks to make sure packets are formatted correctly. The error mes=
sage means the &quot;Length&quot; field in the CHDR header doesn&#39;t matc=
h the length of the AXI-Stream packet.</div><div><br></div><div>The chdr_to=
_item call is giving a warning because it&#39;s expecting a multiple of 32-=
bits (ITEM_W =3D 32, or 4 bytes per item) but num_bytes is not a multiple o=
f 4. <br></div><div><br></div><div>Wade</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 28, 2022 at 5:24 A=
M Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr">Hi Guys,<div><br></div><div>What does the f=
ollowing mean?</div><div><br></div><div>I am getting packets sent to an IP =
core=C2=A0I generated, and this is the result of a blk_ctrl.recv_items() in=
 my testbench.</div><div><br></div><div>The=C2=A0first few=C2=A0packets are=
 correct.</div><div><br></div><div>I can see that 64-bit CHDR words are cor=
rectly unpacked, and 2 x 16-bit I/Q samples are injected into the core, and=
 vice-versa, which leads me to believe I have the buses mapped correctly et=
c.</div><div><br></div><div>Regards,=C2=A0Kevin</div><div><br></div><div><b=
r></div><div><div>Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length</d=
iv><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /Pkg=
ChdrBfm/ChdrBfm(CHDR_W=3D64,USER_WIDTH=3D1)::get_chdr=C2=A0 File: /home/kwi=
lliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv</div><div><br></div><di=
v>Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items</di=
v><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /PkgC=
hdrIfaceBfm/ChdrIfaceBfm(CHDR_W=3D64,ITEM_W=3D32)::recv_items=C2=A0 File: /=
home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv</div><div>=
<br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000097df905e9c187b4--

--===============4470069591744053502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4470069591744053502==--
