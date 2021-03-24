Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54925346E70
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 02:04:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDCDA383E1F
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 21:04:51 -0400 (EDT)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 88E783837DF
	for <USRP-users@lists.ettus.com>; Tue, 23 Mar 2021 21:04:02 -0400 (EDT)
Received: by mail-oi1-f173.google.com with SMTP id n8so19102927oie.10
        for <USRP-users@lists.ettus.com>; Tue, 23 Mar 2021 18:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+LQ5M1DvYOh3CSWJDWHhlxMe97X3Fh7jFGuTnT4Fr7U=;
        b=ZUrc0tKJ9kDQC8no72bAZfTFMAFoqnkFymb/j/D+IcG3lEWcis4pYvgR+9/bGTLwwW
         8cvNX/t8gW3vrs1eL4HPEEYdESgryXFtIs8/0J7xDUVBLey4TW88GzuEFkIhbxeGfrF0
         h4xI1UzyEATlIohxHEcM1LSjVgwhfyXbBEJoszhdVA240arm+ciskxFD0AlfmWczyqov
         okuyu+sk94cysGEV++t9AWK9V9VtH4p9eZQbuEfIFHnQaGzI/O2YDoAjEDzIeFuXNJeV
         MrXaLQSB8UdAGDjFqdSUQZJjQKrLU0uZ4oTDyPAjWas2F4yt3wV+XT+8tpDjuNxDt/zq
         Eoeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+LQ5M1DvYOh3CSWJDWHhlxMe97X3Fh7jFGuTnT4Fr7U=;
        b=iv8v6A6Sc+VsmCKpmF/diFenZaicldDe+dnX8pYYvPIPKYNfwThyJIDYUMTw9Q4CTJ
         wdYslf0P7CfxBKIyWOtfzPU0XjiOTNegCsl0OUvjwy2veyfCjVCKINmgBSVrKuqsZ8XA
         z5BPwRqLYDxoyQ5ADouKjBAiLQutPyz+kUZwqJObkEvJM6oEqTAmMDQfzQMP6mqooA8T
         MKNPxn96kBZtTTzEQnYoDRggB7JvS8shg9kDDDM8LObqbnCLWXNXJyLtVBu/Z0IGuqpt
         xRqpukw8p4srwadApyEWqbEZSaVj6MZmcAMlQxxLx5NfLHFDPuk9HOL/0oXsnr/twshG
         0zRg==
X-Gm-Message-State: AOAM532HpPoxsTOdTaDgw8yP/R4/YwLA3tu2Ukwhu9dqCpHzsqC1dh5z
	4uuKFBgVybogT9i9mgclHDcMj/Ivp7NOONQud/RgNsgU
X-Google-Smtp-Source: ABdhPJwqoZp439oOTcB5I/tM1Q18dIM5NOUIKrU2VI1MTGLEe8vooytfSgPSqyZfNZf6qE8vQ+hQ4KuCUbl8XrUqN/Q=
X-Received: by 2002:aca:3286:: with SMTP id y128mr590180oiy.145.1616547841908;
 Tue, 23 Mar 2021 18:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <SG2PR04MB35145981F34B7F7B86DE892EF0659@SG2PR04MB3514.apcprd04.prod.outlook.com>
 <18AA3903-85BE-4C57-8F80-0F63E1E133FD@gmail.com>
In-Reply-To: <18AA3903-85BE-4C57-8F80-0F63E1E133FD@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 23 Mar 2021 20:03:46 -0500
Message-ID: <CAFche=i+J5jQ+_jk2ba2_r9XZ8AUXK6APkSb9kbnCfqKzg8AAg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: 6PNVXP3FEW43SMR6F3AF7A3EJRTLNLYA
X-Message-ID-Hash: 6PNVXP3FEW43SMR6F3AF7A3EJRTLNLYA
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Oscar Pablo <oscar_pabloo@outlook.com>, usrp-users <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: question of X300 revision
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PNVXP3FEW43SMR6F3AF7A3EJRTLNLYA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4155906159696574395=="

--===============4155906159696574395==
Content-Type: multipart/alternative; boundary="000000000000e1373605be3ddfdc"

--000000000000e1373605be3ddfdc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Oscar,

The drawing revision isn't the same thing as a hardware revision. I can
confirm that the posted schematic is compatible with the current UHD source
code.

Thanks,

Wade

On Mon, Mar 22, 2021 at 10:48 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Code sees like this, that support hardware must necessarily provide
> support for older equipment l=E2=80=94even models or revs that aren=E2=80=
=99t sold anymore.
> That=E2=80=99s just the nature of hardware drivers.
>
> The schematic update policy is a business thing that I=E2=80=99m not qual=
ified to
> comment on.
>
> Sent from my iPhone
>
> On Mar 21, 2021, at 9:57 PM, Oscar Pablo <oscar_pabloo@outlook.com> wrote=
:
>
> =EF=BB=BF
> i don't understand why keep the the source code for the product that will
> never show. and release a schematic for the product that will never show.
> if there is no source code to support the schematic then this schematic i=
s
> no useful. i know x300 schematic hide the part of pcie. but if other part
> is ok then it still have value for reference if someone want to use some
> part of it.
>
>
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Sunday, March 21, 2021 3:13 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: question of X300 revision
>
> On 03/21/2021 04:16 AM, Oscar Pablo wrote:
>
> Hi,
> the public released X300 schematic is revision 1. i want to know if this
> revision is the revision in uhd source code. in uhd source code there is
> strange words "x300_clock_ctrl is not compatible with revs <=3D 4 and may
> lead to locking issues" so what is the correct source code for revision
> less than 4?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> My recollection is that hardware rev <=3D 4 were pre-production and you'l=
l
> never see them "in the wild".
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e1373605be3ddfdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Oscar,</div><div><br></div><div>The drawing revisi=
on isn&#39;t the same thing as a hardware revision. I can confirm that the =
posted schematic is compatible with the current UHD source code.</div><div>=
<br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 2=
2, 2021 at 10:48 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"auto">Code sees like this, that s=
upport hardware must necessarily provide support for older equipment l=E2=
=80=94even models or revs that aren=E2=80=99t sold anymore. That=E2=80=99s =
just the nature of hardware drivers.=C2=A0<div><br></div><div>The schematic=
 update policy is a business thing that I=E2=80=99m not qualified to commen=
t on.=C2=A0<br><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Mar 21, 2021, at 9:57 PM, Oscar P=
ablo &lt;<a href=3D"mailto:oscar_pabloo@outlook.com" target=3D"_blank">osca=
r_pabloo@outlook.com</a>&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF





<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
i don&#39;t understand why keep the the source code for the product that wi=
ll never show. and release a schematic for the product that will never show=
. if there is no source code to support the schematic then this schematic i=
s no useful. i know x300 schematic hide
 the part of pcie. but if other part is ok then it still have value for ref=
erence if someone want to use some part of it.
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div>
<div id=3D"gmail-m_5072291560053362079appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_5072291560053362079divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, March 21, 2021 3:13 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: question of X300 revision</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<div>On 03/21/2021 04:16 AM, Oscar Pablo wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
the public released X300 schematic is revision 1. i want to know if this re=
vision is the revision in uhd source code. in uhd source code there is stra=
nge words &quot;x300_clock_ctrl is not compatible with revs &lt;=3D 4 and m=
ay=C2=A0 =C2=A0 lead to locking issues&quot; so what is the
 correct source code for revision less than 4?<br>
</div>
<br>
<fieldset></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
</blockquote>
My recollection is that hardware rev &lt;=3D 4 were pre-production and you&=
#39;ll never see them &quot;in the wild&quot;.<br>
<br>
<br>
</div>
</div>


</div></blockquote></div></div></div>______________________________________=
_________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e1373605be3ddfdc--

--===============4155906159696574395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4155906159696574395==--
