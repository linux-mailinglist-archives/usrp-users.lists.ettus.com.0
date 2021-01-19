Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D57082FBEC2
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 19:20:21 +0100 (CET)
Received: from [::1] (port=58242 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1vc2-0007q8-PJ; Tue, 19 Jan 2021 13:20:18 -0500
Received: from mail-vs1-f53.google.com ([209.85.217.53]:43976)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1l1vby-0007iq-Vc
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 13:20:15 -0500
Received: by mail-vs1-f53.google.com with SMTP id r24so11594523vsg.10
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 10:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=68lRuYEe5D19t4RXBaTJGgAu0kxJKnc/LdC/9tKFyyw=;
 b=LZT6a8fFxSuarNmr5o7V/XQ8rwSgx3lGu6aJYWvWTFnIB2kEQ5VlLbni5g41GLC+/C
 ysma7mvwsJVYuoPt8pY9x0GeJWhpMLaITQZ0WtyENYtz0UeFuWQalpnQAEM1UYnXrp7z
 yOB6VjX3LiVkUtLk+/fmteF2lNFAxWcThqSWliAgZOODij9xVzGUHlM+ahfU8+pIenYt
 wkmwQUwnGlFZBz3J7m455jclwBX+jYwYt4akYkxbgtbIif37KGdUIKqT24YKNuj9EYA/
 C5fhh2SnNnYTbsQW/qqL/ORhSF7ARqGgUSYl8Lu9fayCn+Ca97EzbVY44AvSAW5bnF2Q
 LGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=68lRuYEe5D19t4RXBaTJGgAu0kxJKnc/LdC/9tKFyyw=;
 b=ZvByhY69M6tr0Fm7L2U4PZk7XE8pagHDDsv8vIABhl7uDfYlr0NPutH36zS84/D4Yc
 7jM8hiDKoTo4B8mO2dJnc4BibfAue+hgL/SyDasL0yD1gLO97OnulJearuiVtAqMyNEx
 ftoo/eyJg9uoOEeJPzdKYyRtfxRQl5/VTuYWovf5vCHUEqmfuFaTe7Bm7EypNNWGA+R4
 u8yfwn5KbNCSehBsGFx7xVXWGte2bD++GHOnhciORZSTVicazWX09Tpf1sE59w7U9A5c
 sLPU7wefSvXQGk30IjyYBzboMM4kYl8t+8bQIkSRGVYAGqLlfE7G4xsZVYIQ9agZwHBD
 j4cw==
X-Gm-Message-State: AOAM5306d5AodwNVAwWQgPHhdF0jD6lWEde/Nx3dfuSc38r7npAzrPTd
 3KJdeaXBqoex1emg2aMrKfk2eBhAff+mIKamH/B7GZAI
X-Google-Smtp-Source: ABdhPJwR+aXZbC57PbMNo7dP7TTFMVjgGno68rEHkDw/AKIIf18RpgsDsKCVMrmOMcQPkB2VtBIwmIYzEZLW4bgXRjw=
X-Received: by 2002:a67:f555:: with SMTP id z21mr3628187vsn.7.1611080374251;
 Tue, 19 Jan 2021 10:19:34 -0800 (PST)
MIME-Version: 1.0
References: <20210114233657.pjmcmwburnh3gja3@barbe>
In-Reply-To: <20210114233657.pjmcmwburnh3gja3@barbe>
Date: Tue, 19 Jan 2021 13:18:58 -0500
Message-ID: <CAL7q81sucmAEUzLSD1P8xp3xta3Lj=Y-hVF_cjh8kXoMU7tbrg@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD4.0 rfnoc-example gain block not recognized
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============4698642365774906681=="
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

--===============4698642365774906681==
Content-Type: multipart/alternative; boundary="0000000000006987c605b944e1f4"

--0000000000006987c605b944e1f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cedric,

There is a known issue with uhd_usrp_probe in UHD 4.0 / RFNoC4 where custom
RFNoC blocks do not report the block name correctly. You can use "auto
gain_blocks =3D graph->find_blocks<rfnoc::example::gain_block_control>("");=
"
to get your gain block.

Jonathon

On Thu, Jan 14, 2021 at 6:37 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> After following [1] (testing OOT gain block from example code),
> uhd_usrp_probe outputs:
>
> [...]
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16,
> 0xffff
> [...]
> |   |   * 0/Block#0
> |   |   * 0/DDC#0
> [...]
>
> and in C++:
>
> auto gain_blocks =3D
> graph->find_blocks<rfnoc::example::gain_block_control>("");
>
> is empty, while:
>
> rfnoc::example::gain_block_control::sptr gain_ctrl =3D
> graph->get_block<rfnoc::example::gain_block_control>("0/Block#0");
>
> failed with:
>
> "Error: LookupError:
> This device does not have a block of type
> rfnoc::example::gain_block_control with ID: 0/Block#0"
>
> Does anyone know what am I missing?
>
> [1]
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Out-of-tree_Mo=
dules
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006987c605b944e1f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Cedric,<div><br></div><div>There is a known issue with =
uhd_usrp_probe in UHD 4.0 / RFNoC4 where custom RFNoC blocks do not report =
the block name correctly. You can use &quot;auto gain_blocks =3D graph-&gt;=
find_blocks&lt;rfnoc::example::gain_block_control&gt;(&quot;&quot;);&quot; =
to get your gain block.</div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan =
14, 2021 at 6:37 PM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
After following [1] (testing OOT gain block from example code),<br>
uhd_usrp_probe outputs:<br>
<br>
[...]<br>
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0x=
ffff<br>
[...]<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/Block#0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0* 0/DDC#0<br>
[...]<br>
<br>
and in C++:<br>
<br>
auto gain_blocks =3D<br>
graph-&gt;find_blocks&lt;rfnoc::example::gain_block_control&gt;(&quot;&quot=
;);<br>
<br>
is empty, while:<br>
<br>
rfnoc::example::gain_block_control::sptr gain_ctrl =3D<br>
graph-&gt;get_block&lt;rfnoc::example::gain_block_control&gt;(&quot;0/Block=
#0&quot;);<br>
<br>
failed with:<br>
<br>
&quot;Error: LookupError:<br>
This device does not have a block of type<br>
rfnoc::example::gain_block_control with ID: 0/Block#0&quot;<br>
<br>
Does anyone know what am I missing?<br>
<br>
[1] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#O=
ut-of-tree_Modules" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.c=
om/Getting_Started_with_RFNoC_in_UHD_4.0#Out-of-tree_Modules</a><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006987c605b944e1f4--


--===============4698642365774906681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4698642365774906681==--

