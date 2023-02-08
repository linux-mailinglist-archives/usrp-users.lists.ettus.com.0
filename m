Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E368F776
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 19:54:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3F0C383683
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 13:54:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675882445; bh=5Raf8zQDwKH2DdCCxmW+ma6nIRs+SHW1PpQFYJU7F1M=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Gqa1knWI73Jia627EXLrFsrXQgKeeuj2Jt7ZxohpjliSACFYQvPFNgLSRmZ1c01rQ
	 Qhami9JUaJFymyShy3C/UTVn+6vuoCzGmHJPwc+cwdqpqqkHoORukECfiiuHX2GfI2
	 kjBYh2pwvAFiznj0OhYXnFVot3xzIiKMDcLsXSrPH+fqvIbgCGetZaTXO40V8cFGTV
	 nujasDf4mw9NTXk9HfgFXhCArROiBq73ro+CJKZodqn8PKmcfG5t2D/A+Xxvx0gF2S
	 80nf0G/YbarzRsqIHasWx7bA7niuy2+9TG95DfZezBYK6adjL7rl2CEWbpaXpsxWXu
	 IzP77EDBhE4XA==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EB87380A4A
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 13:52:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OnYlFWeZ";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id gr7so53473200ejb.5
        for <usrp-users@lists.ettus.com>; Wed, 08 Feb 2023 10:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nzJxTDLEwWMO9fhmcijk7qV4Z+rSWiu7uyWqlFrQ2Gk=;
        b=OnYlFWeZkyzckT/+aGNDczrNCoKUnfdIfKUigkCmxq77HoqTR6F+UgBgqov7FmsK6+
         zG0QjpEC6er1qqS5633/sbVBltV12gY8ARu/RaRHqg5T5iVo1CwhDg2fX6QBYXhcioHS
         NJkqMtU1DCyIY5K2TlqO29CQ2uEvly9VX9O8CqjGXp7YpjdptUWPmJGKOQPOWa6pZ4U/
         wLkVYkmkwVK7GQHBfBhyUKLDcJ2AhQFhPLea3rbE+FWCLDWFWlCbpCv+mC3zSb5/jS3G
         0imencOzA9+Y1bXZda/X10/dqmnImXCBmSdk+0LIA0l0cdbUXRrLQ3IAmaK+4U6Ep8aJ
         5j0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nzJxTDLEwWMO9fhmcijk7qV4Z+rSWiu7uyWqlFrQ2Gk=;
        b=b1rbzXVFBbjWQJvBWQ4ko2jYAAR+FOargwYrdbRR+bdaAHXU8574AURxz06VB15IS7
         pIOiteG4NZYSLj7Hml5Txbf7QCyo3LIW2fV8+8KfSvSJTD8ihIKvWbM0XMUrhnWp6+Zu
         usN2tA8h7JcRbzjjo99wKMKWiNySzW6kB8n2QIhkvOtkMpk7SRPsHW6GXDozdvZT4w/k
         0OzOaYR1NUaq4byJMnAT8k0IpimUY+/xRZMlT8euQ0mpSK3esVQds5Z6YPbAn2ekX3s3
         QtwUBYI6fQM+ea/1ia2wikvK5+8xV1v9YqeXRjahKr+J7zGw9au4ZuHL2kd3FEcgGUO1
         lr1g==
X-Gm-Message-State: AO0yUKWjr3HoD2KOsuM4RYgLpzH/p1jWH68yd82GlU80u0/KmPJHONC9
	WTALIKUpgA9oooYGk0gFa6zL3ZotzCHzPeMNexWx9xTiXSCiuA==
X-Google-Smtp-Source: AK7set9FIh2T26FhoMjIJER8E+FYO8N7Q0ySUO0DxRentgu/LQUVV+y3w89DXnMdx+SsoDGHC8PCrHBc3iPd9W97g7I=
X-Received: by 2002:a17:906:af87:b0:881:dfda:173f with SMTP id
 mj7-20020a170906af8700b00881dfda173fmr1993460ejb.197.1675882359924; Wed, 08
 Feb 2023 10:52:39 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 8 Feb 2023 13:52:28 -0500
Message-ID: <CAEXYVK5OZwSGaiNu8s0=F_e9-Tqyu4wW7PO+qdpxo7E9+6tAmA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: LDLGW4OER66OXQ2JVGSLQQNZSKUJSZIE
X-Message-ID-Hash: LDLGW4OER66OXQ2JVGSLQQNZSKUJSZIE
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 and RFNoC Clock Domains
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LDLGW4OER66OXQ2JVGSLQQNZSKUJSZIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0163028410210452871=="

--===============0163028410210452871==
Content-Type: multipart/alternative; boundary="000000000000bfaa6205f434c47a"

--000000000000bfaa6205f434c47a
Content-Type: text/plain; charset="UTF-8"

I am trying to figure out the right way to use the clocks in RFNoC and the
clock domains.  Referencing here:


https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example:_Adding_an_FFT_Block

The tutorial says the X3XX has a `ce` clock of 214. 286 MHz, a `rfnoc_chdr`
clock of 200 MHz, and the `radio` clock of the N32x is 250 MHz.  The X410
appears to have a `radio` clock of 122.88 MHz, a `radio_2x` clock of 245.76
MHz, and the `rfnoc_chdr` clock of 200 MHz.

I think the only clocks exposed to RFNoC are the `radio`, `radio_2x`, and
`rfnoc_chdr` clocks, but it seems those are mostly useless if I am trying
to send at 491.52 MHz since there isn't enoch extra overhead to handle the
insertion of the CHDR header.  The X3XX has a 214.286 MHz clock which is a
little higher than the `radio` clock of 200 MHz.

Is there a way to get a slightly faster clock that could handle worst case
CHDR header insertion?  I don't know if the ~7% overhead on the X3XX is
necessary - it could be that 125 MHz for a 122.88 MHz radio data stream is
plenty so long as the SPP is high enough?

Maybe something even dynamic such that if the master_clock is picked as
either 245.76 MHz or 250 MHz that there could be the `ce` clock that is
always guaranteed to be 1-7% faster?

My solution was to use the 200 MHz `rfnoc_chdr` clock on the X410 with
NIPC=4 to keep up with 491.52 MHz, but I could have easily just used a
125-150 MHz clock, and eased up on the timing closure for my block.

Either way - it would be great to get some best practices on the clock
domains, and how to document their relative rates to each other?  Maybe
even something that could tell me the clock domains available from
rfnoc_image_builder along with their rates given a master_clock rate?

Thanks,
Brian

--000000000000bfaa6205f434c47a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to figure out the right way to use the clocks =
in RFNoC and the clock domains.=C2=A0 Referencing here:<div><br></div><div>=
=C2=A0=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_U=
HD_4.0#Example:_Adding_an_FFT_Block">https://kb.ettus.com/Getting_Started_w=
ith_RFNoC_in_UHD_4.0#Example:_Adding_an_FFT_Block</a></div><div><br></div><=
div>The tutorial says the X3XX has a `ce` clock of 214. 286 MHz, a `rfnoc_c=
hdr` clock of 200 MHz, and the `radio` clock of the N32x is 250 MHz.=C2=A0 =
The X410 appears to have a `radio` clock of 122.88 MHz, a `radio_2x` clock =
of 245.76 MHz, and the `rfnoc_chdr` clock of 200 MHz.</div><div><br></div><=
div>I think the only clocks exposed to RFNoC are the `radio`, `radio_2x`, a=
nd `rfnoc_chdr` clocks, but it seems those are mostly useless if I am tryin=
g to send at 491.52 MHz since there isn&#39;t enoch=C2=A0extra overhead to =
handle the insertion of the CHDR header.=C2=A0 The X3XX has a 214.286 MHz c=
lock which is a little higher than the `radio` clock of 200 MHz.</div><div>=
<br></div><div>Is there a way to get a slightly faster clock that could han=
dle worst case CHDR header insertion?=C2=A0 I don&#39;t know if the ~7% ove=
rhead on the X3XX is necessary - it could be that 125 MHz for a 122.88 MHz =
radio data stream is plenty so long as the SPP is high enough?</div><div><b=
r></div><div>Maybe something even dynamic such that if the master_clock is =
picked as either 245.76 MHz or 250 MHz that there could be the `ce` clock t=
hat is always guaranteed to be 1-7% faster?</div><div><br></div><div>My sol=
ution was to use the 200 MHz `rfnoc_chdr` clock on the X410 with NIPC=3D4 t=
o keep up with 491.52 MHz, but I could have easily just used a 125-150 MHz =
clock, and eased up on the timing closure for my block.</div><div><br></div=
><div>Either way - it would be great to get some best practices on the cloc=
k domains, and how to document their relative rates to each other?=C2=A0 Ma=
ybe even something that could tell me the clock domains available from rfno=
c_image_builder along with their rates given a master_clock rate?</div><div=
><br></div><div>Thanks,</div><div>Brian</div></div>

--000000000000bfaa6205f434c47a--

--===============0163028410210452871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0163028410210452871==--
