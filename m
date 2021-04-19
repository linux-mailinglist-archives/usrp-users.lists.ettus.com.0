Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BCC364DC2
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:41:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40487384188
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:41:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="aT3qIJL3";
	dkim-atps=neutral
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D222384A0E
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:40:39 -0400 (EDT)
Received: by mail-pl1-f172.google.com with SMTP id h20so18585705plr.4
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3HFLm0dbpnPmcaF1KKAy4J0zCGRdMuzqpHOoZ0ZZpXU=;
        b=aT3qIJL3YTU+KLBDlvFywL57WRy5YVs71VXopDC9U62dSvcpMxoK2mxiX0GAbUdXDu
         rS1hwJRGOB2xgdTGeDwesgB96Wjucvfbe55UQeOeHYS58YWxaWLv93J8WMEsbyKXWydU
         Tbio4A4j8Xc7HnxPZtMX+pzmKZZzLmnJGm02PIqzzKDCSdyFXSYYk2fjB9NA151zrzsd
         se6VxemK1ByD0P4x+nAqykLNkDg51m34TW38O3izqoagfjZusfqDk1kyo6qPLW63i4lP
         gsrt2nmlBZEZDLFTmVU+9f2DVj/fXQsB5U4zuuqIUHkd3M389dPUx9ZkScbuDYEVHq1H
         dpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3HFLm0dbpnPmcaF1KKAy4J0zCGRdMuzqpHOoZ0ZZpXU=;
        b=a7jl/jpEZT932FHQjBdHZ8h6M4eLZdO8+RZjV/VtcQ6TW1nK2o8AIypnL02+ZSin8b
         o4aWeQX8CtFpgBNAa4cSEA3jb80nfmx7XgVC6Ekt6Fl+CguCSDheFo1sj+ZZucL1z2rN
         uxGVCRNHN48NA4TXgxyNS0SAgQYqZG0kMh2KlphVR7oNrFzYqLz1+MUXNBdr3pFgub3r
         psyQveRSEx0HZa7dSMeJDQ5hM9q7Pao4RDci3LwHTXoI/rS3MjdYnYuuOd2b3qmnHf3y
         0Y49AOvFKq5jb7fiANf/jo501KVDiEod7vmDtKbKbrBW9dgCHk0K/5/bKhVEsJS2H3ZZ
         JvnQ==
X-Gm-Message-State: AOAM531yIPI/SbSrrwQHUR0dBRa++jNIyz6uUrNYax47QY+SmmJdZaJW
	nsAntJKe4ZgOQfHCRiRhPbtyBPQltJGx4SpiW/0qQw==
X-Google-Smtp-Source: ABdhPJwF/w78K2plo1OFkZOynIB5jPK+LGgfYcecm8ZrGcEPWiySyy6n75kUPWLnA1d8vpjAjoTk1Eb6fj8fto0fZYw=
X-Received: by 2002:a17:90a:a58f:: with SMTP id b15mr1389120pjq.135.1618872037903;
 Mon, 19 Apr 2021 15:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAKhiL6W-8cDDkQxLP3vDJZAN2VSmGuJP0cO10F_iBd-Qv7gfwg@mail.gmail.com>
 <26B46D48-8B2D-4437-8DB5-8FAC2868D375@gmail.com>
In-Reply-To: <26B46D48-8B2D-4437-8DB5-8FAC2868D375@gmail.com>
From: LoyCurtis Smith <ljsmith9@ncsu.edu>
Date: Mon, 19 Apr 2021 18:40:27 -0400
Message-ID: <CAKhiL6UKfyPVQt17qdwvujqaxJ-G3e7y2ETuzhFskLxMa=jBeQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: RN4XKHY55QV6PKN3RHNB3NEQPJ344HQ4
X-Message-ID-Hash: RN4XKHY55QV6PKN3RHNB3NEQPJ344HQ4
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 6GHz Tests
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RN4XKHY55QV6PKN3RHNB3NEQPJ344HQ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7118387000017547464=="

--===============7118387000017547464==
Content-Type: multipart/alternative; boundary="000000000000c1bcd605c05b04ad"

--000000000000c1bcd605c05b04ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you.

On Mon, Apr 19, 2021 at 17:14 Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> As long as It presents 50 ohms to the radio, the CBX does not care.
>
>
>
> Sent from my iPhone
>
> On Apr 19, 2021, at 4:48 PM, LoyCurtis Smith <ljsmith9@ncsu.edu> wrote:
>
> =EF=BB=BF
>
> Hey,
>
> I am trying to measure within the 6GHz frequency range with a USRP x310
> with a CBX-120 daughterboard. I am in need of an omni-directional antenna
> that is capable of up to 6 GHz as well.
> So far, I have come across the following 6GHz capable antennas:
>
>    - MPDP2.5/3.5/4.5 - manufacturer Hascall-Denke
>    - TG.35.8113W - manufacturer Taoglas
>    - ANT-W63WS1 - manufacture Linx Technologies
>
> Has anyone tried any of these with a USRP x310? or does anyone have any
> recommendations?
>
> V/r
>
> LoyCurtis Smith
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> --

V/r

LoyCurtis Smith

--000000000000c1bcd605c05b04ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you.</div><div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 17:14 Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:=
1ex;border-left-color:rgb(204,204,204)"><div dir=3D"auto">As long as It pre=
sents 50 ohms to the radio, the CBX does not care.<div><br></div><div><br><=
br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquo=
te type=3D"cite">On Apr 19, 2021, at 4:48 PM, LoyCurtis Smith &lt;<a href=
=3D"mailto:ljsmith9@ncsu.edu" target=3D"_blank">ljsmith9@ncsu.edu</a>&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF</div></blockquote></div></div><div dir=3D"auto"><div><blockquote =
type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hey,=C2=A0</div><div><=
br></div><div>I am trying to measure within the 6GHz frequency range with a=
 USRP x310 with a CBX-120 daughterboard. I am in need of an omni-directiona=
l antenna that is capable of up to 6 GHz as well.=C2=A0</div><div>So far, I=
 have come across the following 6GHz capable antennas:=C2=A0</div><ul><li>M=
PDP2.5/3.5/4.5 - manufacturer Hascall-Denke</li><li>TG.35.8113W - manufactu=
rer Taoglas</li><li>ANT-W63WS1 - manufacture Linx Technologies</li></ul><di=
v>Has anyone tried any of these with a USRP x310? or does anyone have any r=
ecommendations?</div><div><div dir=3D"ltr" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><font style=3D"color:rgb(7,55,99)=
"><br></font></div><div dir=3D"ltr"><font style=3D"color:rgb(7,55,99)">V/r<=
/font><div><span style=3D"background-color:rgb(255,255,255)"><font style=3D=
"color:rgb(7,55,99)"><br></font></span></div><div><span style=3D"background=
-color:rgb(255,255,255)"><font style=3D"color:rgb(7,55,99)">LoyCurtis Smith=
</font></span></div></div></div></div></div></div></div>
</div></blockquote></div></div><div dir=3D"auto"><div><blockquote type=3D"c=
ite"><div dir=3D"ltr"><span>_______________________________________________=
</span><br><span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a></span><br><=
span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></span>=
<br></div></blockquote></div></div></blockquote></div></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763"><br></font></div>=
<div dir=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=3D"back=
ground-color:rgb(255,255,255)"><font color=3D"#073763"><br></font></span></=
div><div><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#=
073763">LoyCurtis Smith</font></span></div></div></div></div></div>

--000000000000c1bcd605c05b04ad--

--===============7118387000017547464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7118387000017547464==--
