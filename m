Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE5B5EF229
	for <lists+usrp-users@lfdr.de>; Thu, 29 Sep 2022 11:35:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DDB0384062
	for <lists+usrp-users@lfdr.de>; Thu, 29 Sep 2022 05:35:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664444137; bh=F5wSqdr0CcqJlZqYIeUIoHg2RnSfjJ87ZW+6qHaEOYI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WbJVP7qmmZyL3f7NtiibMxaeKzrbaxZaH7c99Z6iQz4xKfHQ0o92BwLfpagpL+Q7/
	 +keWTboyBDvalp5GYW9dArwQdus+WHo4uQFTwabg/r4voikWw0Rj18wfSrRtQrzMCq
	 RkIr6xpFipHORLMRS45FAz4WojvEyzdsjrEvUMzgA9AfSy3B1EhFbwRbJ7gMrr3U3Y
	 9RfCN55novSl8zO01kMV2BoMa1bc1Zy/dxAIrI/m8/FIo6hGJNBwKhxc1YfmsoXUeo
	 /LlqJN87gpbkq8Kcl3ibBdl+YJcOVyXwydIZ8IMquQ0hLbfMK8clC/TWHQD7+EPRBY
	 wZ+xmPVEIljVA==
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BAED38405A
	for <usrp-users@lists.ettus.com>; Thu, 29 Sep 2022 05:34:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ikzGmeYi";
	dkim-atps=neutral
Received: by mail-ot1-f47.google.com with SMTP id cy15-20020a056830698f00b0065c530585afso544143otb.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Sep 2022 02:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=dLzFJyBKEF/K3PK/FQy/GNZ5ArUOlA6p+RgQvwA/8IE=;
        b=ikzGmeYi9fglgBJvabaz9fa2fMQaRTp3+slxPywmNsX/+GokD7raRgYUKuLLnc+FqV
         NIjvD7eK5VkOMHMatpL3mEvdkyjy+sUQn9asihimmjuuJE0pi1prTGeucHPBGyQ0LPl9
         Wr2+4lfEH8iUrsKeMbXu9HjKDPxm/7SXJa0iguJhDgITI1gN2ranTm2OKVdJHZw+wYUe
         bLwFsW4KjTHu+rcle/23aq0SoWIjk53AqI06l5wAhcIffgD9L/ybYjZsL5UyxdaD0oL6
         S6OeCgjwDzoKoqM9YKOHk65XRUtxwUZrlAPg0bOdaXoFyUr7KaVaShoPS3X4qDu1N1B/
         R5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=dLzFJyBKEF/K3PK/FQy/GNZ5ArUOlA6p+RgQvwA/8IE=;
        b=TAG9IRJR+ljCyYn/SU63mDJ0Z1qs8U+vbdmo51rrStf3WGveY2TcMRp+5ovf/mfdVh
         kHZkKzGNL3ZD6xalvNNGQ4F/3mVGgl7CukH6FB991nuyPNYykJRiRKjiStc5KsD8Mz42
         OA5rt2Rltp+OY8b3SZQfEZOM+PVvTyKVr26qLSfGvB1H/7kPE8tKT6Srcd+L/Y/O7YhR
         6KdtDw3vqS8+YfKNhte+0B2Wcxv2BDyPpUzp6LqIWihDpUPpwwOusTItPlxg8uac0tpn
         MIsM5eSmSBSSvx41dJ64Y7BIgOlzzT6qPkmadni5s7fEw/uM4+tOPYBMe8IbX5v2Spxy
         WYFg==
X-Gm-Message-State: ACrzQf3hDPWnTNa4l9T4BWfe+65y2XVGHgeEaHUbOJUwsubA4BZBHeKb
	RKsxdTgKIaJAvEj6SbPhUZ0Hf5UTbwNt8R7tprwxfvm3V7A=
X-Google-Smtp-Source: AMsMyM5zb+fJKFQQzKJsZW6SzfSUaD4PLpJQplvuS4nyPFLUfb/O/pGbqazE0/Iy8SzSu+xnylKe+lEL7j9LJtd/Amw=
X-Received: by 2002:a9d:4047:0:b0:659:738a:95a3 with SMTP id
 o7-20020a9d4047000000b00659738a95a3mr944252oti.134.1664444067235; Thu, 29 Sep
 2022 02:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6fAK6Qv7b+0_uLBNmZnO8eV4YZ4YS=-ACE34jDjrXVatg@mail.gmail.com>
 <CAFche=j0ckmfFsx2U=YMLm4M=2SUfQYqwaSvibrS+v9BzDZoDg@mail.gmail.com>
In-Reply-To: <CAFche=j0ckmfFsx2U=YMLm4M=2SUfQYqwaSvibrS+v9BzDZoDg@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Thu, 29 Sep 2022 11:33:50 +0200
Message-ID: <CAJhOL6cjs89UntVhdiX_omMx_56PdwdN+xcxF8oagO93CkMDRg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: KTEENFRGFZJXM7TCENT7E7XYSWHWZCIY
X-Message-ID-Hash: KTEENFRGFZJXM7TCENT7E7XYSWHWZCIY
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ChdrPacket and ChdrData errors and warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KTEENFRGFZJXM7TCENT7E7XYSWHWZCIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7700957347617875066=="

--===============7700957347617875066==
Content-Type: multipart/alternative; boundary="000000000000604bee05e9cd950f"

--000000000000604bee05e9cd950f
Content-Type: text/plain; charset="UTF-8"

Hi Wade,

Thanks, that has made things a lot clearer now! (I see context header
manipulations being done in other rfnoc blocks, of which I hadn't realized
the importance.)

Regards, Kevin

On Wed, 28 Sept 2022 at 21:11, Wade Fife <wade.fife@ettus.com> wrote:

> Hi Kevin,
>
> The BFM for CHDR does some checks to make sure packets are formatted
> correctly. The error message means the "Length" field in the CHDR header
> doesn't match the length of the AXI-Stream packet.
>
> The chdr_to_item call is giving a warning because it's expecting a
> multiple of 32-bits (ITEM_W = 32, or 4 bytes per item) but num_bytes is not
> a multiple of 4.
>
> Wade
>
> On Wed, Sep 28, 2022 at 5:24 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Hi Guys,
>>
>> What does the following mean?
>>
>> I am getting packets sent to an IP core I generated, and this is the
>> result of a blk_ctrl.recv_items() in my testbench.
>>
>> The first few packets are correct.
>>
>> I can see that 64-bit CHDR words are correctly unpacked, and 2 x 16-bit
>> I/Q samples are injected into the core, and vice-versa, which leads me to
>> believe I have the buses mapped correctly etc.
>>
>> Regards, Kevin
>>
>>
>> Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length
>>
>> Time: 2445 ns  Iteration: 0  Process:
>> /PkgChdrBfm/ChdrBfm(CHDR_W=64,USER_WIDTH=1)::get_chdr  File:
>> /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv
>>
>> Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items
>>
>> Time: 2445 ns  Iteration: 0  Process:
>> /PkgChdrIfaceBfm/ChdrIfaceBfm(CHDR_W=64,ITEM_W=32)::recv_items  File:
>> /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv
>>
>> --
>> Kevin Williams
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

-- 
Kevin Williams

--000000000000604bee05e9cd950f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div><br></div><div>Thanks, that has made things a=
 lot clearer now! (I see context header manipulations being done in other r=
fnoc blocks, of which I hadn&#39;t realized the importance.)</div><div><br>=
</div><div>Regards, Kevin</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, 28 Sept 2022 at 21:11, Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Hi Kevin,</div><div><br></div><div>The BFM for CHDR does some checks =
to make sure packets are formatted correctly. The error message means the &=
quot;Length&quot; field in the CHDR header doesn&#39;t match the length of =
the AXI-Stream packet.</div><div><br></div><div>The chdr_to_item call is gi=
ving a warning because it&#39;s expecting a multiple of 32-bits (ITEM_W =3D=
 32, or 4 bytes per item) but num_bytes is not a multiple of 4. <br></div><=
div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Sep 28, 2022 at 5:24 AM Kevin William=
s &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr">Hi Guys,<div><br></div><div>What does th=
e following mean?</div><div><br></div><div>I am getting packets sent to an =
IP core=C2=A0I generated, and this is the result of a blk_ctrl.recv_items()=
 in my testbench.</div><div><br></div><div>The=C2=A0first few=C2=A0packets =
are correct.</div><div><br></div><div>I can see that 64-bit CHDR words are =
correctly unpacked, and 2 x 16-bit I/Q samples are injected into the core, =
and vice-versa, which leads me to believe I have the buses mapped correctly=
 etc.</div><div><br></div><div>Regards,=C2=A0Kevin</div><div><br></div><div=
><br></div><div><div>Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length=
</div><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /=
PkgChdrBfm/ChdrBfm(CHDR_W=3D64,USER_WIDTH=3D1)::get_chdr=C2=A0 File: /home/=
kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv</div><div><br></div>=
<div>Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items<=
/div><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /P=
kgChdrIfaceBfm/ChdrIfaceBfm(CHDR_W=3D64,ITEM_W=3D32)::recv_items=C2=A0 File=
: /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv</div><d=
iv><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams</div>

--000000000000604bee05e9cd950f--

--===============7700957347617875066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7700957347617875066==--
