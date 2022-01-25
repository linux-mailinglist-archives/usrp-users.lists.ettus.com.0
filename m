Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 914CD49B74E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 16:12:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83ECB384498
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 10:12:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SD+KwnEC";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BD12384634
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 09:44:04 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id k17so7144363ybk.6
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 06:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x+XklD1ZlRcdV99fnb73SZ67YGNoFWgi2zNT1v6CPhA=;
        b=SD+KwnECuGw+mI9bV9TXdU2L29K+mESa7BXKndQKOwcf9uAcj8lVZqfq6MsUJZdK33
         tqflfQuMgvb0zOr1zoVvEXR1MFEj8hel+rJYQ8gAM/+6Om1Q/LBp0x52vNZTeW957HjY
         1/v/cr6P07yXVpfXU76TBDweOFS+Zq1sY0W18JrRm5BBHUUmhc0KtMoC4IOaj0Zf27hJ
         EpkN8bq7qsW5KFZ+rJK0dTX6NKxemoG7BgwnrAfpNUPnjVn96yaoLFvYCPP5qfSBhRJT
         1PNXGae3KX8jN0RVdoF0HRYnEWlqFKVaWDn2ipjIZvTxBr/TJJH4ATSu7K3gJoObWmDw
         LqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x+XklD1ZlRcdV99fnb73SZ67YGNoFWgi2zNT1v6CPhA=;
        b=aLKchSmZRdecv1YT1zfAI0aHKDVOql07O4NZe+wF5ccuA9vOynCYFkvGMrEU6quacY
         /eMRVodfqmBrBctbwa4MKzncYxv4wbU+Jde716q/eyrgOs90XcWLS23z5INqRRIGux++
         nuH6QtoVp8eKJ5G2uhCOjKQ+VzzwVLiuHkmfY9d2z3UqJ2uVxrCpixnH06vJYfXpEr0P
         lbYv2KEEHs6b9QhZ0DmEiXfZS3xY3Islt0fIdybxMvtZuA8rTcJAvqe6BaEXCxDGhRjz
         4ptpmhhV9HPV+Y8yMk+SFe3KTt1rYdDkbaC98cPL954PUP/4G5eaui4ETBw84gLhJCDd
         KfBg==
X-Gm-Message-State: AOAM533h6Xk+xTfjvRt/DdswuFzL5N3Dh1W7K2+GBoqWLScaVu5fuBCX
	3jwc5kkLz5LikcjJTjb8imtwtRn9/6Uco7Iqr9I/rCPUvsc=
X-Google-Smtp-Source: ABdhPJwcWpSFQUVA/GJKqWgyUBPmnbGyG9dVXa+9unq1ZHcKADvqiNr7BEBG1w3NoS1w69Grqvp4Xj9GllMOo9d2Tdc=
X-Received: by 2002:a25:f403:: with SMTP id q3mr29957109ybd.606.1643121844103;
 Tue, 25 Jan 2022 06:44:04 -0800 (PST)
MIME-Version: 1.0
References: <CAFV41_DSO7S5M0diZ98cLC+F1OT4+RVRCDErpQfzjaEaSU1bpg@mail.gmail.com>
 <58b68953-c6b3-54e2-4870-9f49667feec2@ettus.com>
In-Reply-To: <58b68953-c6b3-54e2-4870-9f49667feec2@ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 25 Jan 2022 09:43:53 -0500
Message-ID: <CAB__hTSOQ2_6pje7Lsc8F_jKbw_Av5bPnGKcPXMwxpJmyLdDyg@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: EB2LO7FLPX7ZMP7KK3HSVHJPSSJASFEQ
X-Message-ID-Hash: EB2LO7FLPX7ZMP7KK3HSVHJPSSJASFEQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EB2LO7FLPX7ZMP7KK3HSVHJPSSJASFEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7144103485497884220=="

--===============7144103485497884220==
Content-Type: multipart/alternative; boundary="000000000000d7846505d6691d27"

--000000000000d7846505d6691d27
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding to Marcus' comments, if the issue is indeed erratic file reading,
there are a couple of options:
- configure a ram file system and put your transmit files in there
- use the RFNoC Replay block to transmit directly from the FPGA (2GB total
storage). This may be tricky to configure from gnuradio (I've never tried)

On Tue, Jan 25, 2022 at 7:23 AM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi Seckin,
>
> it's unlikely your processor is the problem here =E2=80=93 if anything, i=
t's the
> 40=C2=B710=E2=81=B6=C2=B764b/s ~=3D
> 2.4 Gigabit per second that you're reading from your storage from two
> different files.
> Storage devices and file systems have pretty non-deterministic and
> large-variance read
> speeds and access times, and this might be a problem here.
>
> Does this also fail if you just connect two "null sources" instead of
> "file sources"?
>
> Best regards,
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 25.01.22 07:20, Se=C3=A7kin =C3=96nc=C3=BC wrote:
> > Hello,
> >
> > I am trying to use both channels of N320 to transmit the recorded files=
.
> But after a
> > certain times it gives =E2=80=9CU=E2=80=9D error and stop transmits at =
that channel.
> (The led light of
> > ch0 or ch1 turns off). Then it gives again =E2=80=9CU=E2=80=9D error an=
d the other led
> turns off. Then
> > =E2=80=9CL=E2=80=9D error occurs. The problem happens over 20 MSPS of s=
ample rate.
> Related figures are
> > attached.
> >
> > Why N320 stops transmitting when =E2=80=9CU=E2=80=9D error occurs? Isn=
=E2=80=99t it strange?
> >
> > There is no problem when transmitting on one channel.
> >
> > I have intel x520-da2 NIC, i7 8700 processor. I think it shouldn=E2=80=
=99t be a
> problem to
> > transmit at 20 Msps sample rate.
> >
> > Thanks
> >
> > Seckin
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d7846505d6691d27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Adding to Marcus&#39; comments, if the issue is indee=
d erratic file reading, there are a couple of options:</div><div>- configur=
e a ram file system and put your transmit files in there</div><div>- use th=
e RFNoC Replay block to transmit directly from the FPGA (2GB total storage)=
. This may be tricky to configure from gnuradio (I&#39;ve never tried)</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Jan 25, 2022 at 7:23 AM Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.=
mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Hi Seckin,<br>
<br>
it&#39;s unlikely your processor is the problem here =E2=80=93 if anything,=
 it&#39;s the 40=C2=B710=E2=81=B6=C2=B764b/s ~=3D <br>
2.4 Gigabit per second that you&#39;re reading from your storage from two d=
ifferent files. <br>
Storage devices and file systems have pretty non-deterministic and large-va=
riance read <br>
speeds and access times, and this might be a problem here.<br>
<br>
Does this also fail if you just connect two &quot;null sources&quot; instea=
d of &quot;file sources&quot;?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 25.01.22 07:20, Se=C3=A7kin =C3=96nc=C3=BC wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am trying to use both channels of N320 to transmit the recorded file=
s. But after a <br>
&gt; certain times it gives =E2=80=9CU=E2=80=9D error and stop transmits at=
 that channel. (The led light of <br>
&gt; ch0 or ch1 turns off). Then it gives again =E2=80=9CU=E2=80=9D error a=
nd the other led turns off. Then <br>
&gt; =E2=80=9CL=E2=80=9D error occurs. The problem happens over 20 MSPS of =
sample rate. Related figures are <br>
&gt; attached.<br>
&gt;<br>
&gt; Why N320 stops transmitting when =E2=80=9CU=E2=80=9D error occurs? Isn=
=E2=80=99t it strange?<br>
&gt;<br>
&gt; There is no problem when transmitting on one channel.<br>
&gt;<br>
&gt; I have intel x520-da2 NIC, i7 8700 processor. I think it shouldn=E2=80=
=99t be a problem to <br>
&gt; transmit at 20 Msps sample rate.<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; Seckin<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d7846505d6691d27--

--===============7144103485497884220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7144103485497884220==--
