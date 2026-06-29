Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oXdLCq7YQmppEgoAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 22:42:22 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9046F6DEAF2
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 22:42:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=S330T7G2;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=ohnwtfBP;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F923386666
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 16:42:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782765740; bh=2W8pt5mPaiJ4t0Pko7yN5/7AOqz5ir53nftDAL46LuA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=S330T7G2Cf38kRJDH4x4TGKrHs1rN967hvlqSIdI77D2SOskjsTcVb8++dLdkbGUL
	 jozUVimGnMt7yWT50nxl2D2C4iqzrNwzTBwfKJdwEUZItGaaeWhbggbchpd1BVc+BI
	 m00n16ZoUeciJ54q+kWlqYCuNIoOY18WXGK4ooUw+Y4s8IKSe9KOORNxq8wGCszLfN
	 31+zfCnRGaXwfojnSTIeF+UPY09mAROfvESNk+cSqLbEyMUncq9/Jqfxj9PU0Fsaeb
	 tYUS4A9M5UjZpOiLveRdBilsYwaxB8kLNEuI0c2d6RCKNJSlrFlrt1ZkjZidBWE8/G
	 lzDNuyzP2vT8A==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C32BE38652E
	for <usrp-users@lists.ettus.com>; Mon, 29 Jun 2026 16:42:02 -0400 (EDT)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-691c5776f35so5769934a12.3
        for <usrp-users@lists.ettus.com>; Mon, 29 Jun 2026 13:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782765722; cv=none;
        d=google.com; s=arc-20260327;
        b=V0LM7XXIBMyc6yIvUirkXlx20iPVsXsACr3heOZoiEMsuu5/eyps0VfaOE57uIdAw7
         l2uc/tQ47e7TyIoYlcjuszPXkZT7arxvkrESNx0slOuiprIuTqMr/jgLyqRRtkZ/aHHl
         EAFWIMJqwFCayFbv2hj1O2lfUXLPM8kk770wFQmGQVx8FLj/BC3JsBbMacLE/5T+gwPs
         hXgBrAfh7j2XZl3d7ytrPQroK4xN4Ng1zfAYeD5kFcctzKMeY1MGQNBfsWXGeAcPkTiW
         RZc1MqRz4jYbkZUMqHa5weWAYmt/zn+a/nV1KDBjC4xLJMxVGh/8Q+4vdY1SjB79NdgH
         kPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CwJnig7Hqi5fSZc2IYQu3y+YtbCj4f1qYjh+DzEyhd8=;
        fh=5WjtEqfsEIwTZ6Z+avrgvMr8EhcosimPLJcaNasiR4c=;
        b=OpLtjlNX6yHythSzejnhIjWQsLB7gdyRF+pjpJaULDGrm9/2dJRQpcjpL+C6jTLhXO
         IHWfm2vUOHJR+7U3L4w+pRg38+cG8Gy1c7/rw0+HW+a6lfjJrA1Qs0xkkC0yMmv1riGJ
         75y5oucoIwxWXDBCrm3T5r/YWQbpgnyTVUATRIn7tNT9yT1hiuYMPoek+T2/C1UPxpG0
         TFQLLGB6qHB9ecx5dKVMsoBUZUNYrNY7evfDyAglaW9JvaivmdDNIW69AjiVrwrq3Sex
         Sq7eiZcAcL4a6UtBHdyLVUrmG2lpfigJ97iBfWl9ht1JzXUekEWgiPqJUryfPppmSAe/
         pu8g==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782765722; x=1783370522; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CwJnig7Hqi5fSZc2IYQu3y+YtbCj4f1qYjh+DzEyhd8=;
        b=ohnwtfBP9SMiWAddCaBz5n13KtAlGChEQ3+pm+6YT2mA9Lsbalt83sQE+ZpYp6HbXP
         jLh8EuvAaE3rgZYg5989jaPCf7CWuNZ/LzQNMOAYaLzgzEg1aD60vvNCZH2D0EgaBS/A
         g1BoE7YZMaqGgRL7+WcxNdua1dphoZ5gQHN8kWU72WalHIEAg1CbcbxtGmrDDnbyHVLs
         1WHVPOiGfzPZHwns2WeWapyVm21XlGYjErTD1jZ5mlDSH6vByZlCF60c9poLHrdSWE/G
         Pcg8HZghsksf2ZxoTwMyMVEoVKnHGzBmRht5kXFqlg+nP4JJS7pgHpUkv67lk5ptbzR3
         k46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782765722; x=1783370522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CwJnig7Hqi5fSZc2IYQu3y+YtbCj4f1qYjh+DzEyhd8=;
        b=E6gsnLn+QCttva8roJNYv1MOj90WxTWn3moz2BhOfIuhLHVPxhJ8b/wyr70psiG7Uj
         76BHzRcNYUBjo2lcT4OUpdOY9bUSs5CRX68Pluk0unXAvW8nLvcWyh5PvzSAUq7j/ppM
         ZhvO5rHFDYG8vXchT8KQv2c1hk9lySasbpBd1OprsWk63c2IuV/Bo0kLS1relZ/BXCYS
         dpKMZeO+Xm1x/HLjCmbfV6FBukTKvBm2siEJscupjOsSDVpkvjM3kcDoGQpQzSt9NODX
         FZ4bpCEtlqOT3/FYzx2QFNTSc2ArK2gJ2E32D3+Znjhx1wdkXZO9vhp/37IB2gRAqgu9
         DiGQ==
X-Forwarded-Encrypted: i=1; AFNElJ/7mqz2U7UY0a8Cchj+y9vlpcwJj0rSD/FODxvNr2Z/bQr/FA0oJ8C1LEpxqPCks/YzlnXAExfkhtO6@lists.ettus.com
X-Gm-Message-State: AOJu0Yyiob//rljJNxZr+Smk31uYsAnyKx5FOyFTWXcGVYXTLc2WiaMO
	AqDbkxc9hrnIAoW/cMyVqcvfqS9/wKaerbkGmWOy0gLegHu/39ujABjRq24YIwQydCGJEQ7ncXh
	n68GVTZ4i+iOx22q9Ue/XLJ+gyI4AN/U=
X-Gm-Gg: AfdE7ck/efG5t016RbqO1H8oAxhFqvKDj5etrmpxZ+r6Q2pTbm58N7XIFEdnn7OTt+C
	HqZm76CDWxDrrK3i7aG0Cl9QlK5YDQITAYG1NE3OIOeZJgz+yBtCyEfNj+CpsNdJziU/zlri7M2
	3P1BxfVA1n4fMjKVYOa7pAQEkWAyPBFRNZUpgxZShux3HCj7gPIP+ZifOj2Z5heobNogPU634Qs
	cSlGULvLUTLgYj4HrPWB5V79bg0rgfR+mxqGr7muoVzKFxxHtp2E3onJvEaqhtLDH44Cso=
X-Received: by 2002:a05:6402:4304:b0:697:ef08:e18b with SMTP id
 4fb4d7f45d1cf-69879dcd8e2mr300977a12.1.1782765721484; Mon, 29 Jun 2026
 13:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91269679895FCEA5C6F8A3DCECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <9F969F1B-75D0-4621-8FE8-4384D26A6594@tum.de> <SJ0PR09MB91266AD4901565D18F6E7FCFECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91266AD4901565D18F6E7FCFECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Mon, 29 Jun 2026 16:41:49 -0400
X-Gm-Features: AVVi8CdqRxl9rAjT5ESWubKkUwBSIWxE_LeV-pmACl4o4r1CXsv6-D6X0XrEROc
Message-ID: <CAOEzSFTUiDru7Pfigu=nzEJtkHGsz84ZEZCJ7q5kmxR31dMCMg@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: RX4H77YSDZLRGDBG44ELM5MBIDR3TRW5
X-Message-ID-Hash: RX4H77YSDZLRGDBG44ELM5MBIDR3TRW5
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Peter Jiacheng Gu <peter.gu@tum.de>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows on X440 TX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RX4H77YSDZLRGDBG44ELM5MBIDR3TRW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4673845747054264259=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:eugene.grayver@aero.org,m:peter.gu@tum.de,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,tum.de:email,emwd.com:dkim,lists.ettus.com:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9046F6DEAF2

--===============4673845747054264259==
Content-Type: multipart/alternative; boundary="0000000000008c002706556a7d11"

--0000000000008c002706556a7d11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A few comments here:

I have almost the exact same setup. After extensively debugging dropped
samples on Tx, I concluded that there just wasn't very much on-fabric
buffering on the X4_200 image, meaning it's very sensitive to host latency
jitter which was causing the sample drops. Using DPDK, isolating some CPUs
(isolcpus), and putting all DPDK fast-path sender threads on the isolated
cores completely solved my problems.

I would check your network interfaces and make sure the packets are going
where they should be. You can "watch -n 0.5 ifconfig" or something like
that on your host machine while you run your tests and watch the Tx/Rx
packet counters tick up. Make sure when the test starts, the management
interface does some small amount of communication and when the test is
running the 100G ports do the high speed comms.

Also, it would be awesome to get a prebuilt image with RAM buffering and
DUC/DDC enabled. I assume some resource limitation prevented an image like
this from already shipping with UHD?

On Mon, Jun 29, 2026 at 4:18=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> I have not tried the X4_400 image because I need many channels at
> relatively low (50 MHz) bandwidth.  This issue must be solved =E2=80=94 I=
've been
> able to use older USRPs for TX at rates up to 200 Msps.  There is no reas=
on
> for the X440 to behave this way.
> ------------------------------
> *From:* Peter Jiacheng Gu <peter.gu@tum.de>
> *Sent:* Monday, June 29, 2026 12:23 PM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] Re: [USRP-users] Underflows on X440 TX
>
>
> *Do not open links or attachments unless you recognize the sender. If
> unsure, click the Report Phish button or forward the email to OPSEC. *
> Hi Eugene,
>
> I also encountered this issue. I=E2=80=99m currently investigating the X4=
_400
> image since it supports the replay block. Have you already tried this?
>
> Best,
> Peter
>
> Am 29.06.2026 um 21:02 schrieb Eugene Grayver <eugene.grayver@aero.org>:
>
> =EF=BB=BF
> Hello,
>
> I am returning to the problem reported a few months ago:
>
> I have two X440s with X_200 image connected to a Threadripper 24 core.  I
> am using two 10 GbE direct connect cables for each USRP (total of 4x 10
> GbE).
>
> I was able to get RX working, but TX is getting continuous underflows.
>
>
>    - Using the benchark_rate example.
>    - Underflows observed both w/ DPDK and w/out DPDK
>    - Underflows observed with 4, 8 channels and 16 channels
>    - Fewer underflows with 4 channels, but still get a few per minute
>       - Priority high/normal does not make a difference (usually)
>
>
> IMPORTANT: If I use only one interface (
> =E2=80=94args=3Daddr=3D192.168.10.2,mgmt_addr=3D192.168.1.10) there are n=
o underflows
> with up to 7 channels (max to fit in 10 GbE).
>
> ./benchmark_rate
> --args=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D19=
2.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D19=
2.168.1.20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,product=3Dx440
> --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc16
> --multi_streamer --duration 120
>
> This should be trivial for such a powerful machine!
>
> I am suspecting an issue with handling of packets across multiple network
> interfaces.  Are the TX flow control packets not getting to the right pla=
ce?
>
> This is a critical failure =E2=80=94 not something I expect for a $35k bo=
x =F0=9F=99=82
>
>
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

--0000000000008c002706556a7d11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A few comments here:</div><div><br></div><div>I have =
almost the exact same setup. After extensively debugging dropped samples on=
 Tx, I concluded that there just wasn&#39;t very much on-fabric buffering o=
n the X4_200 image, meaning it&#39;s very sensitive to host latency jitter =
which was causing the sample drops. Using DPDK, isolating some CPUs (isolcp=
us), and putting all DPDK fast-path sender threads on the isolated cores co=
mpletely solved my problems.</div><div><br></div><div>I would check your ne=
twork interfaces and make sure the packets are going where they should be. =
You can &quot;watch -n 0.5 ifconfig&quot; or something like that on your ho=
st machine while you run your tests and watch the Tx/Rx packet counters tic=
k up. Make sure when the test starts, the management interface does some sm=
all amount of communication and when the test is running the 100G ports do =
the high speed comms.</div><div><br></div><div>Also, it would be awesome to=
 get a prebuilt image with RAM buffering and DUC/DDC enabled. I assume some=
 resource limitation prevented an image like this from already shipping wit=
h UHD?</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 29, 2026 at 4:18=E2=80=AFPM E=
ugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver=
@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg9152407416944071415">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have not tried the X4_400 image because I need many channels at relativel=
y low (50 MHz) bandwidth.=C2=A0 This issue must be solved =E2=80=94 I&#39;v=
e been able to use older USRPs for TX at rates up to 200 Msps.=C2=A0 There =
is no reason for the X440 to behave this way.</div>
<div id=3D"m_9152407416944071415appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_9152407416944071415divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Peter Jiacheng Gu &lt;<a href=3D"mailto:peter.gu@tum.de" target=3D"_blank">=
peter.gu@tum.de</a>&gt;<br>
<b>Sent:</b> Monday, June 29, 2026 12:23 PM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Underflows on X440 TX</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto">
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);font-si=
ze:10pt;padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr"></div>
<div dir=3D"ltr">Hi Eugene,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I also encountered this issue. I=E2=80=99m currently inves=
tigating the X4_400 image since it supports the replay block. Have you alre=
ady tried this?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Best,</div>
<div dir=3D"ltr">Peter</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">Am 29.06.2026 um 21:02 schrieb Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt;:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am returning to the problem reported a few months ago:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have two X440s with X_200 image connected to a Threadripper 24 core.=C2=
=A0 I am using two 10 GbE direct connect cables for each USRP (total of 4x =
10 GbE).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I was able to get RX working, but TX is getting continuous underflows.</div=
>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-top:0px;marg=
in-bottom:0px">
<div role=3D"presentation">Using the benchark_rate example.=C2=A0=C2=A0</di=
v>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-top:0px=
;margin-bottom:0px">
<div role=3D"presentation">Underflows observed both w/ DPDK and w/out DPDK<=
/div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-top:0px=
;margin-bottom:0px">
<div role=3D"presentation">Underflows observed with 4, 8 channels and 16 ch=
annels</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-top:0px;marg=
in-bottom:0px">
<div role=3D"presentation">Fewer underflows with 4 channels, but still get =
a few per minute</div>
</li></ul>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-top:0px=
;margin-bottom:0px">
<div role=3D"presentation">Priority high/normal does not make a difference =
(usually)</div>
</li></ul>
<div style=3D"margin-top:0px;margin-bottom:0px;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
IMPORTANT: If I use only one interface ( =E2=80=94args=3Daddr=3D192.168.10.=
2,mgmt_addr=3D192.168.1.10) there are no underflows with up to 7 channels (=
max to fit in 10 GbE).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
./benchmark_rate --args=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,=
mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,=
mgmt_addr1=3D192.168.1.20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,=
product=3Dx440 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate
 40.96e6 --tx_cpu sc16 --multi_streamer --duration 120</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
This should be trivial for such a powerful machine!</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am suspecting an issue with handling of packets across multiple network i=
nterfaces.=C2=A0 Are the TX flow control packets not getting to the right p=
lace?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
This is a critical failure =E2=80=94 not something I expect for a $35k box =
=F0=9F=99=82</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
<br>
</div>
<div id=3D"m_9152407416944071415x_Signature">
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
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></span=
><br>
</div>
</blockquote>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000008c002706556a7d11--

--===============4673845747054264259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4673845747054264259==--
