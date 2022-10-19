Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5901604AD1
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 17:12:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AAD33809DC
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 11:12:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666192326; bh=XYCv2DsH3NYJ+PRdtUKxroj9MULofaR2cYG2LXBb7E8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GRn50q4WHRyvva1EW1t2+vayaByHhQppr1ohC+gZfXoE++IS3ZJtIJjEyHQrHQPHG
	 qxr7lmT3mUvagTemPMq4YG1BdLDv/VfLDpekrMoHAhM7pgWCLwzCvWxuieUon9ZnkV
	 IK3GHjmh61dG/U0eV6bT7TnSW8OyjYjJbRoBIpoS7/ql0yd6Mfm3ASxP7FZTziBC43
	 MIBJjxzehHe/kZAjRCKWLT9Rjv4yYNa+JYGasiM6TYMkiL4C1pobbynEaLk+MasFCQ
	 ihElBYHYqbovveS+XXUvg7Mt83Liv5iRWDXAilEU6gcKGW4PLqowWvaO8IUYFSpWjq
	 bWCijjOBxfChw==
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 047B5383A70
	for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 11:04:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="0f0j+/vA";
	dkim-atps=neutral
Received: by mail-vs1-f46.google.com with SMTP id k6so18013001vsp.0
        for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 08:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RaBF5KDoL+CbvUiE8qS7EJBon1X1Cd5FLMpn9f02b/g=;
        b=0f0j+/vAkdK1AOCJ6Ur1dkCJlUIl4zaPBt6vJgvPW+/hspYh8rStaMC984B4f9QLmJ
         XAZO16dwYaK/Zfrwb8owhUFQL8hnRPh00hvkUvuIigbU0CkcinWCWRWq0NwBBXIt+bP5
         HrJrlh0k+oePR2RCU2scbBaw+DkrhSfexQbfdvESinQj2QoWPYOaUPY9XFclnthTbXWN
         m9CO7befpdc8HSWAE3ax3OCd8ql28aHA2ngPuh+TspPBrV8RJ8ztio+/WXf2inx2w0wX
         BA7c2c3gjzSc7Kz532KIoiOiDABNEsA5y1kefvDboJ/cIDf1z2h/IlUkw75HQIbB7i03
         EffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RaBF5KDoL+CbvUiE8qS7EJBon1X1Cd5FLMpn9f02b/g=;
        b=gTbF6s/7HDqsThF5VOCXpbuUb+Cbls6PywJ8QVx4stkLlk1gcQOIyccSUAgn6NdcT7
         e0tSkHVYXp99FkJdAnSIMRyTLyGZZQ7Ft3nRhi7dY91bYeL+vpn0fQ3fuoQf7FevhKTP
         PDA/vcXf3vk3BmXkDiUjLuviU+87HXMkOZ2h3AOqurAtVG8Lnir7tTTEk0oYaA+/eQ7x
         yNjM8ZA0QZTlvDjD8Su2uKvPqUEaaH1V5DoyGuQxBtngCoY7aQbyVyPKhmXbGtj1mQhi
         3XeQlZQsr88SGsrWZCaCde7tQpk9XtflOjbFtRGd2rllQWAHADbGzCI983ZZqVLQ8vXv
         oHsA==
X-Gm-Message-State: ACrzQf0PLb5pefEej0b+zdHxMz7hrhHykbWhqnJmjktsJtHJuRZbUziN
	EI/SsxRbEKA+DknfqE9ViJXdkIKbMCbBP0/Qk9F/tjfJt40yK665
X-Google-Smtp-Source: AMsMyM7WZ0ZVE32u8inoadLWK0qnsw+Vjs/6wA5mBcMRbZVWbf7jxySops63G8v4OS2P1I0wnP38finCDvLTbQo0EXQ=
X-Received: by 2002:a67:eb95:0:b0:3a9:5e4f:c4fc with SMTP id
 e21-20020a67eb95000000b003a95e4fc4fcmr3918032vso.40.1666191874734; Wed, 19
 Oct 2022 08:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
 <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com> <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
In-Reply-To: <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 19 Oct 2022 11:04:23 -0400
Message-ID: <CAL7q81uMR0y-qCWZSqFbiuEMp3kTgW2n5cYQK=-AtP0_HCz9Ug@mail.gmail.com>
To: Jonathan Pratt <jpratt@srcaus.com>
Message-ID-Hash: 56FRVWE5KJLCOQEHFCXFLFDOENEXU7CB
X-Message-ID-Hash: 56FRVWE5KJLCOQEHFCXFLFDOENEXU7CB
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/56FRVWE5KJLCOQEHFCXFLFDOENEXU7CB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7354576800524717964=="

--===============7354576800524717964==
Content-Type: multipart/alternative; boundary="000000000000d24e5805eb6486b5"

--000000000000d24e5805eb6486b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello JP,

You can try updating UHD and the FPGA image to UHD 4.3. If that doesn=E2=80=
=99t
help, then this issue is very likely a hardware failure and you=E2=80=99ll =
want to
contact support@ettus.com about RMAing the device.

Jonathon

On Tue, Oct 18, 2022 at 7:57 PM Jonathan Pratt <jpratt@srcaus.com> wrote:

> To clarify, the communication has previously worked with the same
> software/radio configuration.
>
> This is an evolved error and we would just like to know what it means so
> that we have the hope of fixing it - needs to be a remote fix as we no
> longer have physical access to the radio.
>
> thanks - JP
>
> -----Original Message-----
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Wednesday, 19 October 2022 09:52
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during
> initialization of block 0/Radio#0
>
> WARNING: This message has originated from an untrusted source. Be mindful
> of attachments and embedded links.
>
> On 2022-10-18 19:41, Jonathan Pratt wrote:
> > Hi
> >   We are trying to talk to an x310. Access to the device is limited to
> the ethernet connection.
> > The message we get back when starting a gnuradio flow graph is [ERROR]
> > [RFNOC::GRAPH] Error during initialization of block 0/Radio#0!
> > [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RuntimeError: self_cal_adc_capture_delay: Self calibration failed.
> Convergence error.
> >
> > The X310 has ONE TwinRx RF Daughterboard attached.
> >
> > Can someone please indicate what the error means and suggest a
> > workaround? Please ignore any prefix that we have added
> >
> > thanks - JP
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe
> > send an email to usrp-users-leave@lists.ettus.com
> What version of UHD are you using?  What version of Gnu Radio?
>
> I've been using an X310 with UHD 4.1.0.5 and GR version 3.10.1.1 with two
> TwinRX installed, without any issues.  I'm using
>    the first SFP port (SFP0) but at 10Gbit.   I've previously used it at
> 1GBit without any issues.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send
> an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--=20

Jonathon


*DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/
<https://www.ettus.com/sdr-software/licenses/>.*

*NI will only perform services based on its understanding and condition
that the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.*

--000000000000d24e5805eb6486b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello JP,</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">You can try updating UHD and the FPGA image to UHD 4.3. If that doesn=
=E2=80=99t help, then this issue is very likely a hardware failure and you=
=E2=80=99ll want to contact <a href=3D"mailto:support@ettus.com">support@et=
tus.com</a> about RMAing the device.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Jonathon</div><div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 7:57 PM Jonathan Pratt &l=
t;<a href=3D"mailto:jpratt@srcaus.com">jpratt@srcaus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-c=
olor:rgb(204,204,204)">To clarify, the communication has previously worked =
with the same software/radio configuration.<br>
<br>
This is an evolved error and we would just like to know what it means so th=
at we have the hope of fixing it - needs to be a remote fix as we no longer=
 have physical access to the radio.<br>
<br>
thanks - JP<br>
<br>
-----Original Message-----<br>
From: Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt; <br>
Sent: Wednesday, 19 October 2022 09:52<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initializatio=
n of block 0/Radio#0<br>
<br>
WARNING: This message has originated from an untrusted source. Be mindful o=
f attachments and embedded links.<br>
<br>
On 2022-10-18 19:41, Jonathan Pratt wrote:<br>
&gt; Hi<br>
&gt;=C2=A0 =C2=A0We are trying to talk to an x310. Access to the device is =
limited to the ethernet connection.<br>
&gt; The message we get back when starting a gnuradio flow graph is [ERROR]=
 <br>
&gt; [RFNOC::GRAPH] Error during initialization of block 0/Radio#0!<br>
&gt; [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Runt=
imeError: self_cal_adc_capture_delay: Self calibration failed. Convergence =
error.<br>
&gt;<br>
&gt; The X310 has ONE TwinRx RF Daughterboard attached.<br>
&gt;<br>
&gt; Can someone please indicate what the error means and suggest a <br>
&gt; workaround? Please ignore any prefix that we have added<br>
&gt;<br>
&gt; thanks - JP<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a> To unsubscribe <br>
&gt; send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" t=
arget=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
What version of UHD are you using?=C2=A0 What version of Gnu Radio?<br>
<br>
I&#39;ve been using an X310 with UHD 4.1.0.5 and GR version 3.10.1.1 with t=
wo TwinRX installed, without any issues.=C2=A0 I&#39;m using<br>
=C2=A0 =C2=A0the first SFP port (SFP0) but at 10Gbit.=C2=A0 =C2=A0I&#39;ve =
previously used it at<br>
1GBit without any issues.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a> To unsubscribe send an email=
 to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">u=
srp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"margin:0in;=
font-family:Calibri,sans-serif"><font style=3D"background-color:rgb(255,255=
,255)" color=3D"#000000">Jonathon</font></p><p style=3D"margin:0in;font-fam=
ily:Calibri,sans-serif"><br></p><p><font size=3D"1" color=3D"#999999"><i><s=
pan style=3D"font-family:Arial,sans-serif">DISCLAIMER: Any attached Code is=
 provided As Is. It has not been tested or validated as a product, for use =
in a deployed application or system, or for use in hazardous environments. =
You assume all risks for use of the Code. Use of the Code is subject to ter=
ms of the licenses to the UHD or RFNoC code with which the Code is used. St=
andard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D"https://ww=
w.ettus.com/sdr-software/licenses/" target=3D"_blank">https://www.ettus.com=
/sdr-software/licenses/</a>.</span></i><u></u><u></u></font></p><p><i><span=
 style=3D"font-family:Arial,sans-serif"><font size=3D"1" color=3D"#999999">=
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.</font></span></i></p></div></div>

--000000000000d24e5805eb6486b5--

--===============7354576800524717964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7354576800524717964==--
