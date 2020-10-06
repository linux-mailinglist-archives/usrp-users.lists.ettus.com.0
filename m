Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DE5284C48
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 15:10:21 +0200 (CEST)
Received: from [::1] (port=51050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPmjS-0003rd-VU; Tue, 06 Oct 2020 09:10:18 -0400
Received: from mail-ej1-f41.google.com ([209.85.218.41]:34130)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kPmjP-0003mt-B3
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 09:10:15 -0400
Received: by mail-ej1-f41.google.com with SMTP id u8so17560071ejg.1
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 06:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ANoMWuuoJ5HRL9hgFtgzdEhRVHK+X3LJ2FYM5i3z+Zk=;
 b=X8ljcGV9OLsQMvuNuVcu7qwUn8MpjYSMGCnpqKEC6k8S571dReffsdQsGbgGySwERl
 lQtAOMBs5zk1wjffA0P2Hq85BwnzzrvP80z4ZzWmIcQSEruRfiok1uQieZLpWv2hsAZN
 J9dtFS4/sf3OxOiIOcxrJkWI5maiqbrUcqxF/gWhr2La/1+Dv67ksu/7p7aSu5A5N9wu
 P+uoTd3fqU8l/EUD3AnpGcKNiSw/Npz5U2adUfSVBdCssCexuqV1X3b0E8bJrm/V2mJQ
 0xw4pxcBSk65PIUSHkMp0zHQ4M9+1hdowagCq9MPC+nTp76eIjcSbddkukHdf4w4UCHj
 3+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ANoMWuuoJ5HRL9hgFtgzdEhRVHK+X3LJ2FYM5i3z+Zk=;
 b=Xj3ltys80DGPWxhqujsWFy4mCeeilB9/VJAo/gJUL4gCwdQEAjYB/qhrQATZcXJdql
 bqZT9OKX4+kblnMUdeFlRLtl2nT9yIlNWkXu9pNnv8i0+XIKbpUjUD50HQmuf+NdvMMx
 MgUGb8klV3pmdy6HlVXLHYKmZeW0XzaFfyIUye4W+F28VmIZpAHxT8RNeZZYmAJko4X9
 +I1k21lDRHST5FDGXmOLqz3Qf4ifyYKZxGF4In9QrA7wYJi+1giT6vsq7WtsGpA4favA
 X4BPAvReLzyVbGcF8DseLzLQ7a2PUV7Hxp+sTItMNE975IhQJj64W23s7zjEsEwwzJA7
 cjVw==
X-Gm-Message-State: AOAM532VItJNcpH15HbfM4ehGcmgbO9DbtuC6fr1LLB+6hqO6BoEZKim
 P3+IAFCAJTgXEX2l+UtPoQQOAMZIcN0uAxwOHz2zlXZS
X-Google-Smtp-Source: ABdhPJxzVYWn9bGs7R/sew2ZoEEWEvdajFspNVWCi83iRXWIstp0YUPImIMq3TyCPkEVDLBvUyibR9bTeGkSuN4bNpI=
X-Received: by 2002:a17:906:358a:: with SMTP id
 o10mr5313290ejb.371.1601989774277; 
 Tue, 06 Oct 2020 06:09:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAEP-zC1h9MNePZLF4UnB93013d0MTbA-m+12jPCCDbyy+LeHKQ@mail.gmail.com>
 <CAGNhwTORFAfgUJsHHMjm7e+O_gD0+wmmhgdBeb0PV6Ov8aSkcQ@mail.gmail.com>
 <CAEP-zC1MiysrvbQESPAykqVP7teEwr8Jep9r-9frQigXbaT6YA@mail.gmail.com>
In-Reply-To: <CAEP-zC1MiysrvbQESPAykqVP7teEwr8Jep9r-9frQigXbaT6YA@mail.gmail.com>
Date: Tue, 6 Oct 2020 09:09:23 -0400
Message-ID: <CAGNhwTNHS9U3=RX-qe5J=mr3VzayK15hOwthYxZvJbpfn5eFAA@mail.gmail.com>
To: Anes Rose Rigiel Anony <ra.anes@globaledgesoft.com>
Cc: USRP list <usrp-users@lists.ettus.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============7328107543673642119=="
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

--===============7328107543673642119==
Content-Type: multipart/alternative; boundary="0000000000006e195d05b1004fa4"

--0000000000006e195d05b1004fa4
Content-Type: text/plain; charset="UTF-8"

Hi Rigiel - You've reached the limits of my knowledge in this regard.
Hopefully others can chime in to augment what I've written. For all I know,
you're in uncharted territory! Sorry I can't be of more help & good luck! -
MLD


On Tue, Oct 6, 2020 at 1:27 AM Anes Rose Rigiel Anony <
ra.anes@globaledgesoft.com> wrote:

> Hi Michael,
>
> Thanks for the valuable information.
>
> Is there any external software which will sync this both *Internally*? If
> yes, How?
>
> Please share the details of *external hardware required for this both
> devices to synchronize*.
>
> Regards,
> Rigiel
>
> On Mon, Oct 5, 2020 at 8:07 PM Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> Hi Rigiel - At least in theory both the Bladerf XA4 and USRP B210 provide
>> external input for a 10 MHz REF, which -might- allow for some sense of
>> synchronization between them. It's really not clear to me whether that will
>> be enough, and whether the software controlling these devices can be
>> coerced into producing even vaguely time-aligned samples based on the
>> common REF signal. Maybe others here have used this particular combination
>> of SDR hardware in a synchronized manner? Good luck! - MLD
>>
>>
>> On Mon, Oct 5, 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Team,
>>>
>>> We are using *Bladerf XA4 as Base station 1 and USRP B210 as Base
>>> Station 2*. Since both devices use an internal clock as the clock
>>> source, both are *not in sync* so our application fails.
>>>
>>> I need to sync these both devices.
>>>
>>> *Is there any way to synchronize without an external clock and with an
>>> external clock?*
>>>
>>> Please share the detailed information on this.
>>>
>>> --
>>> Regards,
>>> Rigiel,
>>> Cellular.
>>>
>>> Disclaimer:This message is intended only for the designated
>>> recipient(s). It may contain confidential or proprietary information and
>>> may be subject to other confidentiality protections. If you are not a
>>> designated recipient, you may not review, copy or distribute this message.
>>> Please notify the sender by e-mail and delete this message. GlobalEdge does
>>> not accept any liability for virus infected mails.
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> Regards,
> Rigiel,
> Cellular.
>
> Disclaimer:This message is intended only for the designated recipient(s).
> It may contain confidential or proprietary information and may be subject
> to other confidentiality protections. If you are not a designated
> recipient, you may not review, copy or distribute this message. Please
> notify the sender by e-mail and delete this message. GlobalEdge does not
> accept any liability for virus infected mails.
>

--0000000000006e195d05b1004fa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rigiel - You&#39;ve reached the limits of my knowledge =
in this regard. Hopefully others can chime in to augment what I&#39;ve writ=
ten. For all I know, you&#39;re in uncharted territory! Sorry I can&#39;t=
=C2=A0be of more help &amp; good=C2=A0luck! - MLD<br><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 6, 202=
0 at 1:27 AM Anes Rose Rigiel Anony &lt;<a href=3D"mailto:ra.anes@globaledg=
esoft.com">ra.anes@globaledgesoft.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Michael,<div>=
<br></div><div>Thanks for the valuable information.</div><div><br></div><di=
v>Is there any external software which=C2=A0will sync this both <b>Internal=
ly</b>? If yes, How?=C2=A0</div><div><br></div><div>Please share=C2=A0the d=
etails of <b>external hardware required for this both devices to synchroniz=
e</b>.</div><div><br></div><div>Regards,</div><div>Rigiel</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct =
5, 2020 at 8:07 PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@et=
tus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rig=
iel - At least in theory both the=C2=A0Bladerf XA4 and USRP B210 provide ex=
ternal input for a 10 MHz REF, which -might- allow for some sense of synchr=
onization between them. It&#39;s really not clear to me whether that will b=
e enough, and whether the software controlling these devices can be coerced=
 into producing even vaguely time-aligned samples based on the common REF s=
ignal. Maybe others here have used this particular combination of SDR hardw=
are in a synchronized manner? Good luck! - MLD<div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 5,=
 2020 at 2:37 AM Anes Rose Rigiel Anony via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Team,<div><br></div><div>We are using <b>Bladerf XA4 as =
Base station 1 and USRP B210 as Base Station 2</b>. Since both devices use =
an internal clock as the clock source, both are <b>not in sync</b> so our a=
pplication fails.</div><div><br></div><div>I need to sync these both device=
s.=C2=A0</div><div><b><br></b></div><div><b>Is there any way to synchronize=
 without an external clock and with an external clock?</b></div><div><br></=
div><div>Please share the detailed information on this.<br clear=3D"all"><d=
iv><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>Regards,</div><d=
iv>Rigiel,</div><div>Cellular.</div></div></div></div></div>

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
><div dir=3D"ltr"><div>Regards,</div><div>Rigiel,</div><div>Cellular.</div>=
</div></div>

<br>
<div align=3D"left">Disclaimer:This message is intended only for the design=
ated recipient(s). It may contain confidential or proprietary information a=
nd may be subject to other confidentiality protections. If you are not a de=
signated recipient, you may not review, copy or distribute this message. Pl=
ease notify the sender by e-mail and delete this message. GlobalEdge does n=
ot accept any liability for virus infected mails.<br></div></blockquote></d=
iv>

--0000000000006e195d05b1004fa4--


--===============7328107543673642119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7328107543673642119==--

