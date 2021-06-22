Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 113F53B0C6D
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 20:07:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE4983847F7
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 14:07:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="jHzzdBnF";
	dkim-atps=neutral
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D6E71384783
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 14:07:00 -0400 (EDT)
Received: by mail-vs1-f48.google.com with SMTP id x12so4636806vsp.4
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 11:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K6kJ5BBzIajgDn5LscgZYGjcd+zR7RG0idg1jgP6hhg=;
        b=jHzzdBnFEx7kmd+TD8FaDbTB2yoQwPvgx48iLDN6Xa3FVZBbACGBX5j3v8RLf0Mf8T
         HquXY+cmjwAVBO+76pdC4XmKSvFWILqbrR8/v9kBF9V1AqACmQHecRMPc3Wo+YQnB5Z/
         tfJcvosQlVltLSzfM/i+M8OcBBa6Xs0+maR2J4XLsgwWzf+/ElQeo4yMHLS5OxJsxrRv
         uxgHPjX5/hNRgRhDcZS+OPaIYd4IwJSR8F1SVcYCCMP43He8P1E7JNHqyeP2eeRnVA5h
         E0k9gwsvIGbKuEgFUNdRqhk3lAA58YsYRE4pQeIs3+joE0u3o6oPZsebRPJpz5/vhuD3
         Cb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K6kJ5BBzIajgDn5LscgZYGjcd+zR7RG0idg1jgP6hhg=;
        b=roXUOok3UTi/tgjiidQubl3Ve/pV57/D/pRSGthG4MDK1m4aYvZMtepyQIzxMdFTt2
         wExdrvztQPQwJ3Oluqdc/Vtbb2VRzXfh4iVwoYvfJ9KU/+PtGdunq3m2oan8Pa3R55Q6
         iEOt6WRfVX39HTtV3pjwk+t9UC9t7a+/7HXSQfYvLc6vMWKbK+gOfNNp8C4OeoTVvcTb
         ur2w3i7EdpYC973+zt14ploHCFWsjM6SiDgY8GNpbMCj8O1JFDwKRXy8rWjMqX9fK7KW
         +r9n/+gLCygRe7WLdeQPCOu3BzAJ0B3CkubX3tZol5ZSjze0DWhGf0YoG/PGK+GrbjI+
         y8Hw==
X-Gm-Message-State: AOAM531g5ZeD38zPxKlcu7oEgw4gA3WHdvIpfsfYWzDCd/67zwzFm1+/
	mJETO5CN09ewB2QTa0SJEKQlAeaoTlfzsxKZZ3GSZx/O
X-Google-Smtp-Source: ABdhPJw73sw4PLhmWvEZEUP1+aRc2DF3JkjSVXCgn4l1AsgkaOrIrq6f5EYhk6wRf0fExXxwTHcQPVowWAgWYV/37v0=
X-Received: by 2002:a67:c88b:: with SMTP id v11mr20263208vsk.7.1624385220152;
 Tue, 22 Jun 2021 11:07:00 -0700 (PDT)
MIME-Version: 1.0
References: <ne18OCSycyIGj6evlGg1NWcZ5RgDoIEcqb6hxZIuE@lists.ettus.com>
In-Reply-To: <ne18OCSycyIGj6evlGg1NWcZ5RgDoIEcqb6hxZIuE@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 22 Jun 2021 14:06:23 -0400
Message-ID: <CAL7q81vTgy9HzKdrUJKw-9D6=8zNCorPOR5+vNgEswzwZnb_uA@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: VZ75E34OSYDF7QAIPEUQDRFSNBM2RNLG
X-Message-ID-Hash: VZ75E34OSYDF7QAIPEUQDRFSNBM2RNLG
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Hello all;
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VZ75E34OSYDF7QAIPEUQDRFSNBM2RNLG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7869682147464301915=="

--===============7869682147464301915==
Content-Type: multipart/alternative; boundary="000000000000069eb305c55ea8ed"

--000000000000069eb305c55ea8ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Unfortunately, the Replay Block does not currently have GNU Radio support
in either UHD 3.15 or UHD 4.0. Ettus is considering adding GR support for
the block in UHD 4.0, but there is no timeline on when/if that will happen.

Jonathon

On Thu, Jun 17, 2021 at 1:04 PM <rblack@swri.org> wrote:

> My current gnuradio/UHD install has the xml files for a number of RFNoc
> blocks in /usr/share/gnuradio/grc/blocks; e.g. uhd_rfnoc_radio.xml.
>
> But I do not have such a file for the rfnoc replay block, even though I d=
o
> have the rfnoc replay function in my firmware .bit load. Does such a bloc=
k
> exist? Also has anyone ever used the =E2=80=9Creplay block=E2=80=9D in a =
grc flowgraph?
>
> Currently I have UHD 3.15, but will soon have v 4.0
>
>
> thanks rb
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000069eb305c55ea8ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Unfortunately, the Replay Block doe=
s not currently have GNU Radio support in either UHD 3.15 or UHD 4.0. Ettus=
 is considering adding GR support for the block in UHD 4.0, but there is no=
 timeline on when/if that will happen.</div><div><br></div><div>Jonathon</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Jun 17, 2021 at 1:04 PM &lt;<a href=3D"mailto:rblack@swri.org">r=
black@swri.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>My current gnuradio/UHD  install has the xml files for a n=
umber of RFNoc blocks in /usr/share/gnuradio/grc/blocks; e.g. uhd_rfnoc_rad=
io.xml.</p><p>But I do not have such a file for the rfnoc replay block, eve=
n though I do have the rfnoc replay function in my firmware .bit load.  Doe=
s such a block exist? Also has anyone ever used the =E2=80=9Creplay block=
=E2=80=9D in a grc flowgraph?</p><p>Currently I have UHD 3.15,  but will so=
on have v 4.0</p><p><br></p><p>thanks rb</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000069eb305c55ea8ed--

--===============7869682147464301915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7869682147464301915==--
