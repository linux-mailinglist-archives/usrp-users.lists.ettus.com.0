Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHZ2C9NKp2n2gQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 21:55:47 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9355A1F7050
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 21:55:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55392385993
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 15:55:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772571345; bh=ucRiyh1TVJCVV+5bxx5TH708+L/+PgMU7LfuJxaDhI4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LRLPf5cAbCVWL/wfga7mTgon/cBcGlTbLwOItuIgnZ5cyhg+UMdvdbjlK2wtNQAll
	 Bcdn9DDAfwcJwsQ7wMXupRSTbGd8peD9abzpS/xcbjKKUc032R3SF9U+aSgfIVkwmY
	 lJ3BJt34CVEmkz8mACJ65vfByLBf8t9POyf7u7f7ipqCyXFzE34x0h9cXqyGGohedL
	 ZwT9ZoxYL097nwYcDg3Txp1ycDkuNDxwtneNH7mNG0e+qtS1MQtmYMe0F983kCpwG6
	 RiMMPrWSXv4irBrgvq1YV0YeRPcY4dOL/tBZIOrkjulHqT1wkAzPGdTtPsfVVFD4Vd
	 MdYhdTD6kuY9w==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F13843860EF
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 15:55:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hz5ljXO1";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b9372552059so829350566b.1
        for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2026 12:55:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772571305; cv=none;
        d=google.com; s=arc-20240605;
        b=fuzmY/kI1A/yInIjJHP1FI0oGvgEUoiK3/FprHeO+3qM+S6d1w8y4GS4J1SZpmKWCA
         CLu+poHJcQzToRf5OdulRxVaPiX2AGvcZx34aTR2tJglDp/ZxHN5ezDbc/BUvJCyQeRU
         BfFYk6nVww3URDfy468YHM/GNvBOte1Cfz+ls2fxwv8Zf3/Z06uWfbNC/jxtbVAHZjkV
         pVFj+k3TsaPaqBC/gYfv8nPFK+/QsOmHcGTfImbN61089yLxtWYnvxAmrLmerH8UT+mt
         Qm1a/5bo79LiGeMxioce3h3G1zeyIGrYzlILk9sbIE3kEsFTbgXN1JGzD/JYHHRLdv2q
         ZNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KVnrN/i3T63s26UoC8jcWTW93x+aNxk5evscB+fb3nc=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=cnIW/ON1+LQEmLnCFIBEET6ZX/QiKHnyVhe5yyy2ts6x6jEW4mWIrAJz7NWTomfkSS
         MoT/dGQfElCj9f1VjzXkW0WlooV9SpN1riCEDEEmsbbYRuM6f1mhJ2JSZ9b/2C4ap3m7
         jT9iAFSEw8PCj1YJl/NgcJv/uHCrIDUgSfpE3NoDOq/aeRjkzDCPEiFBvMxr7bw4IFJU
         C9l4Hp1B2y9mLuJMg5H/Gtzneu2tf1Zj3wZ81ZzInAHovoJO9BwnHryXlZHtqinjTxpD
         i57a7rkqqvsQzIQwsAjAvIs+/nLdoH9YHQY479nhAqiLC1ze7nJ5sjPYMbDpeNa0pDmC
         FF/w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772571305; x=1773176105; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KVnrN/i3T63s26UoC8jcWTW93x+aNxk5evscB+fb3nc=;
        b=hz5ljXO14pFwwb9sts0gE9V7xXA+4HeueFiU9sDrhpOXqwnNMqInPpkcFplNiYMUa1
         9S+z6pfM5T0n/8v6c0GZBisHqszsgB+Epondr3R/EWrdYE6mJ07PiMe6qW+maLctG6Oh
         li/JUK5PGmj9Iyj2sTQ6ZAl9ZABbAM4lcKssSRoih23swQcVYRdh4KoFNDhqVt+jwFTc
         YYR5E7a90X4k6oR+GZoDdM/7hRn81XBAmAWiNRPEisNfu/G2fEg2qT+WzpeXhBlzFbhg
         fD5aL8XI/4LqnW51Nx5wJLFsdc0jTWzLoJx0UkqAaLda8lFM6FROKFeew2wUzhIy2zry
         rh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772571305; x=1773176105;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVnrN/i3T63s26UoC8jcWTW93x+aNxk5evscB+fb3nc=;
        b=vL+1ho9eP2x6/wKdNETRSDV2I9/P9jjFVAqv+yo/vLoiujBbKMcj04N5NI2LXbwLgX
         x2JpMnDX0Uxz7btzQT7KUuYQp2PSzp1di+RyCtfxcZ+tw5nwwE7czn4p2uq3n8yZ/Ssn
         N8peYTPtLjcu1jTjJN6d3phVjBb43PtBp+68HdqOcMQGVza09OVnoO7Nj57rzGa3FDaQ
         pPWX+fnDDiPa1+cYj6MyrWJFGAQMNKbbzNMQIbBi9lfzkGRFcbkagtpEdA9EPfcaob+C
         34q+lysePxDbMRaTpo772QbYBK4tewqLGNJKoKogu5hjgDlKtmLehvboetv1I3ir1bJT
         KsDw==
X-Gm-Message-State: AOJu0YwmNw1cK0WbozAy/5iNmWvhAncjIVK1+3/EhNchjtvU8ZLg4ssZ
	P4+sPYuxnESF/KLfnKpFm71Z8xJQYePzL/iGCDoJ1cUA7copfVHQZzUWsWb3auOun88s8XM/WA0
	k2dIj95DUGTX/Ra9zn4s4siQpP+PsxORaVWT+
X-Gm-Gg: ATEYQzy8GHWm2jdxU8Zvi1MmvybxhMvU0cvJr9EGzD5YulHQ/1ALfw8dKCiRu9U9dnH
	1EcRKnJ0c5say62iETnmTxq5FbP+SdjWtgsj7+IaHLuRchSBppizShx4s8ZqEPequ0lotCrjqK5
	dcSlnyqaEoW4wDh2KKetUWjHtGtf1fsm30LK/ZOh4qs7PsRMo0Tg0RcmVAS3cQ0uomzbE8m5OFj
	w+vPxcu9yvnnB/XXbrCGaEvKJzRyQx+k2vnqFo02Jp+dRUoJbNWji/sq0FSOHkvDwS2kyCEdyfs
	zyL/Gw==
X-Received: by 2002:a17:906:6a14:b0:b88:6542:86a0 with SMTP id
 a640c23a62f3a-b9376594b7emr1167906966b.54.1772571304508; Tue, 03 Mar 2026
 12:55:04 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Tue, 3 Mar 2026 15:54:53 -0500
X-Gm-Features: AaiRm525ksUV9LtwEq8znWAWbHn8XwBY9M-Hbml4FpWlBu09RX_kt9WmUIaJulk
Message-ID: <CAOEzSFR+NxLvPHQN8Lt7gQtp4rD3y-YVV3eDqsqLbc5mcvP5MA@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: CMC77KY2FSB4HZL6VZISS3EWKAOF2YWQ
X-Message-ID-Hash: CMC77KY2FSB4HZL6VZISS3EWKAOF2YWQ
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 - Phase alignment between two USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CMC77KY2FSB4HZL6VZISS3EWKAOF2YWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3296394229871337465=="
X-Rspamd-Queue-Id: 9355A1F7050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ti.com:url,mm2.emwd.com:rdns,mm2.emwd.com:helo,emwd.com:dkim,aero.org:email]
X-Rspamd-Action: no action

--===============3296394229871337465==
Content-Type: multipart/alternative; boundary="000000000000f1c22e064c24eafe"

--000000000000f1c22e064c24eafe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The X440 has a clock board (
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_too_clocking) which
uses the LMK04832 PLL (
https://www.ti.com/lit/ds/symlink/lmk04832.pdf?ts=3D1772540151834) to
actually generate the RFSoC sample clock from the 10 MHz input. This PLL
output will have a phase ambiguity WRT the 10 MHz input signal because of
PLL physics, and this is why you see a random relative phase run to run. It
looks like this chip supports a synchronization input to align output clock
edges and the X440 technically has a sync input port on the front, but I
dont know if these inputs are actually connected to each other. It could be
worth looking into what the X440 Sync In does... last I checked, it didn't
actually do anything but that was at least a year ago

On Tue, Mar 3, 2026 at 2:37=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
org>
wrote:

> I have two X440 w/ X4_200 FPGA image.  I need to get consistent phase
> between channels on USRP1 and USRP2 across multiple runs.  I must be doin=
g
> something wrong because I observe consistent phase between channels on an=
y
> ONE USRP, but not across two.  The phase appears to be random between the
> two on each run.
>
> Here's my setup:
>
>    - Common 10 MHz and 1 PPS
>    -
>    Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D192.168.=
1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D192.168.=
1.20,time_source=3Dexternal,clock_source=3Dexternal
>    - I modified the 'stock' rx_samples_to_file as follows:
>    - Usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>       std::this_thread::sleep_for(std::chrono::milliseconds(1000));
>       - usrp->set_command_time(uhd::time_spec_t(COMMAND_START_S, 0));
>       // Set the rate, freq, gain, etc
>       std::this_thread::sleep_for(std::chrono::milliseconds(COMMAND_START=
_S
>       * 1000));
>       usrp->clear_command_time();
>       - Each streamer is created in a separate thread
>       -     stream_cmd.stream_now =3D false;
>           // Time was reset to zero before thread was created
>           stream_cmd.time_spec  =3D uhd::time_spec_t(STREAM_START_S, 0);
>           rx_stream->issue_stream_cmd(stream_cmd);
>
>
> What am I missing?  I assume commands apply to both USRPs since I create =
a
> multi_usrp.  Do I need to explicitly specify the motherboard for some of
> the commands?
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f1c22e064c24eafe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The X440 has a clock board (<a href=3D"https://files.ettus=
.com/manual/page_usrp_x4xx.html#x4xx_too_clocking">https://files.ettus.com/=
manual/page_usrp_x4xx.html#x4xx_too_clocking</a>) which uses the LMK04832 P=
LL (<a href=3D"https://www.ti.com/lit/ds/symlink/lmk04832.pdf?ts=3D17725401=
51834">https://www.ti.com/lit/ds/symlink/lmk04832.pdf?ts=3D1772540151834</a=
>) to actually generate the RFSoC sample clock from the 10 MHz input. This =
PLL output will have a phase ambiguity WRT the 10 MHz input signal because =
of PLL physics, and this is why you see a random relative phase run to run.=
 It looks like this chip supports a synchronization input to align output c=
lock edges and the X440 technically has a sync input port on the front, but=
 I dont know if these inputs are actually connected to each other. It could=
 be worth looking into what the X440 Sync In does... last I checked, it did=
n&#39;t actually do anything but that was at least a year ago</div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 3, 2026 at 2:37=E2=80=AFPM Eugene Grayver &lt;<a href=
=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"ms=
g2065451845372422816">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have two X440 w/ X4_200 FPGA image.=C2=A0 I need to get consistent phase =
between channels on USRP1 and USRP2 across multiple runs.=C2=A0 I must be d=
oing something wrong because I observe consistent phase between channels on=
 any ONE USRP, but not across two.=C2=A0 The phase
 appears to be random between the two on each run.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Here&#39;s my setup:</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Common 10 MHz and 1 PPS</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2=
,mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2=
,mgmt_addr1=3D192.168.1.20,time_source=3Dexternal,clock_source=3Dexternal</=
div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I modified the &#39;stock&#39; rx_samples_to_fil=
e as follows:</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">
<div style=3D"line-height:19px">Usrp-&gt;set_time_next_pps(uhd::time_spec_t=
(0.0));</div>
<div>
<div style=3D"line-height:19px">std::this_thread::sleep_for(std::chrono::mi=
lliseconds(1000));</div>
</div>
</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">
<div style=3D"line-height:19px">usrp-&gt;set_command_time(uhd::time_spec_t(=
COMMAND_START_S, 0));</div>
<div style=3D"line-height:19px">// Set the rate, freq, gain, etc</div>
<div>
<div style=3D"line-height:19px">std::this_thread::sleep_for(std::chrono::mi=
lliseconds(COMMAND_START_S * 1000));</div>
<div style=3D"line-height:19px">usrp-&gt;clear_command_time();</div>
</div>
</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Each streamer is created in a separate thread</d=
iv>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">
<div style=3D"line-height:19px">=C2=A0 =C2=A0 stream_cmd.stream_now =3D fal=
se;</div>
<div style=3D"line-height:19px">=C2=A0 =C2=A0 // Time was reset to zero bef=
ore thread was created</div>
<div style=3D"line-height:19px">=C2=A0 =C2=A0 stream_cmd.time_spec=C2=A0 =
=3D uhd::time_spec_t(STREAM_START_S, 0);</div>
<div style=3D"line-height:19px">=C2=A0 =C2=A0 rx_stream-&gt;issue_stream_cm=
d(stream_cmd);</div>
</div>
</li></ul>
</ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What am I missing?=C2=A0 I assume commands apply to both USRPs since I crea=
te a multi_usrp.=C2=A0 Do I need to explicitly specify the motherboard for =
some of the commands?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_2065451845372422816Signature">
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
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000f1c22e064c24eafe--

--===============3296394229871337465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3296394229871337465==--
