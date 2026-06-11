Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VyP0NRHBKmoHwQMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2026 16:07:13 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FDD67292C
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2026 16:07:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=EZqoCPvT;
	dkim=fail ("body hash did not verify") header.d=nd.edu header.s=google header.b=Xg3a14P8;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1708386694
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2026 10:07:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781186831; bh=krLi9IFLsm9oWx5/TWKfhXAS0ft3fw2Rn1IVThadka0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EZqoCPvTC9NlfXa1aj2uasn/qTL9EZG6b4etI01WiNm5zwMV7XWaXPgA+m2663NVr
	 +ksbR0RsVCajRQKGGXJZz1qCAhp33HGU2d7WpdeLkf0nvcD2zErZ31WE5kITRvZk2x
	 JZXL2/qX5S5PVWjpyjwLRwBoPV0PC9nDJ7Hzt1ZnHGb4LwpBFMDarj/Oi4ZecIDmol
	 LA2X0XDA68d6DIRXb0vsA5Af2J0ZVyves9vmkdhbsVIOppecTlDla7LChQci/dAZgB
	 ByUbBdV7QcRttjKUFV9dwB4P8EvBS4vS6KXadTWYLy+tgbnoIBuxpwSKW7j3wVJCwR
	 +cZtx+kiT0oCg==
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EFE93863C2
	for <usrp-users@lists.ettus.com>; Thu, 11 Jun 2026 10:06:37 -0400 (EDT)
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-6626cd98209so517295d50.3
        for <usrp-users@lists.ettus.com>; Thu, 11 Jun 2026 07:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781186797; cv=none;
        d=google.com; s=arc-20240605;
        b=YfT4tqj9leKyUsNKaZW+menVXunYyB5PYwXp15YBzuuMSYQLgynATbqQk3LrBWvwdS
         qRlELjBXckI5gmwbZdQp9LDDNAMgLDHHL31pCd8DOs+T6v1L292a9TZS2HiuUmqiqdRY
         higokXF/kjL8uA8RjIkvO2LvtDcOUvXgGR/VQHj0jQdJI58z3lCP/tib5cFNx5j99tM1
         tx7T6Bf3H7vPUjmA5NdqkD5lWK5MPirkid4NTuavwAJCY00+IPNFTUbhUCS+O2DC9b04
         ft+4WdyWwKRkurFy6eZoyC4XsFSF/JD/2jAUN+DghhyTMYQEzhsEUbRC0lygzrjedG56
         lmLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wum+deQb60ADALQG6O8Ze1b74YWwEBDJLiKVjjitdTw=;
        fh=/v+i14waOHokpfI1kn3hxt2Zv2Lm4d1YSiFjovWzxf4=;
        b=dQmE6HoNJ4kpf+QKQIp7o5ugZ09ywsGZlTp4lPCZIXYkggfmlYVP09knt7uLcGC6Gp
         Buv+hB1kMnXNzWA7BcMflsJDhHxauNP+oLj/TwdyLvEzwqC4GSmGG7aD3uX2jCAg3NJY
         Xc51aDMmQmGoKLo8oofPzliIBBR3mg7nwaozia+oUhmlf+AAkGZO6SUpOXh6lEKxUBy4
         pD64PouokqKIxe1Xktc2OfHgJLR8S8LOtuR8ygLqX07U9eKKta6xSvbPfwhjKOIbIqu0
         YPkPpkPApoRNv526hV+ybqX2P7sRa5mF7g26nah46ImkcXFa473sovofBV6ztlgj8MZZ
         q8ZA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1781186797; x=1781791597; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wum+deQb60ADALQG6O8Ze1b74YWwEBDJLiKVjjitdTw=;
        b=Xg3a14P8hi8ntQvpO9GecX5P2kORPiniBWeqrQpdurCqJVpAadrg1+lk+HACwUJawr
         IqFZGOj2MiT3ia9aKM/fb4QuIBI48FFmI58co7FjsPmA7nrCIOhIP057FtfE6ITK/AUe
         vCEm9e5Jn7PD0teFbJgQ7GG+zdhM1RFNvCcYWd3Lorxi7WaDqnBn2UxU/SxPADGMss9H
         3wur/GkKH1ggLCsbk03014/5Kj4O4oJDt2a4NbVBheDgHU2cf2oFoisLMh7Vbw0r3iWj
         9khPsJlAuIQw0jkhqn/TIINH2Sh57nQi///4U+f22wAB/dXj2wdH9ZUifJ9THZjrQCWe
         8VTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781186797; x=1781791597;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wum+deQb60ADALQG6O8Ze1b74YWwEBDJLiKVjjitdTw=;
        b=IsntulJ5xPxps5Pp9mGNd3SUi1DRLWjH32cZ8vdtvBWTgwzoVtL6jrimquRS5++Llp
         VQt3OmDDZCFvt7f/wDp4I21qxTQIIrVNwX59xT6sTWmKUEvzTUPGEuYSF05KcEM/XZoa
         4jGTf15qx4HoQOAO0nE0WlzHROUC6fPDrGY+PrXV+YT9WBEGBwRtA7wVs1DhUs4lcvNc
         gEdJCxclaCRaXYRVe9PbEDKMEnbAdaIV8NkjuCzhSHInA1iD3tLFwErApclwTXbx7JbM
         C441Pseih+itZOSiTIPhBH2eaLJz34do9hGUsLLsymduBENuvWGlo7CnBZGhfgaCs9Xi
         iD1g==
X-Gm-Message-State: AOJu0Ywk4e9UVvkMtV/+pxXcNNot2fnx0QhRfEuvcfShCdD/PZimQHer
	f8rK/KqyxlKInu4UgdoDvCd5KiOvxd2X1DXZ3UjcYvEaV11FyiIaBBIMRPblrvq60bDSHKCx72r
	efCw8dWTXIaghVi3UAZ6CvCIHvT1wzYNxlQnX4NbEnbdhIl2zsrm/2A==
X-Gm-Gg: Acq92OEvb4dHSrhtRPA8IqexTjUJD6OiRmEF7cxlRBzrK7VtLqtV2nnC62G3EOuOncZ
	loZjnfRjtnBQlWsPhsC/jCPk1/c0zXXeBLXEIhy4pbk7MBg3DHTATVje2GcXngc3/T4fKLWsjlr
	2uJlRX1tyqTAIHacfHdQCuDrjm/VjnmNywHVXJJbLRoBAd6QilazL1ck7XpdyAXIvD9LbxWcdKu
	3XV0mM+DCqqywtBgtVGzWnm34BxxpxIDeI5NlywyVSweLkJTtsTXlFmTbVE71QCbZg9mNaA+m1j
	/10v0ULScdsQCp6eg5d9PWhMZ1fiug4/zOVbpl1NYOij7K+kbQ==
X-Received: by 2002:a05:690e:4105:b0:660:8e61:1a3a with SMTP id
 956f58d0204a3-66269657c7amr2310577d50.19.1781186796523; Thu, 11 Jun 2026
 07:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQU4PVeJpqWm3GB4BVHtbG48WvrnPJ0=s=_o5TtHMW4bg@mail.gmail.com>
 <CAFche=h-+WLUxeiq1bF49Oz8zspO4K5UFVQTGYahBF-dgYKPdQ@mail.gmail.com>
In-Reply-To: <CAFche=h-+WLUxeiq1bF49Oz8zspO4K5UFVQTGYahBF-dgYKPdQ@mail.gmail.com>
Date: Thu, 11 Jun 2026 10:06:26 -0400
X-Gm-Features: AVVi8CdP43m7fwREw6LWaYlOsD0EcEbYWDTWhNX3rZAEJH_OvWgV3Lgx3t37Ae8
Message-ID: <CAB__hTRzaOdc+HoCrHa3szxmCPyomB9qNmOBxFzevMvQJm-PSw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: O6LN5EABI7PQRO7AIUNO2ENZAJ7466BK
X-Message-ID-Hash: O6LN5EABI7PQRO7AIUNO2ENZAJ7466BK
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: build N320 fpga image with axi_ram_fifo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6LN5EABI7PQRO7AIUNO2ENZAJ7466BK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6114749220937740791=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wade.fife@ettus.com,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nd.edu:replyto,ettus.com:url,ettus.com:email,lists.ettus.com:from_smtp,lists.ettus.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0FDD67292C

--===============6114749220937740791==
Content-Type: multipart/alternative; boundary="000000000000497e3b0653fade47"

--000000000000497e3b0653fade47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Wade,
Thanks for the link to the RFNoC FAQ - I had not seen that.  One question:
In my original email, I had pasted some code from the stock N320 BIST yaml
which included 4 DMA FIFO ports (but then specifically indicated that the
latter 2 were not used).  But the FAQ indicates that you could simply
choose a lower number of ports than the max.  So, is there any reason why
the stock N320 BIST yaml specifies 4 ports (with 2 un-connected) rather
than just 2 ports?

In the period in between our emails, I was unable to get my "repeater
application" working using the DMA FIFO so I simply removed it.  By
removing it, my application included the following blocks statically linked=
:
    Radio0-rx =3D> DDC0 =3D> my-time-stamp-adjust =3D> DUC1 =3D> Radio1-Tx

This is a single-channel repeater chain where the block
"my-time-stamp-adjust" simply adds a user-controllable integer to the
receive time stamp so that the samples will not be late when they arrive at
the transmit radio.  There was apparently enough "fifo buffering" in the
NOC shells or otherwise that would allow me to set my time-stamp adjustment
anywhere from 8100 to 18100 samples (with no DDC decimation / DUC
interpolation) and avoid all Lates/Overruns.

I am still curious why I couldn't get it working with the DMA FIFO.  The
FAQ indicates throughput of 341 MS/s for single channel operation. This
should be sufficient for my case of 250 MS/s. I know that you mentioned
latency/delay. In my application it seems that latency/delay "variation" is
all that matters.  In other words, I can compensate for any fixed
latency/delay as long as I set my time-stamp-adjust value large enough that
the samples won't be late.  But, if this latency/delay is varying then
perhaps this could be an issue.  Let me know if you have any thoughts on
using the DMA FIFO in this application.
Thanks.
Rob

On Wed, Jun 10, 2026 at 4:26=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi Rob,
>
> Sorry for the late reply. On the N320 you have 2 GiB of space that you ca=
n
> divide as you like. Each channel gets a memory region defined by those
> parameters. The FIFO_ADDR_BASE is the start address of each buffer and
> FIFO_ADDR_MASK is effectively the size minus 1. The FIFO_ADDR_MASK must b=
e
> a power of 2 minus 1 (i.e., all ones). Set FIFO_ADDR_BASE to 0 for every
> bit where the mask is 1. Take care not to create overlapping regions for
> channels you intend to use. Otherwise, the data for one channel could
> overwrite the data in another channel.
>
> If you want one maximum sized FIFO buffer, you can set the mask to
> 31'7FFFFFFF to get a 2 GiB region. If you set each channel the same, then
> you've assigned the same memory space to all four channels. This is fine =
if
> you only intend to use one channel.
>
>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h7FFFFFFF, 31'h7FFFFFFF, 31'h7FFFFFFF, 31'
> h7FFFFFFF}"
>
> If you want two maximum sized buffers, I think your example is correct
> assuming you only intend to use the first and second channels.
>
>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
> 31'h3FFFFFFF}"
>
> If you want four maximum sized buffers, it would be:
>
>       FIFO_ADDR_BASE: "{31'h60000000, 31'h40000000, 31'h20000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h1FFFFFFF, 31'h1FFFFFFF, 31'h1FFFFFFF, 31'
> h1FFFFFFF}"
>
> The throughput is highly application-dependent. It will vary based on the
> number of channels and how much those channels contend for memory at the
> same time. But we have some benchmark numbers here that will give you a
> rough idea:
>
>
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_DRAM_data_rate=
s_can_I_expect_on_each_USRP.3F
>
> If you're looking for bytes per second, multiply the numbers in that tabl=
e
> by 4.
>
> One common gotcha is DRAM latency/delay. You may need to tweak the
> IN_FIFO_SIZE and/or OUT_FIFO_SIZE when connecting DRAM directly to a radi=
o
> block. It's possible to see under/overruns in the radio even if the DRAM =
is
> "fast enough" due to DRAM latency, particularly when it cycles between
> multiple channels. But in your case, connecting DRAM to the DDC/DUC, you'=
ll
> probably be OK as long as the timestamp delay you add is longer than the
> total latency through the DRAM.
>
> Wade
>
> On Thu, May 28, 2026 at 9:39=E2=80=AFAM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am building an N320 image that is basically a repeater with static
>> rfnoc links as follows:
>>   radio0 =3D> ddc0 =3D> my-timestamp-adjust =3D> axi_ram_fifo =3D> duc1 =
=3D> radio1
>>
>> I have a question about how to use the parameters of the axi_ram_fifo
>> block in order to maximize the FIFO depth.  From the N320 BIST yml, I fo=
und
>> the following:
>>       # These parameters match the memory interface on the N3XX
>>       NUM_PORTS: 4
>>       MEM_DATA_W: 64
>>       MEM_ADDR_W: 31
>>       # Create four non-overlapping 32 MB buffers by default
>>       FIFO_ADDR_BASE: "{31'h06000000, 31'h04000000, 31'h02000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF, 31'h01FFFFFF,
>> 31'h01FFFFFF}"
>>       MEM_CLK_RATE: "303819444" # 166.666666 MHz * 21.875 / 4 / 3 =3D
>> 303.819444 MHz
>>
>> This indicates that there are 4 ports (later in the yml, ports 3 and 4
>> are explicitly not connected).  My question is: how do I configure
>> FIFO_ADDR_BASE and FIFO_ADDR_MASK in order to maximize the FIFO capacity=
?
>>
>> For the case of only needing one FIFO buffer, would this be correct?
>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
>> 31'h3FFFFFFF}"
>>
>> For the case of only needing two FIFO buffers, would this be correct?
>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
>> 31'h3FFFFFFF}"
>>
>> My other question is related to what is the maximum axi_ram_fifo
>> throughput?  Can I run with one port (in & out) at full streaming rate o=
f
>> 250 MS/s?  Does the RAM bandwidth support this rate?  How about if I hav=
e 2
>> ports (in & out) - what is the maximum rate?
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000497e3b0653fade47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks Wade,</div><div>Thanks for th=
e link to the RFNoC FAQ - I had not seen that.=C2=A0 One question: In my or=
iginal email, I had pasted some code from the stock N320 BIST yaml which in=
cluded 4 DMA FIFO ports (but then specifically indicated that the latter 2 =
were not used).=C2=A0 But the FAQ indicates that you could simply choose a =
lower number of ports than the max.=C2=A0 So, is there any reason why the s=
tock N320 BIST yaml specifies 4 ports (with 2 un-connected) rather than jus=
t 2 ports?</div><div><br></div><div>In the period in between our emails, I =
was unable to get my &quot;repeater application&quot; working using the DMA=
 FIFO so I simply removed it.=C2=A0 By removing it, my application included=
 the following blocks statically linked:</div><div>=C2=A0 =C2=A0 Radio0-rx =
=3D&gt; DDC0 =3D&gt; my-time-stamp-adjust =3D&gt; DUC1 =3D&gt; Radio1-Tx</d=
iv><div><br></div><div>This is a single-channel repeater chain where the bl=
ock &quot;my-time-stamp-adjust&quot; simply adds a user-controllable intege=
r to the receive time stamp=C2=A0so that the samples will not be late when =
they arrive at the transmit radio.=C2=A0 There was apparently enough &quot;=
fifo buffering&quot; in the NOC shells or otherwise that would allow me to =
set my time-stamp adjustment anywhere=C2=A0from 8100 to 18100 samples (with=
 no DDC decimation / DUC interpolation) and avoid all Lates/Overruns.</div>=
<div><br></div><div>I am still curious why I couldn&#39;t get it working wi=
th the DMA FIFO.=C2=A0 The FAQ indicates throughput of 341 MS/s for single =
channel operation. This should be sufficient for my case of 250 MS/s. I kno=
w that you mentioned latency/delay. In my application it seems that latency=
/delay &quot;variation&quot; is all that matters.=C2=A0 In other words, I c=
an compensate for any fixed latency/delay as long as I set my time-stamp-ad=
just value large enough that the samples won&#39;t be late.=C2=A0 But, if t=
his latency/delay is varying then perhaps this could be an issue.=C2=A0 Let=
 me know if you have any thoughts on using the DMA FIFO in this application=
.</div><div>Thanks.</div><div>Rob</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 10, 2026 at 4:26=E2=80=AFPM Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.f=
ife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Sorry f=
or the late reply. On the N320 you have 2 GiB of space that you can divide =
as you like. Each channel gets a memory region defined by those parameters.=
 The FIFO_ADDR_BASE is the start address of each buffer and FIFO_ADDR_MASK =
is effectively the size minus 1. The FIFO_ADDR_MASK must be a power of 2 mi=
nus 1 (i.e., all ones). Set FIFO_ADDR_BASE to 0 for every bit where the mas=
k is 1. Take care not to create overlapping regions for channels you intend=
 to use. Otherwise, the data for one channel could overwrite the data in an=
other channel.</div><div><br></div><div>If you want one maximum sized FIFO =
buffer, you can set the mask to 31&#39;7FFFFFFF to get a 2 GiB region. If y=
ou set each channel the same, then you&#39;ve assigned the same memory spac=
e to all four channels. This is fine if you only intend to use one channel.=
</div><div><br><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 F=
IFO_ADDR_BASE: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000,=
 31&#39;h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&=
#39;h7FFFFFFF, 31&#39;</span><span style=3D"font-family:monospace">h7FFFFFF=
F</span><span style=3D"font-family:monospace">, 31&#39;</span><span style=
=3D"font-family:monospace">h7FFFFFFF</span><span style=3D"font-family:monos=
pace">, 31&#39;</span><span style=3D"font-family:monospace">h7FFFFFFF</span=
><span style=3D"font-family:monospace">}&quot;</span>

<br><br></div><div>If you want two maximum sized buffers, I think your exam=
ple is correct assuming you only intend to use the first and second channel=
s.</div><div><br></div><div>
<span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: =
&quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h40000000, 31&#39;h000000=
00}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, =
31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;</span>

</div><div><br></div><div>If you want four maximum sized buffers, it would =
be:</div><div><br></div><div>
<span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: =
&quot;{31&#39;h60000000, 31&#39;h40000000, 31&#39;h20000000, 31&#39;h000000=
00}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h1FFFFFFF, =
31&#39;</span><span style=3D"font-family:monospace">h1FFFFFFF</span><span s=
tyle=3D"font-family:monospace">, 31&#39;</span><span style=3D"font-family:m=
onospace">h1FFFFFFF</span><span style=3D"font-family:monospace">, 31&#39;</=
span><span style=3D"font-family:monospace">h1FFFFFFF</span><span style=3D"f=
ont-family:monospace">}&quot;</span>

</div><div><br></div><div>The throughput is highly application-dependent. I=
t will vary based on the number of channels and how much those channels con=
tend for memory at the same time. But we have some benchmark numbers here t=
hat will give you a rough idea:<br><br>=C2=A0 =C2=A0 <a href=3D"https://kb.=
ettus.com/RFNoC_Frequently_Asked_Questions#What_DRAM_data_rates_can_I_expec=
t_on_each_USRP.3F" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_=
Asked_Questions#What_DRAM_data_rates_can_I_expect_on_each_USRP.3F</a></div>=
<div><br></div><div>If you&#39;re looking for bytes per second, multiply th=
e numbers in that table by 4.</div><div><br></div><div>One common gotcha is=
 DRAM latency/delay. You may need to tweak the IN_FIFO_SIZE and/or OUT_FIFO=
_SIZE when connecting DRAM directly to a radio block. It&#39;s possible to =
see under/overruns in the radio even if the DRAM is &quot;fast enough&quot;=
 due to DRAM latency, particularly when it cycles between multiple channels=
. But in your case, connecting DRAM to the DDC/DUC, you&#39;ll probably be =
OK as long as the timestamp delay you add is longer than the total latency =
through the DRAM.</div><div><br></div><div>Wade</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 28, 2026=
 at 9:39=E2=80=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi,</div><div>I am building an N320 image that is basically a=
 repeater with static rfnoc links as follows:</div><div><span style=3D"font=
-family:monospace">=C2=A0 radio0 =3D&gt; ddc0 =3D&gt; my-timestamp-adjust =
=3D&gt; axi_ram_fifo =3D&gt; duc1 =3D&gt; radio1</span></div><div><br></div=
><div>I have a question about how to use the parameters of the axi_ram_fifo=
 block in order to maximize the FIFO depth.=C2=A0 From the N320 BIST yml, I=
 found the following:</div><div><span style=3D"font-family:monospace">=C2=
=A0 =C2=A0 =C2=A0 # These parameters match the memory interface on the N3XX=
<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 6=
4<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 31<br>=C2=A0 =C2=A0 =C2=A0 # Create f=
our non-overlapping 32 MB buffers by default<br><span style=3D"background-c=
olor:rgb(255,255,0)">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h06=
000000, 31&#39;h04000000, 31&#39;h02000000, 31&#39;h00000000}&quot;<br>=C2=
=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h01FFFFFF, 31&#39;h01FFFFFF=
, 31&#39;h01FFFFFF, 31&#39;h01FFFFFF}&quot;<br></span>=C2=A0 =C2=A0 =C2=A0 =
MEM_CLK_RATE: &quot;303819444&quot; # 166.666666 MHz * 21.875 / 4 / 3 =3D 3=
03.819444 MHz<br></span><br></div><div>This indicates that there are 4 port=
s (later in the yml, ports 3 and 4 are explicitly not connected).=C2=A0 My =
question is: how do I configure FIFO_ADDR_BASE and FIFO_ADDR_MASK in order =
to maximize the FIFO capacity?</div><div><br></div><div>For the case of onl=
y needing one FIFO buffer, would this be correct?</div><div><span style=3D"=
font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h=
00000000, 31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000}&quot;<br>=
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, 31&#39;h3FFFF=
FFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></span><br></div><div><di=
v>For the case of only needing two FIFO buffers, would this be correct?</di=
v><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR=
_BASE: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h40000000, 31&#39;=
h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FF=
FFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></spa=
n><br></div><div>My other question is related to what is the maximum axi_ra=
m_fifo throughput?=C2=A0 Can I run with one port (in &amp; out) at full str=
eaming rate of 250 MS/s?=C2=A0 Does the RAM bandwidth support this rate?=C2=
=A0 How about if I have 2 ports (in &amp; out) - what is the maximum rate?<=
/div><div><br></div><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</div>

--000000000000497e3b0653fade47--

--===============6114749220937740791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6114749220937740791==--
