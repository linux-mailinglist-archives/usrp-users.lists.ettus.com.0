Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9463A17866A
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:36:02 +0100 (CET)
Received: from [::1] (port=51704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9H4z-0000OU-7Z; Tue, 03 Mar 2020 18:36:01 -0500
Received: from mail-il1-f177.google.com ([209.85.166.177]:36511)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1j9H4u-0008Ux-TO
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:35:56 -0500
Received: by mail-il1-f177.google.com with SMTP id b17so230444iln.3
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aPTBdBPk7bz9e4nxSB7O/i0azT6k544JFwUYmPBnT5o=;
 b=cL3vchGUCKBmsq50RnPtlAcrnowe4DyskYoh1PVusBR0WWN5GSKQmTYeb2SlekAMNP
 ySZaJdms8PatTSTbRdmT/tl2VhjA3T2TDgKRx40YE7h/YlitBxJOFxwfj/8ItzOz1fhP
 l0IihBB7FLL6NWhGTLme+ubwB0Xhe5o0OukAy69FpKjRTE47y+jpWb7AyuPBg1MlFqWj
 C3jlsC04jJKLtIAxcS1Qo17xV6tP9ZUnQilOW0K7z9aRK+Jh8Z8w7sv41eDRSv4mwlAd
 0AmXOTHb4SuBvQsVowVfcCngTQBNRFCARqz2gte4Z9UG0rQm41yHEx7m6wOue/9D86ZQ
 hWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aPTBdBPk7bz9e4nxSB7O/i0azT6k544JFwUYmPBnT5o=;
 b=AE2JlmDZzhwI3mxFrrIMDWvx/AHsm98XH7qXXWSYNH56ChYxXzOtO94Qyxi4BY9T85
 W5pOelvej7y6R5FRdnR8dOqyIfb/+6B1Bi72y0LLZorzLf5Hq9wC7iHLWSlEIRGQGtiI
 Dk3JyUjSueKk3PCy9dNUByh9OpdLIy2M27jJ/xUg/YJPvn/+0GLWc7qIcCe0jh2+D6bh
 TVOabvojlVsKI6dsfKVWzjT0/8T/hIvnVMBuKht4N0tJ6QFXY10wDO9UdIBmmWveYiVI
 WEcyOs5ceHDTA0UjGh8DQEujBWq/tnrG5kvs++qcDup64tq0B3zLPcts3raJz+PwhU25
 7Hxw==
X-Gm-Message-State: ANhLgQ1kEpYeBjUTvNM+sHPbI+01/eW+1q95ddJC05mQH16PhWy8lXjm
 BgxLkIivHakK9isl7Uf+Mc3XBpWqMrIK/dQpkkU=
X-Google-Smtp-Source: ADFU+vsEQCTSWVTz1YOpjGqLeNECIjSnQ1ICFHHjzU22vEcDDU4LpV8E1/FmtMRBdw2nY9fB2vqHauFVzCyS0EbV/B0=
X-Received: by 2002:a92:7301:: with SMTP id o1mr146961ilc.272.1583278516200;
 Tue, 03 Mar 2020 15:35:16 -0800 (PST)
MIME-Version: 1.0
References: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
 <CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com>
 <5E5EE64A.3060605@gmail.com>
In-Reply-To: <5E5EE64A.3060605@gmail.com>
Date: Tue, 3 Mar 2020 15:35:05 -0800
Message-ID: <CA+JMMq-aAM3DHm+SowK0FVSrHwTQqH9tokydTpMz5jWHSC+wWQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Can underflows in any way be bad for hardware in
 the long term?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2482046621094346634=="
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

--===============2482046621094346634==
Content-Type: multipart/alternative; boundary="00000000000089e92a059ffbc196"

--00000000000089e92a059ffbc196
Content-Type: text/plain; charset="UTF-8"

Nothing in the USRP will be damaged. It's up to you to ensure that your
subsequent RF chain will handle it. There are a few, rare configurations
which come to mind where it would be a Bad Thing to suddenly pulse power on
a millisecond timescale with extremely high bandwidth.

   1. Using your USRP to drive a linear accelerator (don't laugh, it's been
   done)
   2. Using your USRP to drive an extremely high power tube-based AM
   transmitter
   3. Using your USRP to drive an amplifier which is not unconditionally
   stable

Outside of these you're probably fine.

Nick

On Tue, Mar 3, 2020 at 3:21 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 03/03/2020 06:16 PM, Sam Reiter via USRP-users wrote:
>
> Hey Francisco,
>
> Interesting question. I remember reading this when it was initially
> posted, giving it some thought, and promptly forgetting to respond. It's a
> question that is difficult to give a "yes" or "no" to. Similar to
> statistics, I think the answer to this question only comes by disproving
> the null hypothesis that "no part of the signal chain is damaged with an
> underflow". If you can't prove that damage will occur, then you're probably
> in the clear, but you also can't be positive that the null hypothesis is
> true. That being said, I don't think underflows are bad for the hardware in
> any way.
>
> An underflow is typically caused when a bottleneck on the host side
> prevents data from filling USRP buffers quickly enough to be pushed through
> the DAC at the requested rate. As I see it, the only place in the signal
> chain that *might* exhibit unexpected behavior in the face of samples not
> being present would be at the DAC (don't ask me why, but that would be my
> best guess). The way UHD operates, the DAC and ADC are initialized and
> running as soon as the streamer objects in UHD are initialized, and they
> sit there processing nothing (similar to an underflow state) until a TX
> stream command from the host tells the USRP radio core to release it's
> queued samples to the converter(s).
>
> Maybe that was all nonsense. In any case, I wouldn't worry about radio
> damage, I'd worry about fixing your underflows :)
>
> Best,
>
> Sam Reiter
>
> I'd have to agree with Sam here.
>
> An underflow on the TX will just mean that whatever the DAC last saw will
> be presented to the analog interface during the underflow period.
>   Which means perhaps a few microseconds of no level change coming out of
> the DAC.   Not a problem at all, as far as I know.
>
> The main thing is to optimize your code/computer-hardware to prevent them.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000089e92a059ffbc196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nothing in the USRP will be damaged. It&#39;s up to y=
ou to ensure that your subsequent RF chain will handle it. There are a few,=
 rare configurations which come to mind where it would be a Bad Thing to su=
ddenly pulse power on a millisecond timescale with extremely high bandwidth=
.<br></div><div></div><div><ol><li>Using your USRP to drive a linear accele=
rator (don&#39;t laugh, it&#39;s been done)</li><li>Using your USRP to driv=
e an extremely high power tube-based AM transmitter<br></li><li>Using your =
USRP to drive an amplifier which is not unconditionally stable</li></ol><di=
v>Outside of these you&#39;re probably fine.</div><div><br></div><div>Nick<=
br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Mar 3, 2020 at 3:21 PM Marcus D. Leech via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 03/03/2020 06:16 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hey Francisco,
        <div><br>
        </div>
        <div>
          <div>Interesting question. I remember reading this when it was
            initially posted, giving it some thought, and promptly
            forgetting to respond. It&#39;s a question that is difficult to
            give a &quot;yes&quot; or &quot;no&quot; to. Similar to statist=
ics, I think the
            answer to this question only comes by disproving the null
            hypothesis that &quot;no part of the signal chain is damaged wi=
th
            an underflow&quot;. If you can&#39;t prove that damage will occ=
ur,
            then you&#39;re probably in the clear, but you also can&#39;t b=
e
            positive that the null hypothesis is true. That being said,
            I don&#39;t think underflows are bad for the hardware in any
            way.=C2=A0<br>
          </div>
        </div>
        <div><br>
        </div>
        <div> An underflow is typically caused when a bottleneck on the
          host side prevents data from filling USRP buffers quickly
          enough to be pushed through the DAC at the requested rate. As
          I see it, the only place in the signal chain that <i>might</i>
          exhibit unexpected behavior in the face of samples not being
          present would be at the DAC (don&#39;t ask me why, but that would
          be my best guess). The way UHD operates, the DAC and ADC are
          initialized and running as soon as the streamer objects in UHD
          are initialized, and they sit there processing nothing
          (similar to an underflow state) until a TX stream command from
          the host tells the USRP radio core to release it&#39;s queued
          samples to the converter(s).=C2=A0</div>
        <div><br>
        </div>
        <div>Maybe that was all nonsense. In any case, I wouldn&#39;t worry
          about radio damage, I&#39;d worry about fixing your underflows :)=
=C2=A0</div>
        <div><br>
        </div>
        <div>Best,</div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr">Sam Reiter=C2=A0</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    I&#39;d have to agree with Sam here.<br>
    <br>
    An underflow on the TX will just mean that whatever the DAC last saw
    will be presented to the analog interface during the underflow
    period.<br>
    =C2=A0 Which means perhaps a few microseconds of no level change coming
    out of the DAC.=C2=A0=C2=A0 Not a problem at all, as far as I know.<br>
    <br>
    The main thing is to optimize your code/computer-hardware to prevent
    them.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000089e92a059ffbc196--


--===============2482046621094346634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2482046621094346634==--

