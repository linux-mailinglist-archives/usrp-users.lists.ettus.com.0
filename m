Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHRoI7JLxGn5xwQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 21:55:14 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0849B32C079
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 21:55:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD7D5386594
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 16:55:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774472112; bh=I7IbxEWb/qfpAweSBSuIYh9+kbBFlfQ8zbdzZOjR/80=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wjNi19P4goXQWR1Tzfqrgl0Scd34C0RMl15tRWHg5K6vol2LuwLVBQ70El67xEDzF
	 AiG8qQDc0639B6bawBfqWxF4aAk/KwpE0LngSO7V9G9Wk5NGH9W/MOao+GJfPIrhhU
	 u9M0H8m/EjznVSTsalt4At9QN230ZM6/iF351c3BCE5PjmIdvzkd8NH/ugJYQku8BL
	 lzTUgAzvG5AaFN1Y9bb6UwqFW6NwnOU103KZVjH12CDjrQ6hAJv4+f6W5BERkdinE9
	 lPOZqnEEhgBf+QsOL0sVzk9kkVG3eHGqM+qNXyZEYXfXyrhm5pWEc5/ZsKU9uwug9G
	 72mCl+dCKDrUg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D66F386583
	for <usrp-users@lists.ettus.com>; Wed, 25 Mar 2026 16:54:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UssvvxBt";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-669d7666d77so416307a12.3
        for <usrp-users@lists.ettus.com>; Wed, 25 Mar 2026 13:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774472097; cv=none;
        d=google.com; s=arc-20240605;
        b=ljcu2BJl7OJBYIBUj48zDhaUmGd7zYoGFVZeWRduP4ITqSbJCWauRsaADszmDpqLW2
         Qu1yqEr2ThRDHcvX4k0bnrqVaXDDLWwmAxfjnofpIujx9CUNdT+WmCFV7oTyZHar5+td
         ObIuS3EALtnhwhp4JlFqjjL2XlaK55Y1zB9lt6GlSXqpZ5XfPZITSBsQyNi+/9NF2rDZ
         1z0lxNE+7/zejLmxJg9zD1DqfDRS1VHIrVHkZ44BnO1/lCBzNXOGDk6vmJ01kGBlican
         RhmrCB/O5KD/w1YcRb3AFHHZGBMOicyFI6uLKJ58zbkW4i3Whydw6xWaaCLTXT0KqQZV
         c//w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j4CsCk4kAGh3Fmiq6E0MF5PTKhfJQ0RGJAgY0PVjYHo=;
        fh=xFzpIG3rT24F4s6Jd1MCPiJdqFe/Zc8C846nEHTqcnc=;
        b=JqN6y1eil/TDtvYXMhNHwvWq43ErPo/dhzJp165i9dXxYgc7y4W8IogV+KvFoxCVuR
         iUK5EtYvRZwyO68I5VxZkU7hsuf87GfqDJrZorSWAVM39ORSfJtkOlQEqJ8fGl7db3l7
         UFcq8+QzJeRzHW5ZVCCaXgplcsJx29wqjJGd3K2jlLGNkTGP6AGeWVcnr13cNGT5+yg/
         68LrhjYRve5o66v7T1SdtAiFxjee5DMeMQr1wLcU7jYItiUdz7NBnbXyI2OazkLGkQpd
         e3pl26ZtRcwYNy2BqAC/c+rKgEG2XYy429jZcvQHuLq4Vy0ZONpj3Yj2w5sK4nddBNac
         LL3w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774472097; x=1775076897; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j4CsCk4kAGh3Fmiq6E0MF5PTKhfJQ0RGJAgY0PVjYHo=;
        b=UssvvxBt9SEKQQAS0ZviUYVydhw21YEqDTbpRNNI+fMvd8ZAHt+8bGw1Co5vfHoxzf
         dv7E+h0xdGVeo64vS/7KlDWfQ3PiXaFhGH+xRCo7pMnYHwl+f2BdQWDqGG/dMtuV2ukj
         IK1tD/DynANlXMxbmk+KzJhhywYwAI6ko+JFhZh9JpZoe725fsNK/iY4znM1vHLb1O9F
         MVAkgRBxVIUztaaLziTjngxKQWh0iT4nfhkuArCLk49wjw/BAht2vNw2RMGdtww3Agql
         keBnSixwjo+9/C06VWexMh1r07KUU6e5Pga4gEUtFAN6GtiqVcpAjeqCztqXQzGmRvrL
         fqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774472097; x=1775076897;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4CsCk4kAGh3Fmiq6E0MF5PTKhfJQ0RGJAgY0PVjYHo=;
        b=k30j/DA9hl+f5pc0CxenqEFbhH6WkpUNmhU6L0+089b7oJu7hI0J7y5FOUwLq5uy4a
         vTtYTPhP3u+9j1RC3TJ8Kkpe5oeMT5VgjzNQWuVoawtxunF9sfYMwHrad4t3FpbgVGNU
         2F+DqRrWVfqxWNK/Vt2NUf9zs6cvu2DXB+cSs+U8FZ3467CqaqWLiTaQyReEBiHcAiYC
         S5N0Wgc86moKXbKrM7OnFIkmuiSOBlsL61SnrKoO/599nlBbw0PdmWw4ACuo9LiXrGWc
         HOR2CVGqivfYX7hkcGYPYwV7SpaHKqOMnp66uH57Ee1vubg8yPcUg2cn3IHSf2K2tS++
         C1tw==
X-Gm-Message-State: AOJu0YzaAuhafNtuIcv+9wEmlbLl/B4yukWbFzp6b6TYEvxen+uH9WC1
	NRHPCD+d99PfFH+C4FENIG9RFSBiTxiQw62voJYXPCu/29j6GKe6CeqSsMkD2HE1ELSqsevnAxK
	9VvemkvtAa3UY5Y+cWoFZ0T6PLHi0Ml4=
X-Gm-Gg: ATEYQzzfA4+ypRwPqPmH2AEXtYsg50zy5RM2FGTJORFyRmpLK1kvV89nVKatclxevSS
	2p4Nh7kExLQziXDQWoGjlk4jTH3Bk0N7nhUWb6pwuYYp7AOUDwPyxHA5wkk+sl2S8dxJt/F7dJF
	gWVrjAEUU/a0NVj72o7PgNhdkZa73sahgka9Gs2pyjvXlA59H9R/LLGZGDLRc2bnyjCztzG4flI
	A7pQxX+24RDf1v919frSD7JZE4sHTZxvAAuxIMV8h9fY40k5VtdXTwbtTC19xkjdgxUYvJgifYN
	J87X1+w=
X-Received: by 2002:a17:907:c714:b0:b9b:207c:f7df with SMTP id
 a640c23a62f3a-b9b207dbe12mr59897166b.29.1774472096784; Wed, 25 Mar 2026
 13:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB16176765322CF5BB7B44FA71D949A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB16176765322CF5BB7B44FA71D949A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 25 Mar 2026 16:54:45 -0400
X-Gm-Features: AQROBzBOQYAkNvifrAmRtRH2_wmEztwSjgjyhUFHD3enoz8R2xXpDbUHdNk7Xi8
Message-ID: <CAEXYVK5uEmwy2X9wx0eKUfWw+J8N5fPv6fjB_NE+uqCgkgHNTQ@mail.gmail.com>
To: "Barnard, Michael T" <Michael.Barnard@udri.udayton.edu>
Message-ID-Hash: VRF7DLZ2VZHN7LX3RRDGJH242HJAZKII
X-Message-ID-Hash: VRF7DLZ2VZHN7LX3RRDGJH242HJAZKII
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Precise Transmit Control
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VRF7DLZ2VZHN7LX3RRDGJH242HJAZKII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1678973040231393895=="
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bpadalino@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[udayton.edu:email,mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Queue-Id: 0849B32C079
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1678973040231393895==
Content-Type: multipart/alternative; boundary="000000000000fe2584064ddf7a06"

--000000000000fe2584064ddf7a06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T <
Michael.Barnard@udri.udayton.edu> wrote:

> I am a FPGA developer working in Verilog with an X310 writing code in a
> custom RFNoC block. I recently got independent streaming control working =
to
> output samples at my discretion to a streaming endpoint then through the
> cross bar but I do have some questions on parts of the control behavior.
> It=E2=80=99s not clear to me what the difference between End of Burst (EO=
B) and
> End of Vector (EOV) is or when I need to use one or the other. My current
> design only uses EOB on the last data packet while EOV is always set to 0=
.
> I=E2=80=99m getting underflow errors occasionally but I can=E2=80=99t con=
fidently say which
> packets they=E2=80=99re associated with. I also need to send a second pac=
ket with
> EOB high to flush the first packet out of the buffer; my guess would be
> that the first EOB would force a buffer flush. Is there any
>
EOV was added for when your data might be too large for a single CHDR
packet. Think like a 16384 sample FFT frame - it can't fit inside a single
CHDR packet, so EOV is used.


> I=E2=80=99m also wondering if there is a way to precisely schedule sample=
s or
> packets for transmit out of the radio. I=E2=80=99ve observed that because=
 the data
> is processed at ~215 MHz in the RFNoC block and fed into the DAC at 200 M=
Hz
> pauses have to be included between each packet to prevent overfilling the
> transmit buffer but this also means that a timing in the 215 MHz domain m=
ay
> not be reflected in the 200 MHz domain. Is there a way to tell the transm=
it
> logic/front end to start transmitting at a particular time either in the
> CHDR header or using the timestamp? Or am I at the mercy of the front end
> components without any fine control of transmit timing?
>
The CHDR with Timestamp is used there. When it's the first packet in a
burst, that time is compared against the timestamp of the radio. If it's
late, then the radio sets an error condition that is sent back to the host
and the radio block will consume the packets as fast as possible until it
sees the EOB. There are other modes of operation depending on how you set
up your RFNoC graph as to what to do during these error conditions. Check
the state machine here:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_radio/radio_tx_core.v#L299

As for the processing clock versus radio clock, you should be adhering to
the AXI streaming tready signal for back pressure. You can fill up that
pipeline and things should be fine.

Good luck.

Brian

--000000000000fe2584064ddf7a06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 25,=
 2026 at 4:41=E2=80=AFPM Barnard, Michael T &lt;<a href=3D"mailto:Michael.B=
arnard@udri.udayton.edu">Michael.Barnard@udri.udayton.edu</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-=
1457573594664100757">




<div dir=3D"ltr">
<div id=3D"m_2368302391010315713bodyDisplay">
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
04,204,204);padding-left:1ex"><div class=3D"msg-1457573594664100757"><div d=
ir=3D"ltr"><div id=3D"m_2368302391010315713bodyDisplay">
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
ga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v#L299">https://g=
ithub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_b=
lock_radio/radio_tx_core.v#L299</a></div><div><br></div><div>As for the pro=
cessing clock versus radio clock, you should be adhering to the AXI streami=
ng tready signal for back pressure. You can fill up that pipeline and thing=
s should be fine.</div><div><br></div><div>Good luck.</div><div><br></div><=
div>Brian</div></div></div>

--000000000000fe2584064ddf7a06--

--===============1678973040231393895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1678973040231393895==--
