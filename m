Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3DB867FFC
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 19:46:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39B1B3850FB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 13:46:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708973195; bh=6/ZtJCzW91bORDXFnEFHBRBNE4aT0GKeTJHrIGmPe8c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M9L/xAVheH9QfdBozGcUbUsrdHGV2nkwNkrw2WiKwWubDkWyp51mY6hr4vHquGogk
	 dw7HgLSO39iUPcYe6InY6paPyZhkX8C1vId0/MNXn3+AyfOu7RQb45G2TqfrF6aXbG
	 +dkV1ffuGuiXyuNWZUWtSysAcBoQvaDw7dohzIswRHm+LyZkqw3xuc8WOJQ3/22P2R
	 +9vQeiYCvZTpbudz1NeSZEwa2iPGAA2ywdnVi4JPth0cNtBCIK1lCLu4PFVhq1IXGS
	 fOTDxCvlQTdZcutkPSmCR/Hvw0q7ynjAWfRE1gcYmuoESBArLpjLRzWGH/lzExG6nQ
	 qL5VWCcC91syg==
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A7D00385050
	for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 13:46:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CiXP5DKD";
	dkim-atps=neutral
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-29ada55f73fso87653a91.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 10:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708973163; x=1709577963; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hg9SSpJ7vGfAPNwxbZu4LdUEVmqLJ/Rrsjd54cud2Rc=;
        b=CiXP5DKD+Pk56QtwWEy9VxpGX9MxrbwWjRP6LC/8z45+5H9fhnV2IebFWLlF9+9zfM
         3ZjRk9DExciroKEQitKgEXA94DLB2eaCD1wHdugkYMovm0ibnNQ5Ccd5Z/GkSl82Cc57
         L45znM9XgpBjeWpoFtVX4lgp8TrxMcPTvmj56RWcNRE6lIrdgzsY4yF/rK9Ug1IyKJz3
         oXnB7buEIxgTbDQCwaISMIPG6wITDCZSB1Rd9ohTZgp5EK1WyO4hHVOMU/Ahk2q+hnXN
         bAdMBVR8hXeNzZfgDly7knrrsbwoI9vz4RHQhZnheNDVAnHCSGU4dKFgfIG6H3k2QwO9
         zmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708973163; x=1709577963;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hg9SSpJ7vGfAPNwxbZu4LdUEVmqLJ/Rrsjd54cud2Rc=;
        b=FrTm1s487Vvg5Y4o2A0O+Rfznju2ARBtBipSx9WAVYI7R67rBJWWvHeC3oOZEK1YfM
         XJw1X6T/WSNWlHnNIrhEw+ZsjzD7tekdIDfjfAGbjHajqw5gSGvm6XQ6FC3ePskuH1Kx
         WW3vaL07q1NUwbdq+4ku9WToHdZ83Y5JvPH+zDa0CGL1mPYFc0hYMlzxWZ/xgVoVnGUo
         XJ+ocV/A+v1NZpO4DrjoeyCMKdPh3e8kG4SbkjuHiUpAxciimu7l64mC+LBSlT+KlIZE
         dRNfVRpa5FefZW2LvsWrUzjx2NawU5j8qIBRm/yTlehuuwP2lZS2Tzx99NJj59LauNvX
         EF2A==
X-Gm-Message-State: AOJu0Yzk/XTSkx/tWtnD1Yvpdxby8Ioy9McrWPxknAXg6X6VMlBH68kC
	2rNEkXZLae23VS+wT4pu0ZKKt1f0d9dqHRQh1o+rd+q7blulwKwgNuHKFqXA0HPE+Jiym5ZO6y9
	dm4HxAdQlM8eWB422BvToi2KEvQ8=
X-Google-Smtp-Source: AGHT+IHNbzayUPr/b6Rm7ZtJ+bRkytBausepXMPBgPPkbWsyfvAOEUN14gWfMkC+Btu/pmJl6W0nwdOW07OkGHp0t0s=
X-Received: by 2002:a17:90a:4ca7:b0:299:dddb:3a92 with SMTP id
 k36-20020a17090a4ca700b00299dddb3a92mr6084065pjh.1.1708973163443; Mon, 26 Feb
 2024 10:46:03 -0800 (PST)
MIME-Version: 1.0
References: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
 <227461359.311534.1708896891513@mail.yahoo.com>
In-Reply-To: <227461359.311534.1708896891513@mail.yahoo.com>
From: Ethan C <ethanclarke365@gmail.com>
Date: Mon, 26 Feb 2024 10:45:51 -0800
Message-ID: <CAM0spwrNVQf59mC6vRjivoRm1ASCTUJfbGeehHvRtZXyD5r=TA@mail.gmail.com>
To: Ray Roberge <rayroberge@yahoo.com>
Message-ID-Hash: AUKJHKKJNL5HAXCOJ4ZPUAO6FVFZ7UQB
X-Message-ID-Hash: AUKJHKKJNL5HAXCOJ4ZPUAO6FVFZ7UQB
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cable for GPIO connector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AUKJHKKJNL5HAXCOJ4ZPUAO6FVFZ7UQB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4712102996443846944=="

--===============4712102996443846944==
Content-Type: multipart/alternative; boundary="000000000000567cb606124d5237"

--000000000000567cb606124d5237
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's some great info. Thanks Ray!

On Sun, Feb 25, 2024 at 1:35=E2=80=AFPM Ray Roberge <rayroberge@yahoo.com> =
wrote:

> Ethan,
>
> I could never find any pre-wired cable assemblies for the E310 connector,
> but the housing and female pins are cheaply available:
>
> DF20A-10DS-1C Housing........................Digikey P/N: H3143-ND  $0.30
> each
>
> DF20F-2830SCFA Female Pin............... Digikey P/N: H3148CT-ND   $0.10
> each
>
> The crimping tool that is commercially used is very expensive:
> https://www.mouser.com/ProductDetail/Hirose-Connector/HT302-DF20B-2830S?q=
s=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D
> . You might try an alternative crimper, they work.
>
> Good Luck,
> Ray
>
>
>
>
> On Saturday, February 24, 2024 at 09:12:48 PM EST, Ethan C <
> ethanclarke365@gmail.com> wrote:
>
>
> Hello all,
> I am looking for the part number for the GPIO connector (J12) on an E310.
> So that I may buy a cable to connect to it. I can't find any information
> online nor on the physical connector itself on the E310 I have.
>
> Thanks,
> Ethan VA7MNK
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000567cb606124d5237
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s some great info. Thanks Ray!<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 25,=
 2024 at 1:35=E2=80=AFPM Ray Roberge &lt;<a href=3D"mailto:rayroberge@yahoo=
.com">rayroberge@yahoo.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,Hel=
vetica,Arial,sans-serif;font-size:16px"><div></div>
        <div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"font-family:Helvet=
ica Neue,Helvetica,Arial,sans-serif">Ethan,</span></div><div dir=3D"ltr"><s=
pan style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"><br></s=
pan></div><div dir=3D"ltr"><span style=3D"font-family:Helvetica Neue,Helvet=
ica,Arial,sans-serif">I could never find any pre-wired cable assemblies for=
 the E310 connector, but the housing and female pins are cheaply available:=
</span><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"=
><br clear=3D"none"></div><div style=3D"font-family:Helvetica Neue,Helvetic=
a,Arial,sans-serif">DF20A-10DS-1C Housing........................Digikey P/=
N: H3143-ND=C2=A0 $0.30 each</div><div style=3D"font-family:Helvetica Neue,=
Helvetica,Arial,sans-serif"><br clear=3D"none"></div><div style=3D"font-fam=
ily:Helvetica Neue,Helvetica,Arial,sans-serif">DF20F-2830SCFA Female Pin...=
............ Digikey P/N: H3148CT-ND=C2=A0 =C2=A0$0.10 each</div></div><div=
 style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"><br></div>=
<div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif" dir=3D=
"ltr">The crimping tool that is commercially used is very expensive:<span><=
span style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif">=C2=A0=
</span></span><a href=3D"https://www.mouser.com/ProductDetail/Hirose-Connec=
tor/HT302-DF20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D" rel=3D"nofollo=
w" target=3D"_blank">https://www.mouser.com/ProductDetail/Hirose-Connector/=
HT302-DF20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D</a>=C2=A0 . You mig=
ht try an alternative crimper, they work.</div><div style=3D"font-family:He=
lvetica Neue,Helvetica,Arial,sans-serif" dir=3D"ltr"><br></div><div style=
=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif" dir=3D"ltr">Good=
 Luck,</div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-s=
erif" dir=3D"ltr">Ray</div><div style=3D"font-family:Helvetica Neue,Helveti=
ca,Arial,sans-serif" dir=3D"ltr"><br></div><div style=3D"font-family:Helvet=
ica Neue,Helvetica,Arial,sans-serif" dir=3D"ltr"><br></div><br></div><div><=
br></div>
       =20
        </div><div id=3D"m_4034972618255084812ydp49cface0yahoo_quoted_96114=
20279">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Saturday, February 24, 2024 at 09:12:48 PM EST, Etha=
n C &lt;<a href=3D"mailto:ethanclarke365@gmail.com" target=3D"_blank">ethan=
clarke365@gmail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"m_4034972618255084812ydp49cface0yiv48212969=
82"><div dir=3D"ltr"><div>Hello all,</div><div>I am looking for the part nu=
mber for the GPIO connector (J12) on an E310. So that I may buy a cable to =
connect to it. I can&#39;t find any information online nor on the physical =
connector itself on the E310 I have.<br></div><div><br></div><div>Thanks,</=
div><div>Ethan VA7MNK<br></div></div>
</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></div></blockquote></div>

--000000000000567cb606124d5237--

--===============4712102996443846944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4712102996443846944==--
