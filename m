Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kBdQHS1DNWoKqgYAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 15:25:01 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2BB6A60E7
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 15:25:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=egq6OqIx;
	dkim=fail ("body hash did not verify") header.d=nd.edu header.s=google header.b="MEwHC/vc";
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32763386421
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2026 09:24:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781875499; bh=fg0W+Hl6ckTx0Jt+tqVx7ouDrr298dpZkloIeVO5WAQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=egq6OqIxx9CNLwxQOQxOKvQYV0W28hJzeXWKA7h4a4ThK9Nfo4enRtND2bx/Azfbp
	 QdRalyzAhRvfxYtQySHCsfIbSWbJgHuVMFQixduBwBU1CHd4RJF9KuLsN+llKhdjux
	 G0FDRF/kmT4T/QhdE0isU4ILTBaT1nK3DX2PysXA3ucHpZTIekBVzuGcD//1E1dq5E
	 lXfr4k4pB/sKJtxYXdpkCSoEsiSTpN+9ozj2xhz8B4lF71S20BihkIzbbOgmpqx0RI
	 HavGIo+R1DgLLvq1M2ANwkUk9/8SOxdfBV1A0go4RTt2+1tnVCgtQBz+IIWl+7lMGF
	 Nw2hDOmqWSs4Q==
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B66023852E3
	for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2026 09:24:37 -0400 (EDT)
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-662ccb916c5so2261683d50.1
        for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2026 06:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781875477; cv=none;
        d=google.com; s=arc-20240605;
        b=llisjmMEW5dR26uqcZ0IK++bvWhVWeqote+qWXf/eBqraFJwYw9Imk7xesvHn8+UXY
         OTzjkAbu/Daeu5fzcgs8n5Vg6jhbNUw/MJRD5Hz5bscPsizDX9jM0+kxPlqE2MYr/JAm
         o4sKjhnZgqksCi5RWvZba0qmSr+sYyVHe+nYgGghA9FlTUBIlTgIYFFHXIUSWXFrX6vW
         0bFQs4ZFn9evVQ4MlxZlqxjfH7oRtRRrA5H+uLrd5XF5xowjZi+i2UFve6fYX2h8zk+y
         kvEACAC/wV5aPP8MTk0kJbs+F1RG7mcD76bWj+RCOp5rZdjQ87PoiajhotOvJA/d2gQP
         6TqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f+DoAxyLkD+BR78yLNoFptaLtBkD/2KVFFIDxI1bGNk=;
        fh=S78f1C2iLjAvUCu0O/+aMv/JrUbw/4U9ZCNQRLXy/vE=;
        b=Xa55Ahuxcx0pty8z2jdlATU44V/Z84s4b34xjQNrpFDzglaeiQcmx/GWUbNtc7MtCu
         4AzEUs5MF+V91iM0zS5/iIqSQX6qVgSEOpzSnNZMfdkmprD98lZ9PxxFfQUUWxf9PbEP
         AbMwFiD6d5UZJmqhj5RLspxLq3M7u7Bb7pQ3M4Y6kOJvtnX3VT2oRGRgignB7She67CD
         Pk9z3VJRo2Vp0hZjluguBytHEUnjrLvI4IeA7lSTbgiYF/D/sgiiTsasGIeyEssVWkSA
         OC7NXWQ02P/LvdRgvEjFY5vhtxjeZJzpoRSDFLvXpcH1fKYvl6+NCBjxk1ojVG6oZEOM
         FfgQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1781875477; x=1782480277; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f+DoAxyLkD+BR78yLNoFptaLtBkD/2KVFFIDxI1bGNk=;
        b=MEwHC/vcyE0nGaDQ1Sk9jERwoEbwPl1p0qBTEV80XSZvbASDBCoNSfdLap4aiX9klx
         vVqcw8hKEEUHi1r8blvVUmcLuhuUu4XQqGrqGYU44qDTbjgaUp4NWMoXBqMdG+zt2nBF
         mxPkdA2k/eaGcTvDqaiCP4cX9OEIKCCp+xrah1n/H07jadtHfrggNcPrESveeqA8ABek
         aTlgN8asEE+wI+ccLOkvbY03GENS+CMsHnckUBlQxuybYRT+5/Cbpz3PCiK3lhgg7c33
         sZdHoMgMWRIJb+0oRTJxqA8BmKX/wsxT5lg/QyJ6KLo4zpb4OkJlFn/1hxWzWMgXPpZh
         +pEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781875477; x=1782480277;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+DoAxyLkD+BR78yLNoFptaLtBkD/2KVFFIDxI1bGNk=;
        b=adVLTUfSxAXGBFuF8jMsk5oLQ5A1iQRZl838RD3WiQuIpBGwq+isNZQ75foItKfPlq
         o0/1mF4GAzHNHkYkVU3VTvbcWpJD6nduWj/T4shHaFLeAE6Lf2AXEYlA/2FmZLXLj1nx
         MjFVeCycbb0wgz+j9y9KRzxFsGYh09qkdjkPTORGOdA4fGMTwc/4VxLZpUc8qqPrnLAj
         N9OZ4S3p7Nv6aCrXy3k9l/pyIRqTZRoNJD1XspSYGX1e6dvLpgJIsFo0g7yzzL5O4JPe
         JbkS5hh/EGk3/ufMJoMkSP7JPNP+wkUV/tPgNXa9V6TxtZwTh37iD7yJWalxd86SrOkN
         8fDw==
X-Gm-Message-State: AOJu0YzIYo6k9szmSBHnUKNE5eZW6Yu0+uhwIjUF6ZnUdLSUgRe1JXMB
	VRwnEj5Uk8a8n7sHfx890pvZ/Pv9Ae+5hfhs1ajb4IJ2L/ENeouugx0xsyevKjvPZqbdp9pgx4m
	wGPDAPNL91P3w8Ggy4KgFchHz/AjgrN34H4h0R0CYH/8J9ywGa1gWr8cr
X-Gm-Gg: AfdE7clHzaPmeG5MYdggL/H6OdVQSeG7oD9wldd/SDdTeYrqxaSYY3/KCEexsHN3NJf
	+OcaYf4Vd0eLWjZyBX0me7crQ+PcFddTH0p/fJlBbVClQQeIb3s2LTKvElZ6qj/KIy+BDHjtpAF
	aKPhqExhP322dGEVoMlxve41Xv9ylZ90FU56dTcd5v+xccx4RRyHHB4UDB2EbsKBugXdN11Nibm
	x/XDGpoXNG4FyZ7fFJbPyWNQdl4StMyGCgv7U8QmHrFAMmRP4pJPt9CUKOt8SYwPP28SKh1rE2e
	B9+bLaov3jb0SoCKA8KJUpiW/U7ueQ1UfFG6i9w=
X-Received: by 2002:a05:690e:12cb:b0:660:580f:694 with SMTP id
 956f58d0204a3-662fca5bc37mr4156803d50.44.1781875476790; Fri, 19 Jun 2026
 06:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw@lists.ettus.com>
In-Reply-To: <EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw@lists.ettus.com>
Date: Fri, 19 Jun 2026 09:24:26 -0400
X-Gm-Features: AVVi8CeRAdy1ovVM6CJMyLr_aULDWdM1YirloDLWke6tJYA73pb9Jky6wSkpdf0
Message-ID: <CAB__hTSuOWPw7UGMr8vYHRjrCqRnwrih_RnDEu01bTuWTYXSMg@mail.gmail.com>
To: rfserranor@indra.es
Message-ID-Hash: FVSS5W5X3FPUIAEOL757A3DPBB3RUP44
X-Message-ID-Hash: FVSS5W5X3FPUIAEOL757A3DPBB3RUP44
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I could not achieve high time resolutions when transmit or receive in x440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVSS5W5X3FPUIAEOL757A3DPBB3RUP44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3922586955141076285=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rfserranor@indra.es,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,nd.edu:replyto,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B2BB6A60E7

--===============3922586955141076285==
Content-Type: multipart/alternative; boundary="000000000000d460c306549b36c0"

--000000000000d460c306549b36c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
"time_spec_t" can be set with one 'double' as in your code or with one
'int64' and one 'double' as indicated in the second example below (where
the first is the integer portion and the second is the fractional portion)
.  If you use just one double, it is likely the cause of the precision
issue.  See these examples below (produced by Gemini).
Rob

// Get the absolute time in split format (full precision preserved)
uhd::time_spec_t timeInit =3D usrp->get_time_now() + uhd::time_spec_t(0.25)=
;

// Create a high-precision relative time specifier for your delta (e.g.,
100 ns)
uhd::time_spec_t delta_t =3D uhd::time_spec_t(0, 1e-7);

// Operators safely combine full seconds and fractional parts without
losing resolution
stream_cmd.time_spec =3D timeInit + delta_t;

On Fri, Jun 19, 2026 at 3:57=E2=80=AFAM Rub=C3=A9n Serrano via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> I am currently using two Ettus x440 devices. To develop my application
> correctly I need to send and receive two signals between them (each devic=
e
> has to implement one transmitter and one receiver). This signal exchange
> must occur on different time. The thing is that, this time mismatching,
> must occur in short times, in order of nanoseconds, so I need to control
> the "sender" and "receiver" objects with high time resolutions. The code
> related to what I am saying is the following one:
>
> // in the receiver this is the command which controls the time where the
> receiver is began to listen
>
> *stream_cmd.time_spec =3D timeInit+uhd::time_spec_t(ATdma);*
>
> // in the transmitter this is the command which controls the time where
> the transmitter is began to send the signal buffered
>
> *md.time_spec =3D timeInit+uhd::time_spec_t(ATdma);*
>
> // with timeInit =3D usrp->uhd::get_time_now()+uhd::time_spec_t(0.25) &
> ATdma =3D double(1e-7)
>
> My questions here are the following:
>
> 1 - When ATdma is lower than tenths-hundreds of microseconds, the time
> controlled by the previous lines are changed to zero, so there is no
> displacement between simples. Does uhd::time_spec_t has no the enough
> resolution to represent this kind of decimals? Or maybe is the hardware
> which does not support this kind of resolutions?
>
> 2 - If it is a negative answer on 1st questions, maybe the problem could
> be given by the data type (double)? I do not think that the problem could
> be given by the data type, because this kind of data use floated point fo=
r
> the number representation, but maybe I am wrong.
>
> 3 - If none of those question is the problem, could I use
> "to_tick"/"from_tick" functions to achieve those resolutions? I tried to =
do
> this, but I do not know how, if time_pect_t variable always set the time
> with a integer part and a fractional part, and tick functions only gives
> integers, right?
>
> Thank you all for read/respond to my questions. I hope I would have
> explained my self on a properly manner.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d460c306549b36c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>&quot;time_spec_t&quot; can be se=
t with one &#39;double&#39; as in your code or with one &#39;int64&#39; and=
 one &#39;double&#39; as indicated in the second example below (where the f=
irst is the integer portion and the second is the fractional portion) .=C2=
=A0 If you use just one double, it is likely the cause of the precision iss=
ue.=C2=A0 See these examples below (produced by Gemini).</div><div>Rob</div=
><div><br></div><div>// Get the absolute time in split format (full precisi=
on preserved)<br>uhd::time_spec_t timeInit =3D usrp-&gt;get_time_now() + uh=
d::time_spec_t(0.25);<br><br>// Create a high-precision relative time speci=
fier for your delta (e.g., 100 ns)<br>uhd::time_spec_t delta_t =3D uhd::tim=
e_spec_t(0, 1e-7); <br><br>// Operators safely combine full seconds and fra=
ctional parts without losing resolution<br>stream_cmd.time_spec =3D timeIni=
t + delta_t;</div></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 2026 at 3:57=E2=80=
=AFAM Rub=C3=A9n Serrano via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><p>Hi everyone,</p><p>I am current=
ly using two Ettus x440 devices. To develop my application correctly I need=
 to send and receive two signals between them (each device has to implement=
 one transmitter and one receiver). This signal exchange must occur on diff=
erent time. The thing is that, this time mismatching, must occur in short t=
imes, in order of nanoseconds, so I need to control the &quot;sender&quot; =
and &quot;receiver&quot; objects with high time resolutions. The code relat=
ed to what I am saying is the following one:</p><p>// in the receiver this =
is the command which controls the time where the receiver is began to liste=
n</p><p>                    <em>stream_cmd.time_spec =3D timeInit+uhd::time=
_spec_t(ATdma);</em>    </p><p>// in the transmitter this is the command wh=
ich controls the time where the transmitter is began to send the signal buf=
fered</p><p>                    <em>md.time_spec =3D timeInit+uhd::time_spe=
c_t(ATdma);</em></p><p>// with timeInit =3D usrp-&gt;uhd::get_time_now()+uh=
d::time_spec_t(0.25) &amp; ATdma =3D double(1e-7)</p><p>My questions here a=
re the following:</p><p> 1 - When ATdma is lower than tenths-hundreds of mi=
croseconds, the time controlled by the previous lines are changed to zero, =
so there is no displacement between simples. Does uhd::time_spec_t has no t=
he enough resolution to represent this kind of decimals? Or maybe is the ha=
rdware which does not support this kind of resolutions?</p><p> 2 - If it is=
 a negative answer on 1st questions, maybe the problem could be given by th=
e data type (double)? I do not think that the problem could be given by the=
 data type, because this kind of data use floated point for the number repr=
esentation, but maybe I am wrong.</p><p> 3 - If none of those question is t=
he problem, could I use &quot;to_tick&quot;/&quot;from_tick&quot; functions=
 to achieve those resolutions? I tried to do this, but I do not know how, i=
f time_pect_t variable always set the time with a integer part and a fracti=
onal part, and tick functions only gives integers, right?</p><p>Thank you a=
ll for read/respond to my questions. I hope I would have explained my self =
on a properly manner.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d460c306549b36c0--

--===============3922586955141076285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3922586955141076285==--
