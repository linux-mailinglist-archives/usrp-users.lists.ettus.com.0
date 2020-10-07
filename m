Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF86C2861E4
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 17:13:06 +0200 (CEST)
Received: from [::1] (port=38728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQB7o-0003YT-Ck; Wed, 07 Oct 2020 11:13:04 -0400
Received: from mail-qv1-f46.google.com ([209.85.219.46]:40711)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <huacheng.zeng@gmail.com>)
 id 1kQB7k-0003SW-Ds
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 11:13:00 -0400
Received: by mail-qv1-f46.google.com with SMTP id j3so1315240qvi.7
 for <usrp-users@lists.ettus.com>; Wed, 07 Oct 2020 08:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aYkwCJ/hRRGB6SJYcir3cHIreaY7Ggso89c6WvhhUB0=;
 b=BMK0VQ0R6EB9Q4Rxbvc0w36Yr5OetyqxMTFSSxWSII512KZpttOFDb9R+OS1Tf7Ayl
 EOZF4wo3oMfemVUfer0pj0VsbqiMhkZpZE5jn7ulfKBd4SHASR8Pfmy7bmTqH0pxZBBk
 K/brechSc3ZGwrYlA+AKQJE8XGePvkQDMpszKAyvOhPHpEvyasJHqkGKlQcEQwBmtF89
 PR/ZCgQlPxaI+iELBNE0H8DQQ8ciIeNELJycIA3Bo3gSET0DNRYB3WciSefTdTLKKXRM
 uEDWxud3xPnztgyj2mCo9UBr05GgYRQe7UD1lmcxJVX916daL1ukPCFabpM2v9FnXmMb
 JOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aYkwCJ/hRRGB6SJYcir3cHIreaY7Ggso89c6WvhhUB0=;
 b=bu5wJ/QwVV72Bvr6/KFYnzm5ZZpRhrTPbJFswjiDruEdNRYf3j1BhZENDXtM9eWMEZ
 8BHObHGxtBmsZ/jzepJ5SVH4cJls1tWiLc5BzbIk51no79dE/n+MF+xiwQc1BbSVrAYo
 oGxt5/OCW6E97Cud0kwxHsno1tRLMZ0tUjbpouwH6d3sRZMCNyXR7MXd8dzEF5LITuKZ
 TANMYqAFB0UfwK6jdBZ6+1lx/aTfoVPmnTnNe8m/O0GCV4i5chVb5erFAYcyEStNpT+s
 E6gPcaU+wpuomO2gShlv1hSDGmqK28JjjCQCfD9d7getRzpIRLd9KMLsLs9Q4HtJNiGQ
 LS0w==
X-Gm-Message-State: AOAM533bclwoKguaLKIcV1NStYdBHpcDKIpIIOhyJ/NsaOtFcsVZejPV
 klevooyMA+BKT+7OKUujPawQSaIgoFcqc3Lp0U9npgC6aIiWMg==
X-Google-Smtp-Source: ABdhPJw+9yXoRdyO+OnISu/rt6PEMTzZyI/n7MwCIzxODpJAAdHDvpxAcEoecy+sBuYDT592cxmS+XsSJD6sWrjvFD8=
X-Received: by 2002:a0c:c407:: with SMTP id r7mr3763017qvi.36.1602083539636;
 Wed, 07 Oct 2020 08:12:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
 <5F7D3ACA.1080406@gmail.com>
 <CAB__hTQT9fHyHF=48WJbR8O975BdvautgXYJXRTzbGLY6GsQWg@mail.gmail.com>
In-Reply-To: <CAB__hTQT9fHyHF=48WJbR8O975BdvautgXYJXRTzbGLY6GsQWg@mail.gmail.com>
Date: Wed, 7 Oct 2020 11:12:06 -0400
Message-ID: <CAL0m=NYj=Xp+1dSchpfi0NxKv0MD2NkzL4T22OEb6VpaB3Xnvw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Question about N310 Internal synchronization
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
From: "Zeng, Huacheng via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2533930188718284670=="
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

--===============2533930188718284670==
Content-Type: multipart/alternative; boundary="00000000000047d88b05b1162433"

--00000000000047d88b05b1162433
Content-Type: text/plain; charset="UTF-8"

Dear Rob and Marcus:

Thank you for the prompt response. Based on my limited knowledge of digital
circuit, the 180 degree phase ambiguity may occur at the PLL circuit
initiation (power on) stage. After PLL is powered on, there is no phase
ambiguity. Is it right? My question actually comes to: When I switch N310
from RX mode (in time slot 1) to TX mode (in time slot 2) and then back to
RX mode (in time slot 3), would there be a phase ambiguity in those two RX
modes (in time slots 1 & 3)?

When I used USRP N210 with SBX, I did not observe such a phase ambiguity in
this case. But when I used USRP N210 with WBX, the phase ambiguity does
exist (based on my understanding).

Thank you!

Hua



On Wed, Oct 7, 2020 at 10:03 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> On Tue, Oct 6, 2020 at 11:50 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > On 10/06/2020 10:29 PM, Zeng, Huacheng via USRP-users wrote:
> > > Hello:
> > >
> > > I am using N310 for 4x4 MIMO transmission. Are N310's 4 TX/RX channels
> > > internally synchronized for MIMO applications? Does it need an
> > > external device (e.g., OctoClock-G CDA-2990) to synchronize those 4
> > > channels for MIMO applications?
> > >
> > > I am also exploring channel reciprocity using N310. I have successful
> > > experience with SBX in the implementation of channel calibration. But
> > > it seems WBX does not fit for this purpose because of some phase
> > > ambiguity issue (if I remember correctly). Would the daughterboards in
> > > N310 have the phase ambiguity issue?
> > >
> > > Many thanks in advance!
> > >
> > > Hua
> > >
> > The N310 has a pair of AD9371 RFFE chips.  Those chips have two channels
> > each, and those channels are coherent with respect to each other.
> >    There will be an unknown phase offset due to the nature of
> > (particularly Frac-N) synthesizers between the channels of the two
> halves.
> >
> > Unless the N310 channels implement phase-resynch via timed commands (I
> > don't think that they do), you'd need some external method for
> >    phase-aligning those channels.
> >
> > Now because they're using a common reference clock, once the phase
> > offset has been factored out they should be in perfect synchronization
> >    both in time and phase from that point forward.
>
> In addition to the common reference clock that Marcus mentioned, the N310
> also has capability
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_external_lo>
> to use an external LO for all channels. But, there will still be a 180 deg
> phase ambiguity.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000047d88b05b1162433
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Rob and Marcus:<div><br></div><div>Thank you for the =
prompt response. Based on my limited knowledge of digital circuit, the 180 =
degree phase ambiguity may occur at the PLL circuit initiation (power on) s=
tage. After PLL is powered on, there is no phase ambiguity. Is it right? My=
 question actually comes to: When I switch N310 from RX mode (in time slot =
1) to TX mode (in time slot 2) and then back to RX mode (in time slot 3), w=
ould there be a phase ambiguity in those two RX modes (in time slots 1 &amp=
; 3)? <br><br>When I used USRP N210 with SBX, I did not observe such a phas=
e ambiguity in this case. But when I used USRP N210 with WBX, the phase amb=
iguity does exist (based on my understanding). <br><br>Thank you!<br><br>Hu=
a<br><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 7, 2020 at 10:03 AM Rob Kossler v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><br>On Tue, Oct 6, 2020 at 11:50 PM Marcus =
D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>&gt;<br>&gt; =
On 10/06/2020 10:29 PM, Zeng, Huacheng via USRP-users wrote:<br>&gt; &gt; H=
ello:<br>&gt; &gt;<br>&gt; &gt; I am using N310 for 4x4 MIMO transmission. =
Are N310&#39;s 4 TX/RX channels<br>&gt; &gt; internally synchronized for MI=
MO applications? Does it need an<br>&gt; &gt; external device (e.g., OctoCl=
ock-G CDA-2990) to synchronize those 4<br>&gt; &gt; channels for MIMO appli=
cations?<br>&gt; &gt;<br>&gt; &gt; I am also exploring channel reciprocity =
using N310. I have successful<br>&gt; &gt; experience with SBX in the imple=
mentation of channel calibration. But<br>&gt; &gt; it seems WBX does not fi=
t for this purpose because of some phase<br>&gt; &gt; ambiguity issue (if I=
 remember correctly). Would the daughterboards in<br>&gt; &gt; N310 have th=
e phase ambiguity issue?<br>&gt; &gt;<br>&gt; &gt; Many thanks in advance!<=
br>&gt; &gt;<br>&gt; &gt; Hua<br>&gt; &gt;<br>&gt; The N310 has a pair of A=
D9371 RFFE chips.=C2=A0 Those chips have two channels<br>&gt; each, and tho=
se channels are coherent with respect to each other.<br>&gt; =C2=A0 =C2=A0T=
here will be an unknown phase offset due to the nature of<br>&gt; (particul=
arly Frac-N) synthesizers between the channels of the two halves.<br>&gt;<b=
r>&gt; Unless the N310 channels implement phase-resynch via timed commands =
(I<br>&gt; don&#39;t think that they do), you&#39;d need some external meth=
od for<br>&gt; =C2=A0 =C2=A0phase-aligning those channels.<br>&gt;<br>&gt; =
Now because they&#39;re using a common reference clock, once the phase<br>&=
gt; offset has been factored out they should be in perfect synchronization<=
br>&gt; =C2=A0 =C2=A0both in time and phase from that point forward.<br><br=
><div>In addition to the common reference clock that Marcus mentioned, the =
N310 also has <a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html=
#n3xx_mg_external_lo" target=3D"_blank">capability</a> to use an external L=
O for all channels. But, there will still be a 180 deg phase ambiguity.=C2=
=A0</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000047d88b05b1162433--


--===============2533930188718284670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2533930188718284670==--

