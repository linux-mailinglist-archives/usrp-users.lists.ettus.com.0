Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEv2G28Al2mItQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:22:07 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC57815E915
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:22:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6B843850C8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:22:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771503725; bh=LTOeKmW7/oV9thd8I/bR8H49SlZ4NhrWByWQz0/lqeg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LFytYPAyCUnVZahTA4G2VogH0Vr/qqRaYHQ7txjZllUN/4jzT0uflYlZ0M8OKqXY4
	 Q34paOg4Q0857xSUE5SHYVFAkcNURFMHqaPa0h6IjmMafoDmQbfH/DqbJBYhn8XaY+
	 deHMnSD3UnleC4LA9MUTOChYmPifZAle9Oj0GlnN0B/zK9T1rhGXY/rstqmW8xqoVf
	 MHXQdtS87+Kxp0w/JbdyZtKS3oVen1Mvc67buXpOx9vEu4UHrR9g0aTyzSegdxPe7t
	 0AaDXE8rZhmFDl50k0SuOAy1wzLt1oCFVj9X64MW3n1a+duUCaWBnGUup1n4VXAMr0
	 dYGAxPwEow8WQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D93B384E67
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:21:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="uoyBQqO9";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-5062fc5d86aso7727331cf.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:21:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771503698; cv=none;
        d=google.com; s=arc-20240605;
        b=eXE0AR2eAOhFkL/0bl9jcMD/wQf2AcvAsi1qROHHUYb/BwrUS57C8OxC0qpRjlgoHv
         ftDj3r6GxiPdhSmKa7NjvSeUiXppj9aWxjScyBGU3D+rwOK+zKoxAH851bdRqvPCHN/0
         D67KyI2bKQMzqSOIqA7QbNTcnnPEB86kVItR0DpbRTYOY/secbZyRbNVhntI08kmmFzp
         Sxrd6SFT1sqQyUC+u57fU+qajMppoUUMNeCsQrnF/Qbo7V2A4ag71QkpZNBl9V2NaOb+
         Q31MC69TTmS0gI4nb3O2dAe9FRENShMwI+TZLS0BRTHsm1GCdW4KxUrBpVxc9S3BP2yO
         iL6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=F9fSn5eDPFQzJ+eRf2C889bVD/x4moeMUYqD1b0D+VQ=;
        fh=coLTCVRQ3oJxudDSCc+F10d+hsWal9fApncbsOLe8mQ=;
        b=gkUdzBmR35VcTt9GRL3myE6o+TeM0q4ADBgIr+ayDT+gHsIlSIbpu9SmXT9U1ktpSq
         lU21HevGzjW7uHuMFxwlGDiCLjA2EnG0kaZ63mr9LvuwTswqOgi2x7H5gixzQpM3ijZa
         cEaX5qLYkLO7g3FqYitWFJHic+7+7VZFEihWmbLn2FmGEN57xxMCinlaaJ6FlSAxBTVu
         Zrld4r88feivGzzaiotGdRUBfndWAICnjdbC6bBIxq0a9kPStp5vq1mbqyRSQsxK9EQY
         fpMixwXLOOWUAbaF+aUtsSjc3bk+Lwvta28e4APHVi+QnWULEBIEYFsicMm5TvqAEdGR
         lQ+A==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771503698; x=1772108498; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F9fSn5eDPFQzJ+eRf2C889bVD/x4moeMUYqD1b0D+VQ=;
        b=uoyBQqO9qUA8Uz8j4C+8len5jrYjEtj88xKeaqp5BAoR+CwqXrpIgJafOW4lWgieSw
         Qji6yGvTLCQ3as8kY4lQQOMb8bUi0mwQrk9RuX9Txz7HxM66f2ZorXaQGr72iV+q88jC
         9OwZFkK/2JsoxYI5nPrWFCuCT9BbQDu1ulVfxJP4wMD6Z50nYPsN0LEeEuGwP0qlO0v5
         RyOq56JldnkQFhkDoHHFKa7lOjK6uQcJcRQOCIFEm3bfsaMJ3yoB0DFuGWY3lmWe2Isk
         oDXSlS8tuY4CcI5YwdDbbWVLJF1/oK1wMFwrfe+qhZMnt3rZYhcXNLbdJtJ7ys06oOAw
         EYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771503698; x=1772108498;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F9fSn5eDPFQzJ+eRf2C889bVD/x4moeMUYqD1b0D+VQ=;
        b=SdtuXx3t1BB7dlOlUW7KNl77rxS0Arphwr8uaXpDZao0ashEPeJDQDmtnVOX1A8nAR
         aAuPl0bQOFClN7Iot401saYExuMIBh3bBETJgA9Fw/3rW/51hQXwjOKe/X0mTuMfKCeo
         IMvgg2AIK8y9EO8nXCyuwo9eNUweFl3H8AVC9MdADLAYUFy833gfVaN7r/Jq2Q85t6Cs
         LVUs4XCRJnSFmqwvQsSgx5y9L6CUykJCA6CSIzs8Il53X/qrmFPj0FsdbzAqBctS67ZT
         lVllnzIGCByxRa5cFqRovbGJb7ofTOJD/S8KXEmnx8scwyiO7B3UuKyWyByF5Ui6F3iB
         9MLQ==
X-Gm-Message-State: AOJu0YzG7FM11O926QygFdUdWJ+TDFLjqXqZxlUnoyEjOCqI3EHDw5iu
	vIaoktWSTlBwjwtr1AjJXydn/aN5iEPANrlwJpIQWgt1a+ZFciNVMr1MGi3Q9XO/NAKFz+uFM9f
	oQ9+/FrJa6NkV+7xZgCAPMlM8u0+D0wgvOlzB5P3jpEkuRIEwKC7PKbD7oA==
X-Gm-Gg: AZuq6aJCLMf0/DOulPfIjqfo/MfYPeslR1YX9kWLBc4shQLB7GcvduLpnXf1Y+xbxqk
	+4wnLvHsREWbLkrOKntQFn9nwI0zomWwvLVdtLLkxamYBhlI2bfWqJHT1DBA/DLB94SKovq1rv0
	ZgkXSTVnk5jr8ZcNGcP3Y6K5EYFifZ4+7pN8zJ8NM76lf4RngxP35+NxHHxtGnOlxQL481WY57m
	RPd9j45slibNDAnYA76XxFkERen5NE0LN7hWwf3oivBrEw4Q4EPweWLW+y2xjeDa3QYRPsxn7IF
	09Izzzlklz95c4Clo8pS4ahx/6XFVrKWfnaANQ==
X-Received: by 2002:ac8:5796:0:b0:4ed:65d9:162a with SMTP id
 d75a77b69052e-506a82b73a3mr264507161cf.34.1771503697464; Thu, 19 Feb 2026
 04:21:37 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com> <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:21:25 +0100
X-Gm-Features: AaiRm50t3_d3j5kU4UDFOOoOGAZ8aGkvp5DmLM-EuhruuyfO0fdBmns8mvO6OQs
Message-ID: <CAFOi1A50oN_=rkq1NSsZT_YbfOV5NHaLpv5Tz+qxHFDL2niUvg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CFMWUBORGUPFAVBTWVULXKIPFLIH62F2
X-Message-ID-Hash: CFMWUBORGUPFAVBTWVULXKIPFLIH62F2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFMWUBORGUPFAVBTWVULXKIPFLIH62F2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4592620945678314517=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,mail.gmail.com:mid,aero.org:email,ettus.com:email,nd.edu:email]
X-Rspamd-Queue-Id: BC57815E915
X-Rspamd-Action: no action

--===============4592620945678314517==
Content-Type: multipart/alternative; boundary="0000000000009b1b50064b2c585a"

--0000000000009b1b50064b2c585a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One important thing to point out is that we do *not* use DRAM for the
buffers, we use BRAM (of which much less is available). The requirement for
an endpoint buffer is that we can write to it synchronously. This is not
possible with DRAM, you must go through a memory interface, and then wait
for your write cycle, etc. The default Tx buffers are therefore already
close to the limit. If you want to increase it, you typically have to
change the design (e.g., take away the buffer from channel 1 and put it on
channel 0). But then you need to rebuild the image, which you're trying to
avoid.

The 1 GiB of PL-DRAM memory included with the N320 is fantastic for storing
large amounts of memory, e.g., for capture/replay. The *average* throughput
of the DRAM is also fast enough to capture both channels at max rate (it's
just that average throughput is not the only requirement for an endpoint
buffer). So if you can do replay/capture, then you're good. You can also
try the replay_buffered stream arg, although it's not a silver bullet. It
helps in some scenarios but not others, YMMV.

--M

On Tue, Jan 27, 2026 at 8:01=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Thanks.  I saw notes that seem to indicate that option. Anyone at Ettus/N=
I
> care to chime in as to how to do it?  I found an example for E320 that
> shows an RFNoC .yml with a dram FIFO.  I could make one for N320, but it =
is
> not clear how to use it from gnuradio.
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, January 27, 2026 6:45 AM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>
>
> *Do not open links or attachments unless you recognize the sender. If
> unsure, click the Report Phish button or forward the email to OPSEC. *
> Hi Eugene,
> I "think" that the replay block can act as a FIFO in recent UHD images.
> But, there is a possibility I am wrong such that there is a build-time
> parameter that is needed to config this.  Another option would be DPDK if
> you are not already using it.
> Rob
>
> On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
> Hi,
>
> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has 1=
 GB
> of DRAM.  I am getting occasional underflows when streaming at 200 Msps,
> even though the CPU is not very loaded and easily meets the average
> throughput.
>
> I have done all the usual stuff =E2=80=94 isolated cores, pin threads to =
cores,
> etc.
>
> Is there a way to increase the default DRAM buffer size w/out rebuilding
> the FPGA image?
>
> Thanks.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009b1b50064b2c585a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One important thing to point out is that we do *not* =
use DRAM for the buffers, we use BRAM (of which much less is available). Th=
e requirement for an endpoint buffer is that we can write to it synchronous=
ly. This is not possible with DRAM, you must go through a memory interface,=
 and then wait for your write cycle, etc. The default Tx buffers are theref=
ore already close to the limit. If you want to increase it, you typically h=
ave to change the design (e.g., take away the buffer from channel 1 and put=
 it on channel 0). But then you need to rebuild the image, which you&#39;re=
 trying=C2=A0to avoid.</div><div><br></div><div>The 1 GiB of PL-DRAM memory=
 included with the=C2=A0N320 is fantastic for storing large amounts of memo=
ry, e.g., for capture/replay. The *average* throughput of the DRAM is also =
fast enough to capture both channels at max rate (it&#39;s just that averag=
e throughput is not the only requirement for an endpoint buffer). So if you=
 can do replay/capture, then you&#39;re good. You can also try the replay_b=
uffered stream arg, although it&#39;s not a silver bullet. It helps in some=
 scenarios but not others, YMMV.</div><div><br></div><div>--M</div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jan 27, 2026 at 8:01=E2=80=AFPM Eugene Grayver &lt;=
<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div clas=
s=3D"msg-4152883299313261974">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.=C2=A0 I saw notes that seem to indicate that option. Anyone at Ettu=
s/NI care to chime in as to how to do it?=C2=A0 I found an example for E320=
 that shows an RFNoC .yml with a dram FIFO.=C2=A0 I could make one for N320=
, but it is not clear how to use it from gnuradio.</div>
<div id=3D"m_-4152883299313261974appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4152883299313261974divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 6:45 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);font-si=
ze:10pt;padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Eugene,
<div>I &quot;think&quot; that the replay block can act as a FIFO in recent =
UHD images.=C2=A0 But, there is a possibility I am wrong such that there is=
 a build-time parameter that is needed to config this.=C2=A0 Another option=
 would be DPDK if you are not already using it.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The default TX buffer for N32x is 128k samples =3D 512 kB.=C2=A0 The box ha=
s 1 GB of DRAM.=C2=A0 I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have done all the usual stuff =E2=80=94 isolated cores, pin threads to co=
res, etc.=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_-4152883299313261974x_m_-8211984150526382119Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
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

--0000000000009b1b50064b2c585a--

--===============4592620945678314517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4592620945678314517==--
