Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m0hTHgu7M2pUFgYAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jun 2026 11:31:55 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4FC69EE50
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jun 2026 11:31:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="RM4/QECr";
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=oAtnVJp+;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44C59383070
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jun 2026 05:31:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781775113; bh=63ibQQaWqzNZAUPasoMLLc3pTYdJIzgyj97MmiYEWIM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RM4/QECrDn9RFedTibTNFXtff9/zzjOvv/g7DcRa1C12PATLYTWmeYpWOAMvFLjXz
	 NCGGwCW050Uwip9uzEV33XKhiO/QUJQUzdHtmtSSuYbY7SVKUPMMEVPHHD3hEkVgx7
	 NJLq75kws0mSzBQIURdfTsrbpOgtvTymHsvhe/QLOEpdZ8+jx8jTGk+QwhgeF6T9OQ
	 1y7BbGmeS4P4ebBY452uOo/fnSZsMDK/Rn3euAMnUiL+TqNQLyC1DcwUfyFNwfvMHn
	 G5DY5bY5NmznxXHO1Kc/IhJvr1yy88Sbv2Wo7JLv1qHzQvm0AWLMNk1es+Zf2at9Jt
	 MzoN+qxnDqAeg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 04081385E35
	for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2026 05:31:40 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8dd20fa3c41so2942706d6.2
        for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2026 02:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781775100; cv=none;
        d=google.com; s=arc-20240605;
        b=CWAV4iM2sPySz3NkzVrCu/9r60u5g2U0E4qB533U5bXpLl5d3mzShE4t3SzCVPJU9V
         svtv8T7/zctc7gLiw87Megckqh8JAVs1Pvwc2WJmKxGC8Y7Ui/5k78hZueB3BavehCVe
         mijfhSsVgRKK6wRaU1s0gBEG5uLbz04efn/HpIoGT7MA0WZQ3dpesAzJcyAMr+l5ppOM
         hxp57N7zjbeOMzWDQx96nuvP8IrGQHv5wrXMq5Iat3AMQVmNH8/wnTPKdDn+vI5bpF6k
         LS7bJO1YAb4A9rc2xtVDgru7H1+VDtc/ddbmSYVji17oTlftzqLDLF8P/pKtGc5x0Y3w
         /mmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=qlXrshIEvJIUrwV7/9lnmFKQNFjNndiAcENridPGnEc=;
        fh=coLTCVRQ3oJxudDSCc+F10d+hsWal9fApncbsOLe8mQ=;
        b=GwAPwbRcly+JTS4D99dG6e5m112wmeIrxhZ3Qew4f/ppHfEpDsWp/LgyrEbFGXsYwY
         jVz/rPsK2EzzGKX9PyDwzQEuMEZR1iT4Xyu6FOvKTSg0QW2GhqjL/FjyB+Gy68Px6nPA
         6zJPg5X6DOAdHyFRmQsMLw80bEistC/N3X+0ghSEyg3IXq2VylzehX4Kvf9omkrl6Cau
         kzNn8yANcstqOyzRGio14cWgDfPMvfzYokycbK2oeEdwDAaUOcdGv4og2Cm0NVE0Fcof
         z1mUAWSlMxslkuwOW3OcKkgNNONR2U+8mtG/ycOTgOnwNUf14X7nkv8adQuMC7bXlc1Y
         auDA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1781775100; x=1782379900; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qlXrshIEvJIUrwV7/9lnmFKQNFjNndiAcENridPGnEc=;
        b=oAtnVJp+/1QTN3CXXrvK14OZJ9dLctKWeSvE4B2321TyrsIW3SCfDuqNrc7oxlJzc9
         X4WoeIuW2CqKGTu/pzyEkNZS4djvcDDiz41cQg7Uxq+cgpm0dwR4ss8gK7/rsEjhUTjU
         Lj0yEphPLnRk+QF+9TDqG+tC+MfYgp0V+f926FxzzlKLfu1EziNYj3tvlCQjEpB/d/6t
         /B1Zxavw2Hc0eu/mWmLyoDxn+eN3VSDxGRA/IYApzN9vF3k6FXO8qvlVQFZ66zDpbRiP
         SyJJdXonVe5SrepBpwmojQTx/uT7pUoXNt5PNx0GCFGj+G/+dX1t+fM9nlHkhAdjlIQW
         VveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781775100; x=1782379900;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlXrshIEvJIUrwV7/9lnmFKQNFjNndiAcENridPGnEc=;
        b=cxK+Ob3VYdqwK+MLCuyhm9R5OglYWa3KZ95pxmf2zJBvJy7kPTsD6ZvrXniKqAV13r
         SKGGEm9Ikjg/ym1ISt+YPGqUMFrlUKQN1xCarAgsOrJbtFpRR36v9bavJQhUMUGgha0+
         KWcDv3MH+Vn1mJbJultr0PsJqJPGyeDL4glcqRry2phWRX3+dT7onJoQ/J5/pL0oQIYX
         UygJR0oYBCGLoF73a1TdF4Jnit4xfZK2jV0DBVLJFpHPDWa4mAs53FiGSpHsAxfq3VsW
         k1vrLhAd6MKzmV+Fvh4mQZQtEPuxm3BOFo3xIzSArL8A593Oug75RORzqDkEM6743oYt
         dJNg==
X-Gm-Message-State: AOJu0YxvMcoH/wFrWCI2PWgNMM5WZZOJbbvkU9Vju7oSI2Fp5mPqxt23
	Kg0Y17DvqnHeixpEoOdurKrX4Qm31tPk1vLv4VmualnqRbXii4/FMncu03O2cJsr00NcrKioCGR
	huw4bNlEHmljzVEj30eck2f5Bojp9ZELKqvzuBfd/SIAsJ+H34SRlgs3kTQ==
X-Gm-Gg: AfdE7cn0BBC8ivDtBjmKWN0gHWuuDNsNpQRVL1NgqxCaXBOYA7pld25Yoj3p5VjB3ZN
	wgjJq0e3FDjP1iFuPAEL4Q463OC+JSyhAniL9nlPJjlgisQK6BNXoaCQ50iNDFFtHpZGTz+PDhN
	UVz18SGASfA4jcOyl9XDsog6DLTlIyd1f1h5Sp37zergS6KAa0FD7UcIUgCuo9Wer1HUcqYlmYZ
	NSzEoIj+jkXO3FDCOHVCs0qMjUg+b1w39qBfgTs81h7cj+BVvaKsqG7TAaXl/b6/4rR0CXf7MVX
	+1IHA9zBMRC+dtz5+oTccWer+SnHx6JZQw3/HQ==
X-Received: by 2002:a05:6214:5d04:b0:8cc:f0b9:1f26 with SMTP id
 6a1803df08f44-8db5b0dc5a6mr136254686d6.15.1781775100045; Thu, 18 Jun 2026
 02:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB912603E936D78C167ABC8C14ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <e390a651499a4b30a308130124c50226@hhi.fraunhofer.de> <SJ0PR09MB9126596B91864656B0CB9544ECE42@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126596B91864656B0CB9544ECE42@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 18 Jun 2026 11:31:28 +0200
X-Gm-Features: AVVi8CeARYFS1oUg3vuMlBOxdt0CCx2P3JS4g6W1JJtZ4vmnCqX6qT1TLXDO8bU
Message-ID: <CAFOi1A7Q0_1R9ML9CTnGUf36Gnor=pGU9vq+6cc2mmPvwMfmVw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YGCBOYYSOKVDNJ77WRD7EGXWXD3UBPSO
X-Message-ID-Hash: YGCBOYYSOKVDNJ77WRD7EGXWXD3UBPSO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 timed commands for tuning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YGCBOYYSOKVDNJ77WRD7EGXWXD3UBPSO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1066919710266876688=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:from_mime,ettus.com:email,aero.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E4FC69EE50

--===============1066919710266876688==
Content-Type: multipart/alternative; boundary="000000000000e87a65065483d74b"

--000000000000e87a65065483d74b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All of the above is true. Let me try and sort this out:

- When we do a tune on the X440, we do a change to the phase accumulator of
the NCO ("tuning the NCO"). This goes through the xrfdc API, and that means
it's all in software, and that means we cannot do timed tuning of the NCO
- However, we can also reset the phase of the NCO, which is something we
*can* do with a timed command. This goes through RFNoC/CHDR/the PL and is
outside of software control.

If you do what Jurk described, i.e.:

set_command_time(t0)
set_rx_frequency(f0)

...then the phase reset will happen at t0, but the retuning will happen
ASAP (with undeterministic latency) when the set_rx_frequency() call is
executed.

So, back to the original question: Why is this the way it is?

Eugene is right; the RFSoC datasheet says PL-based tuning is theoretically
possible. However, there are many things that are simply hard to get right
in our RFSoC configuration, and we simply haven't decided that enabling
faster, PL-based timed tuning of the NCO is the next thing we want to
tackle. The reason we support timed phase reset is so that we can enable
deterministic phase relationships between channels. If we only did the
software-based tuning of the NCO with random latency, then NCOs would
always be at random phase. We do try and prioritize the features you guys
find the most useful (which means deprioritizing other features), and this
is where we're currently at.

--Martin

On Wed, Jun 17, 2026 at 10:35=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
wrote:

> I thought that timed tune commands do not work =E2=80=94 I need a queue o=
f timed
> commands.  I looked at the HDL for RFSoC and it appears the DDC in the
> ADC/DAC hard block does not have an external frequency control enabled.
>  How are timed tune requests implemented without this feature?
>
> ---------- Claude says: -------------
> The Ettus USRP X440 lacks support for timed tuning on the RFSoC
> Numerically Controlled Oscillator (NCO). While commands are queued in the
> FPGA FIFO, timed frequency tuning cannot be executed. Below are the key
> constraints for handling timed commands and command queues on this device
> Key Command Queue & Timing Constraints
>
>    - Timed Tuning Limitation: The X440 relies on direct-sampling of
>    ADCs/DACs; timed tuning of the internal RFSoC NCO is not supported.
>
> ---------
> ------------------------------
> *From:* Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de>
> *Sent:* Wednesday, June 17, 2026 3:14 AM
> *To:* Eugene Grayver <eugene.grayver@aero.org>; usrp-users <
> usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] AW: X440 timed commands for tuning
>
>
> *Do not open links or attachments unless you recognize the sender. If
> unsure, click the Report Phish button or forward the email to OPSEC. *
>
> Hello Eugene,
>
> timed commands are supported on the X440. Set the command time with
> set_command_time and then send the commands (set_rx_freq or set_tx_freq f=
or
> freq tuning).
>
> Best regards
> Dennis Jurk
>
>
>
> *Von:* Eugene Grayver <eugene.grayver@aero.org>
> *Gesendet:* Dienstag, 16. Juni 2026 22:56
> *An:* usrp-users <usrp-users@lists.ettus.com>
> *Betreff:* [USRP-users] X440 timed commands for tuning
>
>
>
> Why are timed commands (specifically freq tuning) not supported on the
> X440?  The RFSoC definitely allows using FPGA (PL) logic to trigger
> cross-tile configurations.
>
>
>
> Eugene Grayver, Ph.D.
>
> Principal Engineer
>
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e87a65065483d74b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>All of the above is true. Let me try and sort this ou=
t:</div><div><br></div><div>- When we do a tune on the X440, we do a change=
 to the phase accumulator of the NCO (&quot;tuning the NCO&quot;). This goe=
s through the xrfdc API, and that means it&#39;s all in software, and that =
means we cannot do timed tuning of the NCO</div><div>- However, we can also=
 reset the phase of the=C2=A0NCO, which is something we *can* do with a tim=
ed command. This goes through RFNoC/CHDR/the PL and is outside of software =
control.</div><div><br></div><div>If you do what Jurk described, i.e.:</div=
><div><br></div><div>set_command_time(t0)</div><div>set_rx_frequency(f0)</d=
iv><div><br></div><div>...then the phase reset will happen at t0, but the r=
etuning will happen ASAP (with undeterministic latency) when the set_rx_fre=
quency() call is executed.</div><div><br></div><div>So, back to the origina=
l question: Why is this the way it is?</div><div><br></div><div>Eugene is r=
ight; the RFSoC datasheet says PL-based tuning is theoretically possible. H=
owever, there are many things that are simply hard to get right in our RFSo=
C configuration, and we simply haven&#39;t decided that enabling faster, PL=
-based timed tuning of the NCO is the next thing we want to tackle.=C2=A0Th=
e reason we support timed phase reset is so that we can enable deterministi=
c phase relationships between channels. If we only did the software-based t=
uning of the NCO with random latency, then NCOs would always be at random p=
hase. We do try and prioritize the features you guys find the most useful (=
which means deprioritizing other features), and this is where we&#39;re cur=
rently at.</div><div><br></div><div>--Martin</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jun 17, 2026 at 10:35=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:=
eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg4476079706=
953339826">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I thought that timed tune commands do not work =E2=80=94 I need a queue of =
timed commands.=C2=A0 I looked at the HDL for RFSoC and it appears the DDC =
in the ADC/DAC hard block does not have an external frequency control enabl=
ed.=C2=A0 =C2=A0How are timed tune requests implemented
 without this feature?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------- Claude says: -------------</div>
<div style=3D"margin:12px 0px 16px;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">
The Ettus USRP X440 lacks support for <span style=3D"font-weight:600">timed=
 tuning</span>=C2=A0on the RFSoC Numerically Controlled Oscillator (NCO). W=
hile commands are queued in the FPGA FIFO,
<span style=3D"background-color:rgb(255,241,0)">timed frequency tuning cann=
ot be executed</span>. Below are the key constraints for handling timed com=
mands and command queues on this device</div>
<div style=3D"margin:24px 0px 12px;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">
<span style=3D"font-weight:600">Key Command Queue &amp; Timing Constraints<=
/span></div>
<ul style=3D"margin:12px 0px 16px">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin:0px 0px 12px=
">
<span style=3D"font-weight:600" role=3D"presentation">Timed Tuning Limitati=
on:</span>=C2=A0The X440 relies on direct-sampling of ADCs/DACs; timed tuni=
ng of the internal RFSoC NCO is
<span style=3D"font-weight:600" role=3D"presentation">not supported</span>.=
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------</div>
<div id=3D"m_1399818555654542051appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_1399818555654542051divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Jurk, Dennis &lt;<a href=3D"mailto:dennis.jurk@hhi.fraunhofer.de" target=3D=
"_blank">dennis.jurk@hhi.fraunhofer.de</a>&gt;<br>
<b>Sent:</b> Wednesday, June 17, 2026 3:14 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;; usrp-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] AW: X440 timed commands for tuning</font>
<div>=C2=A0</div>
</div>

<div lang=3D"DE" style=3D"overflow-wrap: break-word;">
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);font-si=
ze:10pt;padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div>
<p><span lang=3D"EN-US">Hello Eugene,<br>
<br>
timed commands are supported on the X440. Set the command time with set_com=
mand_time and then send the commands (set_rx_freq or set_tx_freq for freq t=
uning).<br>
<br>
Best regards<br>
Dennis Jurk</span></p>
<p><span lang=3D"EN-US">=C2=A0</span></p>
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0cm 0cm"=
>
<p><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-se=
rif">Von:</span></b><span style=3D"font-size:11pt;font-family:&quot;Calibri=
&quot;,sans-serif"> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aer=
o.org" target=3D"_blank">eugene.grayver@aero.org</a>&gt;
<br>
<b>Gesendet:</b> Dienstag, 16. Juni 2026 22:56<br>
<b>An:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Betreff:</b> [USRP-users] X440 timed commands for tuning</span></p>
</div>
</div>
<p>=C2=A0</p>
<div>
<p><span style=3D"color:black">Why are timed commands (specifically freq tu=
ning) not supported on the X440?=C2=A0 The RFSoC definitely allows using FP=
GA (PL) logic to trigger cross-tile configurations.</span></p>
</div>
<div id=3D"m_1399818555654542051x_Signature">
<div>
<p><span style=3D"color:black">=C2=A0</span></p>
</div>
<div>
<p><span style=3D"color:black">Eugene Grayver, Ph.D.</span></p>
</div>
<div>
<p><span style=3D"color:black">Principal Engineer</span></p>
</div>
<div>
<p><span style=3D"color:black">310-336-1274</span></p>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000e87a65065483d74b--

--===============1066919710266876688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1066919710266876688==--
