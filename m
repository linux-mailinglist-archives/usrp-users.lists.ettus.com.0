Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GBpLls1xWn/8AQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 26 Mar 2026 14:32:11 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5686335FE7
	for <lists+usrp-users@lfdr.de>; Thu, 26 Mar 2026 14:32:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B2E4386669
	for <lists+usrp-users@lfdr.de>; Thu, 26 Mar 2026 09:32:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774531929; bh=G1yU97qoLLAbbwmUPbA/zZfY/nCtTKm1B2hCrp+ssN8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qC0tDt8vyY/EvDoyosFRYGYhYDB6oS9PeU4F1FdA3Fh8l1cPWD2BISeQ3X5xSvIBm
	 6iApYVfaxAj/jbdIqot4rfxXTCVO9jv7Q3JhuYU76p+ZiGfv19IApOSeFc6rafkNo+
	 7WBTlbrYigYaUHhEs+YFtPfYG5L+Ib5OJ+JsxlUY0T8YYGis5wjhayf+1aKDRlFKwL
	 XJg3o+OBMRK0nlcAmxl9f2eTdMpeZ3gkfGWr5+DfvF8M6nAn+3WtG2p6XZmTHQ8o/l
	 v9QlzsJSPO1cpESV8JwD0TXR9iOqctubQhf0nLYttCOfuzjpKo1oLdXcTXtzlAwfH8
	 YMoNN3DQqudjw==
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BA3A38554F
	for <usrp-users@lists.ettus.com>; Thu, 26 Mar 2026 09:31:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="DaGjD65K";
	dkim-atps=neutral
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-64ee82e853cso825736d50.3
        for <usrp-users@lists.ettus.com>; Thu, 26 Mar 2026 06:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774531872; cv=none;
        d=google.com; s=arc-20240605;
        b=i8Dk60KSY12r6HY2OizkoZ7FgX0+AJ8q1ofDhBmR9ExMQ8PNr/wr+FrgY96HT/zOc1
         ufbi3vfcUt48xEKGHnLwBup8tlWEYjI1+EqDfI/u4l7lfpebDUk3kgF1PXaVZS+vxfOb
         FtLkfhK+zjL/GHXgD0SUlprN+8sh+Uml3BhPVqsogwI6rXG9mZGm/I0pIfADTySrv8EF
         oDLTluSvTbEpHtVTCBQDYH6k9flGdZqwV9ylMiC4vOInojQ5TwLKxv4Sdtjbw/66AFdy
         qkqH+eBDNCXi8+Q9KjTPcNAqddpBmU4Nqwuie5LDPccPs/Wi7NOyg1HsqHQW8sCu1qRM
         nu4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=5TLYYcDUv7ZcHMFtjeUPjQ6SL48BhxRTi0Aw6nccRv8=;
        fh=1adcuLN4VePyAip7Shvc4XVYUZRXr323UxdtkoipyMM=;
        b=iYFvRxw19Au1TxAEO+4kqK7HzzGFhzUUP0gnSA6szQ2wJZkKxFJQlRbCoWhVyIkEtd
         6yTOksuyMXGPoHEP3Un1og5axWmkSyZRQGvmqqvC7BtFdA16Ek/35VPqR6e0/vS0x+8c
         NsMS2wpI4c4fyxuqOzYZOZpG9OtBdLGJ1S3CWKbtoOqdrZRDL+R4F/HlKw3jGdYX9Z49
         b1jGn4QjVusqxx6un3dXkHXYXhMmf0fS8zI1t7T8cId0ACtmgggwRdPrE2CceAcjhy24
         TG4Vaw5Jhyy+daxr8g7wfxdIeY/T8XU2kwfSLbUY4AWK8P6P+2AC0SuND0qVk+H8EQmw
         Mmuw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1774531872; x=1775136672; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5TLYYcDUv7ZcHMFtjeUPjQ6SL48BhxRTi0Aw6nccRv8=;
        b=DaGjD65KVNGeksILgqrcxRcs08HJaIKMBSPcUURlRuI+X0Grl10A6xEqLVPhvLgOFz
         0GcRxcgYyT6gXPJx9I6UX9msOVHQ9At+83iqdg5Lh9PsOdbt7DudQs5R9R4icYfNq+gM
         VrcVSMpvL/qXWJj0bA4/YSP7s2/CI2q8O7fvNUaQwLPpaOKiAx5OXkn2xX672vo4Z/fY
         TbozilnSAxwhW/ey5x5IJER2j5g2m/m4BYS8z3qWWI7fJZmTPKQQf4sV68+rt48Qj3HC
         6MsgchJaooRM0+MRfLWYxbJS0URRK7hDdtzfOMgxOx8R+L6B3EdopuInfMNYskiT2GsS
         1NDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774531872; x=1775136672;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5TLYYcDUv7ZcHMFtjeUPjQ6SL48BhxRTi0Aw6nccRv8=;
        b=tEov92hYUvOQ5C9SnjyIadExqfcRNzsWH5y//mDZX4woE9ZHMyysMuZw62ZgnpyP5H
         RHOHbUYRQ23skGcPfiYWmOoMvNgjkzZcF4OlhhNOcesrewrNucklBdq2Hb2Zrph+cvc2
         WXeZAybTPYZbFZ14nQyTq9WO3gcT3obzZlhzAlEeS89eicoYThwVgvzFdgrQSI3Tpo3p
         hGT0gtm+43v/7XMlo75bGR7LLh5SGKKUhEWlPRnWi4IfMVmrdswrjBgAXTqkx6024YyZ
         c2owHPVBUoQXyXKis+n//8PrDyqA/AL52xhQgR9UHONwqZkz3VZRJUZSBCIuIaPu3RIT
         x4Zg==
X-Gm-Message-State: AOJu0YwBUfpxFAMc7N3NwGd2Ecdt51UYZjgotgyNGHypOLc395F+YImP
	ovDq6Z6c/Xb+gR0hsLhu6sFr77bQq/Hoay8Q63ELQdRghfAbctm6/40aWpcu/DEysOp+Pg1ETCa
	9wIGnchuY0L1Uq+UsiQ39rNHRhnyUO/d1h9Jui4hkK46Mj7/9t6So7RE=
X-Gm-Gg: ATEYQzyguxpN3oNvv8Gwy8F4czqiTjXXHVMFjdrh7CKDLGOZ7EVSe2aofnBaVGuVZMS
	1knYHh1ikQJRX2/LgcItzFS5YPQjznFGHNB5OpNz5rp5mhbrNKZ1zQnSc/igiM3GpV5yqgdaZnN
	oAnCFLyy+HZlzeT3k125YaEar9xdl+m1blH6nhhxSdbi2scVLD56Jh3WrX8886wwLYw8yJ/buxp
	0ItL07g7pj9D7NN2pTo9bjm02to5p0FDzszTZuIGw2K4BWntWG963BgMkHB9LvA7U86AOmzRBoO
	I1EM0emP3iJveqWe
X-Received: by 2002:a05:690e:1909:b0:64f:66f5:a19f with SMTP id
 956f58d0204a3-64f66f5a36cmr2839607d50.22.1774531870740; Thu, 26 Mar 2026
 06:31:10 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB16176765322CF5BB7B44FA71D949A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
 <CAEXYVK5uEmwy2X9wx0eKUfWw+J8N5fPv6fjB_NE+uqCgkgHNTQ@mail.gmail.com>
In-Reply-To: <CAEXYVK5uEmwy2X9wx0eKUfWw+J8N5fPv6fjB_NE+uqCgkgHNTQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 26 Mar 2026 14:30:59 +0100
X-Gm-Features: AQROBzAkGHfFRnTYB9FDHDVUlYjPb-NiI9uZFepvMQlFtzn57nMjoBZeOgYYWdA
Message-ID: <CAFOi1A4H0OTnc=kY5cwCUN3J9dkvaMGFb1r7FGCvMQwV7hQELg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: RX43ZLFZPJOAR7DEI33PYIKGN5B6AECF
X-Message-ID-Hash: RX43ZLFZPJOAR7DEI33PYIKGN5B6AECF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Precise Transmit Control
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RX43ZLFZPJOAR7DEI33PYIKGN5B6AECF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1697220046448635359=="
X-Spamd-Result: default: False [2.49 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,udayton.edu:email,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: C5686335FE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1697220046448635359==
Content-Type: multipart/alternative; boundary="000000000000cc616e064ded6569"

--000000000000cc616e064ded6569
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some additional comments:

- You can probably ignore EOV
- If you do use EOV, note that it is treated differently than EOB in some
places. For example, the recv() call (in software) will terminate
immediately when it sees an EOB, but you can have multiple EOVs in a single
burst (so from that recv() call, you can never have more than one EOB, but
any number of EOVs).
- If you come from a strict FPGA background, it's important to get behind
the "network on chip" part of RFNoC. Your clocks don't really matter here.
What matters is, when the radio gets a CHDR packet, it will read the
timestamp and compare it against the corresponding timer. When a CHDR
packet leaves one block, you shouldn't care (at design time) if the next
block is right next to it, or 100 km away over an Ethernet line. I'm
exaggerating, but I hope this helps understand this concept.

--M

On Wed, Mar 25, 2026 at 9:56=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

>
>
> On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T <
> Michael.Barnard@udri.udayton.edu> wrote:
>
>> I am a FPGA developer working in Verilog with an X310 writing code in a
>> custom RFNoC block. I recently got independent streaming control working=
 to
>> output samples at my discretion to a streaming endpoint then through the
>> cross bar but I do have some questions on parts of the control behavior.
>> It=E2=80=99s not clear to me what the difference between End of Burst (E=
OB) and
>> End of Vector (EOV) is or when I need to use one or the other. My curren=
t
>> design only uses EOB on the last data packet while EOV is always set to =
0.
>> I=E2=80=99m getting underflow errors occasionally but I can=E2=80=99t co=
nfidently say which
>> packets they=E2=80=99re associated with. I also need to send a second pa=
cket with
>> EOB high to flush the first packet out of the buffer; my guess would be
>> that the first EOB would force a buffer flush. Is there any
>>
> EOV was added for when your data might be too large for a single CHDR
> packet. Think like a 16384 sample FFT frame - it can't fit inside a singl=
e
> CHDR packet, so EOV is used.
>
>
>> I=E2=80=99m also wondering if there is a way to precisely schedule sampl=
es or
>> packets for transmit out of the radio. I=E2=80=99ve observed that becaus=
e the data
>> is processed at ~215 MHz in the RFNoC block and fed into the DAC at 200 =
MHz
>> pauses have to be included between each packet to prevent overfilling th=
e
>> transmit buffer but this also means that a timing in the 215 MHz domain =
may
>> not be reflected in the 200 MHz domain. Is there a way to tell the trans=
mit
>> logic/front end to start transmitting at a particular time either in the
>> CHDR header or using the timestamp? Or am I at the mercy of the front en=
d
>> components without any fine control of transmit timing?
>>
> The CHDR with Timestamp is used there. When it's the first packet in a
> burst, that time is compared against the timestamp of the radio. If it's
> late, then the radio sets an error condition that is sent back to the hos=
t
> and the radio block will consume the packets as fast as possible until it
> sees the EOB. There are other modes of operation depending on how you set
> up your RFNoC graph as to what to do during these error conditions. Check
> the state machine here:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_radio/radio_tx_core.v#L299
>
> As for the processing clock versus radio clock, you should be adhering to
> the AXI streaming tready signal for back pressure. You can fill up that
> pipeline and things should be fine.
>
> Good luck.
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cc616e064ded6569
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some additional comments:</div><div><br></div><div>- =
You can probably ignore EOV</div><div>- If you do use EOV, note that it is =
treated differently than EOB in some places. For example, the recv() call (=
in software) will terminate immediately when it sees an EOB, but you can ha=
ve multiple EOVs in a single burst (so from that recv() call, you can never=
 have more than one EOB, but any number of EOVs).</div><div>- If you come f=
rom a strict FPGA background, it&#39;s important to get behind the &quot;ne=
twork on chip&quot; part of RFNoC. Your clocks don&#39;t really matter here=
. What matters is, when the radio gets a CHDR packet, it will read the time=
stamp and compare it against the corresponding timer. When a CHDR packet le=
aves one block, you shouldn&#39;t care (at design time) if the next block i=
s right next to it, or 100 km away over an Ethernet line. I&#39;m exaggerat=
ing, but I hope this helps understand=C2=A0this concept.</div><div><br></di=
v><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 25, 2026 at 9:56=E2=80=AF=
PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 25, 2026 at 4:41=E2=
=80=AFPM Barnard, Michael T &lt;<a href=3D"mailto:Michael.Barnard@udri.uday=
ton.edu" target=3D"_blank">Michael.Barnard@udri.udayton.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div id=3D"m_-6235865515734214039m_2368302391010315713bodyDisplay">
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
I am a FPGA developer working in Verilog with an X310 writing code in a cus=
tom RFNoC block.=C2=A0I recently got independent streaming control working =
to output samples at my discretion to a streaming endpoint then through the=
 cross bar but I do have some questions
 on parts of the control behavior.=C2=A0</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
It=E2=80=99s not clear to me what the difference between End of Burst (EOB)=
 and End of Vector (EOV) is or when I need to use one or the other. My curr=
ent design only uses EOB on the last data packet while EOV is always set to=
 0. I=E2=80=99m getting underflow errors occasionally
 but I can=E2=80=99t confidently say which packets they=E2=80=99re associat=
ed with. I also need to send a second packet with EOB high to flush the fir=
st packet out of the buffer; my guess would be that the first EOB would for=
ce a buffer flush. Is there any =C2=A0</div></div></div></div></blockquote>=
<div>EOV was added for when your data might be too large for a single CHDR =
packet. Think like a 16384 sample FFT frame - it can&#39;t fit inside a sin=
gle CHDR packet, so EOV is used.</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div><div dir=3D"ltr"><div id=3D"m_-623586551=
5734214039m_2368302391010315713bodyDisplay">
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
I=E2=80=99m also wondering if there is a way to precisely schedule samples =
or packets for transmit out of the radio. I=E2=80=99ve observed that becaus=
e the data is processed at ~215 MHz in the RFNoC block and fed into the DAC=
 at 200 MHz pauses have to be included between each
 packet to prevent overfilling the transmit buffer but this also means that=
 a timing in the 215 MHz domain may not be reflected in the 200 MHz domain.=
 Is there a way to tell the transmit logic/front end to start transmitting =
at a particular time either in the
 CHDR header or using the timestamp? Or am I at the mercy of the front end =
components without any fine control of transmit timing?=C2=A0</div></div></=
div></div></blockquote><div>The CHDR with Timestamp is used there. When it&=
#39;s the first packet in a burst, that time is compared against the timest=
amp of the radio. If it&#39;s late, then the radio sets an error condition =
that is sent back to the host and the radio block will consume the packets =
as fast as possible until it sees the EOB. There are other modes of operati=
on depending on how you set up your RFNoC graph as to what to do during the=
se error conditions. Check the state machine here:</div><div><br></div><div=
>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/fp=
ga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v#L299" target=3D=
"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rf=
noc/blocks/rfnoc_block_radio/radio_tx_core.v#L299</a></div><div><br></div><=
div>As for the processing clock versus radio clock, you should be adhering =
to the AXI streaming tready signal for back pressure. You can fill up that =
pipeline and things should be fine.</div><div><br></div><div>Good luck.</di=
v><div><br></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cc616e064ded6569--

--===============1697220046448635359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1697220046448635359==--
