Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CCF284549
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 07:28:06 +0200 (CEST)
Received: from [::1] (port=47506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPfW6-00072v-Sl; Tue, 06 Oct 2020 01:28:02 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:43181)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ra.anes@globaledgesoft.com>)
 id 1kPfW3-0006zI-6z
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 01:27:59 -0400
Received: by mail-wr1-f48.google.com with SMTP id g12so6494463wrp.10
 for <usrp-users@lists.ettus.com>; Mon, 05 Oct 2020 22:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globaledgesoft-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xr8GsOQJpJul0wqEpfvFD4SPh09tY4TUeOrCM5wPslQ=;
 b=HJsDJo3/D+CG+4PUa4r4a8eWI3JMpEviUQJrzCXoTJtnzX/10N4tY+Y+lmNQGE/ABt
 KpF9b+p+qvD4zwaoEQ6ePe4gqzNx1y8Wa1bnS8WdKMMlqWi81yt/D8QhBM4wosZOhilJ
 YjF22pBKZXtfsk4OdUVq0NrCY3usUCuMGSbH9iQqSMUuwc6GFnpfE3K3cU+jUCta4j03
 KyyvUOR7qdA2LB3JwNa5NbWT8XVmvlJV7V/U2PGogMjRmuMoSbJjsJM1fJ9Wk9wvastf
 onXH7CI9BsvQIxqrnHNrRi2bZ/2lvSxwfCOakLFd5x/aO7+wozXqv+ev6Q9br0bcKjW1
 Ae9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xr8GsOQJpJul0wqEpfvFD4SPh09tY4TUeOrCM5wPslQ=;
 b=s6uuB1zxSTY8dPyQBuxnQQp420ymwhZAsKkbxVpDdhqmL3GyB5UqWizvURqY/CuJlp
 f/b74FwILo4wcY+US6Casnuagus0/rcX6QNY+g/uU64QRkzDkRAY+ynmyqeFGdvG3Jnz
 KAFYscs2nGohb77PECP+Hy3sepP01foXWOnBz33GQHlnSVXSGQ94zsMKFSBrtkTy+i+G
 STxX+tkzk2xtIKzP98RWG/HFc1g/zeh5iRLhki11/vbip9BVDj/nFsVDufCFd95T1RVW
 2aAO7yYBQZns5y8FFbxJGOCXLw7UUqd0tK+Zy6EjTBzksu5EVaRroZvGS6vF+dughrGe
 mBeQ==
X-Gm-Message-State: AOAM533ch7tMe6AovN3yx1AGGHIGYSXB+IQNZ8PrejSMjretwdsM1HCA
 rclFlMc8ggvrueeurPEQBu6pupSSi4Ja7L5xWug0Ac1jb6rdpnASZogGKhurOE3VuFG2QcwU+S6
 ugUixdo68eczki2icIj+V9kyrCyyr+a1UXh14gmQe
X-Google-Smtp-Source: ABdhPJwLKVQRsekCr9BZhQkngfE+8HJW8xqLqmWuFxMEJL1LVV5Y/7g5wqrDnKS/d6vYmxihoDID9HBQl6y6tBRNNDI=
X-Received: by 2002:adf:82f7:: with SMTP id 110mr2689426wrc.261.1601962037980; 
 Mon, 05 Oct 2020 22:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAEP-zC1h9MNePZLF4UnB93013d0MTbA-m+12jPCCDbyy+LeHKQ@mail.gmail.com>
 <CAGNhwTORFAfgUJsHHMjm7e+O_gD0+wmmhgdBeb0PV6Ov8aSkcQ@mail.gmail.com>
In-Reply-To: <CAGNhwTORFAfgUJsHHMjm7e+O_gD0+wmmhgdBeb0PV6Ov8aSkcQ@mail.gmail.com>
Date: Tue, 6 Oct 2020 10:57:07 +0530
Message-ID: <CAEP-zC1MiysrvbQESPAykqVP7teEwr8Jep9r-9frQigXbaT6YA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP and Bladerf Sync
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Anes Rose Rigiel Anony via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anes Rose Rigiel Anony <ra.anes@globaledgesoft.com>
Content-Type: multipart/mixed; boundary="===============5922536865389303282=="
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

--===============5922536865389303282==
Content-Type: multipart/alternative; boundary="00000000000037d23805b0f9da24"

--00000000000037d23805b0f9da24
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

Thanks for the valuable information.

Is there any external software which will sync this both *Internally*? If
yes, How?

Please share the details of *external hardware required for this both
devices to synchronize*.

Regards,
Rigiel

On Mon, Oct 5, 2020 at 8:07 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Rigiel - At least in theory both the Bladerf XA4 and USRP B210 provide
> external input for a 10 MHz REF, which -might- allow for some sense of
> synchronization between them. It's really not clear to me whether that will
> be enough, and whether the software controlling these devices can be
> coerced into producing even vaguely time-aligned samples based on the
> common REF signal. Maybe others here have used this particular combination
> of SDR hardware in a synchronized manner? Good luck! - MLD
>
>
> On Mon, Oct 5, 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Team,
>>
>> We are using *Bladerf XA4 as Base station 1 and USRP B210 as Base
>> Station 2*. Since both devices use an internal clock as the clock
>> source, both are *not in sync* so our application fails.
>>
>> I need to sync these both devices.
>>
>> *Is there any way to synchronize without an external clock and with an
>> external clock?*
>>
>> Please share the detailed information on this.
>>
>> --
>> Regards,
>> Rigiel,
>> Cellular.
>>
>> Disclaimer:This message is intended only for the designated recipient(s).
>> It may contain confidential or proprietary information and may be subject
>> to other confidentiality protections. If you are not a designated
>> recipient, you may not review, copy or distribute this message. Please
>> notify the sender by e-mail and delete this message. GlobalEdge does not
>> accept any liability for virus infected mails.
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
Regards,
Rigiel,
Cellular.

-- 
Disclaimer:This message is intended only for the designated recipient(s). 
It may contain confidential or proprietary information and may be subject 
to other confidentiality protections. If you are not a designated 
recipient, you may not review, copy or distribute this message. Please 
notify the sender by e-mail and delete this message. GlobalEdge does not 
accept any liability for virus infected mails.


--00000000000037d23805b0f9da24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Michael,<div><br></div><div>Thanks for the valuabl=
e information.</div><div><br></div><div>Is there any external software whic=
h=C2=A0will sync this both <b>Internally</b>? If yes, How?=C2=A0</div><div>=
<br></div><div>Please share=C2=A0the details of <b>external hardware requir=
ed for this both devices to synchronize</b>.</div><div><br></div><div>Regar=
ds,</div><div>Rigiel</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Oct 5, 2020 at 8:07 PM Michael Dickens &l=
t;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi Rigiel - At least in theory both the=C2=A0Bladerf XA4 and =
USRP B210 provide external input for a 10 MHz REF, which -might- allow for =
some sense of synchronization between them. It&#39;s really not clear to me=
 whether that will be enough, and whether the software controlling these de=
vices can be coerced into producing even vaguely time-aligned samples based=
 on the common REF signal. Maybe others here have used this particular comb=
ination of SDR hardware in a synchronized manner? Good luck! - MLD<div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Oct 5, 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi Team,<div><br></div><div>We are usin=
g <b>Bladerf XA4 as Base station 1 and USRP B210 as Base Station 2</b>. Sin=
ce both devices use an internal clock as the clock source, both are <b>not =
in sync</b> so our application fails.</div><div><br></div><div>I need to sy=
nc these both devices.=C2=A0</div><div><b><br></b></div><div><b>Is there an=
y way to synchronize without an external clock and with an external clock?<=
/b></div><div><br></div><div>Please share the detailed information on this.=
<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><=
div>Regards,</div><div>Rigiel,</div><div>Cellular.</div></div></div></div><=
/div>

<br>
<div align=3D"left">Disclaimer:This message is intended only for the design=
ated recipient(s). It may contain confidential or proprietary information a=
nd may be subject to other confidentiality protections. If you are not a de=
signated recipient, you may not review, copy or distribute this message. Pl=
ease notify the sender by e-mail and delete this message. GlobalEdge does n=
ot accept any liability for virus infected mails.<br></div>________________=
_______________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div>Regards,</div><div>Rigiel,=
</div><div>Cellular.</div></div></div>

<br>
<div align=3D"left">Disclaimer:This message is intended only for the design=
ated recipient(s). It may contain confidential or proprietary information a=
nd may be subject to other confidentiality protections. If you are not a de=
signated recipient, you may not review, copy or distribute this message. Pl=
ease notify the sender by e-mail and delete this message. GlobalEdge does n=
ot accept any liability for virus infected mails.<br></div>
--00000000000037d23805b0f9da24--


--===============5922536865389303282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5922536865389303282==--

