Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLyMKJQ9qGl6rQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 15:11:32 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C002010D4
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 15:11:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5738D386552
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2026 09:11:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772633490; bh=4OGnKd68ILAMVbS1EXD20A/vZyBDrrq7HttHfS9RGKo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I4YJ7BagvH7ulv/w7lDMhOWWj0wR+TXeDwIsJUl2L+SVcoGWpvyKyATUoys4K5EZ1
	 Ec/lYulnTvk1bPKiiK9umijAE0dGbe1jDxyA6oKE2vl3lV8keMVOrQGSDewjEMvsYn
	 XqJdUXDuExKxkjLlV1lSXwtA9etM4Aj8hNCglVRn+0wlsjC+o9mV6rcgCQ1vYV7y5b
	 I0jQtI8oej5iU4AX8ru8MDqG3bP42NZfs0aBK4KAoE4OjxKzp3aMzKytCsfqyehy/f
	 VQZiGe9WBsOjWVJnXiPw83hHA/5s+j6cuPUnq7Q5/ugwMG6wzMaoakL/sLxVYFeoFL
	 +vPy0o4LkJZtg==
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 5251A385B35
	for <usrp-users@lists.ettus.com>; Wed,  4 Mar 2026 09:10:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="tPf88rSX";
	dkim-atps=neutral
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-649278a69c5so5879423d50.3
        for <usrp-users@lists.ettus.com>; Wed, 04 Mar 2026 06:10:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772633445; cv=none;
        d=google.com; s=arc-20240605;
        b=ZducCQDChGvequ1L1mdTiqqVjV99JJJWuTg9DBwVct/fqSTfMizyieJm9qQko3qEML
         1ppAi0/wQ0KhrNWwQnowsZsk58AyPCO9D7TMCr/HoMISPaVe8lvACWT9XSSTIxzCeesq
         5NM2MsfycOsaKQLcXZT0UNe8Sx0BqW4CbJCpjT594MAY6QngN/7vio7LyHmAJyq1chxY
         tqHOP2Ps2a5pq6WPgBGQTU5skaXCMCgL0KLfQg1h5rlt0pwNo9olHpcRxYVAcobQjG93
         uJxYh5Ses4lCcAU2C6p+Gq+zFLdIz2+jsLr49Sn0xO1lRYa2iQZFlYmI5PppzdECvcdp
         Z9nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tJKvKOQ5WQi0X4GwilcTrLotkec1HpZCGtcHEhp6dgw=;
        fh=KaTa+wniHGkZCSOrt4AM2/GAQ+cQaK3nY+us6UO3qtE=;
        b=ZEQG0Z2UOiIpiK2hOVwHIVLz2JU8X0wNPtqsY68XofNWTd4qxaotoDN5VgeKtQdRpE
         4yvMeMSrFZ5i0M9SsArxvXCY3XtGw1d82WfCm1REPFha+J9T0jes6fQ6H6zNrDtwMGP0
         DprYYdHx5Fd8pxtHsuCRONbLXp7A6GoKP4Q+BS0dO07q5E/f8Q8zf7uyZJwJuzGVvaDo
         2TIDFwo18RZ2B/gXUCuj41OWhG7u3zkKzTg5o+cbMglIDdIibGvoNnSPtEp9W59/PQ5O
         YsGxga2u8B4VdnOstGE93Y5EbQih8SQwEBvJMYc+CpKEIo5r8eC8SaMdSdzi9nkm3X6W
         uAZw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1772633445; x=1773238245; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tJKvKOQ5WQi0X4GwilcTrLotkec1HpZCGtcHEhp6dgw=;
        b=tPf88rSXbtIEZikhpD2GoHIa3cqiGu89ccDNayWIWhOpSwFKF/9tqEXm3d287x0mN8
         HrJOtq3KlE38dQS1jof1TR0wIeg1epKqjhjyuLQ46FQ8xt3OAilvxlD5BfVGSl6BtutA
         XBlXXe1beCOgN+r9BcdPIne0KKEPHQY9cFQZ4mTPRIJc0MUpwYslW2ufBxauNDjvyQuU
         CqhO4A0TwrGAfqNxsY/e0yo9xtrGwt7zWK30rZDLRiujf3ebEDVHiHzByHTiM8U5WgS0
         FDc7rl19lGlJSrXfW60fG0iJY6yLVaho2BWvlgLnhkVYtGaWEtim5WIZkbHRHKyGFg5x
         8IqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772633445; x=1773238245;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJKvKOQ5WQi0X4GwilcTrLotkec1HpZCGtcHEhp6dgw=;
        b=CMFvPtPjbKM3V0kPFUGa5f5Hy31W6V+sYz7PwRNAjK471EtYxTjWUEojXQnPw/yXgm
         17/l2CnCDDsiibMop4ZsJx7fJ4oqugomvFDNFB7TxGOckokL+Pu6VUEH+kF24QrddEy7
         GNNndrlkdmuIzD26r5lBfeTQ/wkPjkTCMPnVOAU0JqkV1ziPmYGM2BArHhF4IvIXC1H3
         bUTYZIb1KoJ0FOrpEnZ5l2Ho2XWjSRWv6Psq4OtGELgNSIExgtSOSTlDbG9Fnl0Vupkm
         3uv3wGeW7aQfYlmW/qbl+3xtBPvilc6B+m6iiG04dQA3RX8ebcgn/vchqyuKGmBdVu3i
         KuFA==
X-Forwarded-Encrypted: i=1; AJvYcCXJbGRQIPLdZw4Gr2Y7L72o2a6xTDaGtjN76KZyfL92dtzBQfEDn1NjDZcCtdT07fpipkoi4IYbI8i3@lists.ettus.com
X-Gm-Message-State: AOJu0YwndwOryixbhCulfKtgMnKFY1NkuOpYULw5ZHMxrW6lAU7wHS+R
	OzrfbWXhXrnluZd5NHncw7wykNMfXF6r7iuSh+Sj9za84NqShYxrUjmwiyo+Hyb5Fd0KFSl96Vm
	oD9TPx4UijdUh7EmrAQ85TTRMeiUbuGOVpmR4MUIPUO/S
X-Gm-Gg: ATEYQzwf5ciOB6DfageE4Av4BRhCyrdGR9PrivsTYCPMR9R0ule/IPA5iF/p8gdJbkL
	PLQLkeW9Y9ZRitODebNojL39dToVvn9zwV7herAsIFXPCeZc5ypNt42TqXBlCrvEyx6Gmei8acq
	VpuHKhpjVOyLBe7QnV52jKlMaloS0XzqAGH1ZgYgdzryncIy1N9/mBjfM/bUh+F9U84er7PwkmI
	ANL5HI4q0+xehxnH22fnPgDIzuInpnPCJAPxio30iW4iA21WI5VWTZDeFQIUTNikAdrLgK8Whwj
	Fq2LZgQIZ49OrJmsfw==
X-Received: by 2002:a05:690e:e17:b0:649:4302:cea2 with SMTP id
 956f58d0204a3-64cf9bad090mr1306445d50.43.1772633445538; Wed, 04 Mar 2026
 06:10:45 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAOEzSFR+NxLvPHQN8Lt7gQtp4rD3y-YVV3eDqsqLbc5mcvP5MA@mail.gmail.com>
In-Reply-To: <CAOEzSFR+NxLvPHQN8Lt7gQtp4rD3y-YVV3eDqsqLbc5mcvP5MA@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 4 Mar 2026 09:10:34 -0500
X-Gm-Features: AaiRm500TQ0NdcKjgZnCMjDSwouWZQzSKFvu3ldQmF49Q-abn-nZ9NzbjeRmoBY
Message-ID: <CAGNhwTOMpGMKR5Rdsa4sAiWwv55VBLqY5zy5KNfGD55YiE94Jg@mail.gmail.com>
To: Chris Rogers <c1337rogers@gmail.com>
Message-ID-Hash: JMIC6MUWK2XFUMZLV6X22K6KL6U4MX22
X-Message-ID-Hash: JMIC6MUWK2XFUMZLV6X22K6KL6U4MX22
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eugene Grayver <eugene.grayver@aero.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 - Phase alignment between two USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMIC6MUWK2XFUMZLV6X22K6KL6U4MX22/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9138755068867113852=="
X-Rspamd-Queue-Id: B9C002010D4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[michael.dickens@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,ettus.com:url,ettus.com:email,ti.com:url,aero.org:email]
X-Rspamd-Action: no action

--===============9138755068867113852==
Content-Type: multipart/alternative; boundary="000000000000d6b2d4064c336294"

--000000000000d6b2d4064c336294
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(1) make sure you're using UHD 4.9. 4.9.0.[01] release is fine; the UHD-4.9
branch has some desirable fixes that will be part of the UHD 4.10 release,
so if you're building from source then go with this branch.

(2) Try first tuning =C2=B11 GHz off of the desired RF Fc and then to the a=
ctual
desired RF Fc. Use timed commands for both to be safe; technically I think
the first doesn't have to be.

While the phase alignment (initial phase offset) will still be random, the
phase relationship between any 2 channels should now be repeatable. This
applies to 1,2, .... N X440 USRPs [though if using an OctoClock to
distribute GPSDO signals the channel to channel (C2C) phase coherence and
relationship will be tighter than using multiple OctoClock tiers. There
are, of course, other GPSDO signal distribution systems that have more than
8x replication.]

For the initial offset tune you should see something about "resetting
gearbox"; subsequent (re)tunes may or not show this info.

We will update the language that you note, which applies to UHD 4.8, with
the UHD 4.10 release as, when done correctly, one can attain channel to
channel (C2C) phase coherence and relationship between (re)tunes, UHD
instantiations, and device reboots.

Please try this and let us know how it goes.
---
Michael L Dickens, PhD
Emerson/NI/Ettus SDR RF Principal Application Engineer
Teams: +1-512-683-5305
Cell: +1-512-585-1391
michael.l.dickens@emerson.com <michael.dickens@ni.com>
michael.dickens@ettus.com


On Tue, Mar 3, 2026 at 3:55=E2=80=AFPM Chris Rogers <c1337rogers@gmail.com>=
 wrote:

> The X440 has a clock board (
> https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_too_clocking)
> which uses the LMK04832 PLL (
> https://www.ti.com/lit/ds/symlink/lmk04832.pdf?ts=3D1772540151834) to
> actually generate the RFSoC sample clock from the 10 MHz input. This PLL
> output will have a phase ambiguity WRT the 10 MHz input signal because of
> PLL physics, and this is why you see a random relative phase run to run. =
It
> looks like this chip supports a synchronization input to align output clo=
ck
> edges and the X440 technically has a sync input port on the front, but I
> dont know if these inputs are actually connected to each other. It could =
be
> worth looking into what the X440 Sync In does... last I checked, it didn'=
t
> actually do anything but that was at least a year ago
>
> On Tue, Mar 3, 2026 at 2:37=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
> wrote:
>
>> I have two X440 w/ X4_200 FPGA image.  I need to get consistent phase
>> between channels on USRP1 and USRP2 across multiple runs.  I must be doi=
ng
>> something wrong because I observe consistent phase between channels on a=
ny
>> ONE USRP, but not across two.  The phase appears to be random between th=
e
>> two on each run.
>>
>> Here's my setup:
>>
>>    - Common 10 MHz and 1 PPS
>>    -
>>    Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D192.168=
.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D192.168=
.1.20,time_source=3Dexternal,clock_source=3Dexternal
>>    - I modified the 'stock' rx_samples_to_file as follows:
>>    - Usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>       std::this_thread::sleep_for(std::chrono::milliseconds(1000));
>>       - usrp->set_command_time(uhd::time_spec_t(COMMAND_START_S, 0));
>>       // Set the rate, freq, gain, etc
>>       std::this_thread::sleep_for(std::chrono::milliseconds(COMMAND_STAR=
T_S
>>       * 1000));
>>       usrp->clear_command_time();
>>       - Each streamer is created in a separate thread
>>       -     stream_cmd.stream_now =3D false;
>>           // Time was reset to zero before thread was created
>>           stream_cmd.time_spec  =3D uhd::time_spec_t(STREAM_START_S, 0);
>>           rx_stream->issue_stream_cmd(stream_cmd);
>>
>>
>> What am I missing?  I assume commands apply to both USRPs since I create
>> a multi_usrp.  Do I need to explicitly specify the motherboard for some =
of
>> the commands?
>>
>>
>> Eugene Grayver, Ph.D.
>> Principal Engineer
>> 310-336-1274
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d6b2d4064c336294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(1) make sure you&#39;re using UHD 4.9. 4.9.0.[01] re=
lease is fine; the UHD-4.9 branch has some desirable fixes that will be par=
t of the UHD 4.10 release, so if you&#39;re building from source then go wi=
th this branch.</div><div><br></div><div>(2) Try first tuning =C2=B11 GHz o=
ff of the desired RF Fc and then to the actual desired RF Fc. Use timed com=
mands for both to be safe; technically I think the first doesn&#39;t have t=
o be.</div><div><br></div><div>While the phase alignment (initial phase off=
set) will still be random, the phase relationship between any 2 channels sh=
ould now be repeatable. This applies to 1,2, .... N X440 USRPs [though if u=
sing an OctoClock to distribute GPSDO signals the channel to channel (C2C) =
phase coherence and relationship will be tighter than using multiple OctoCl=
ock tiers. There are, of course, other GPSDO signal distribution systems th=
at have more than 8x replication.]</div><div><br></div><div>For the initial=
 offset tune you should see something about &quot;resetting gearbox&quot;; =
subsequent (re)tunes may or not show this info.</div><div><br></div><div>We=
 will update the language that you note, which applies to UHD 4.8, with the=
 UHD 4.10 release as, when done correctly, one can attain channel to channe=
l (C2C) phase coherence and relationship between (re)tunes, UHD instantiati=
ons, and device reboots.</div><div><br></div><div>Please try this and let u=
s know how it goes.</div><div><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div sty=
le=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;paddin=
g:0px;vertical-align:baseline;color:rgb(0,0,0)"><div style=3D"border:0px;fo=
nt-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-alig=
n:baseline"><font face=3D"arial, sans-serif">---</font></div><div style=3D"=
border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;=
vertical-align:baseline"><font face=3D"arial, sans-serif">Michael L Dickens=
, PhD</font></div><div style=3D"border:0px;font-stretch:inherit;line-height=
:inherit;margin:0px;padding:0px;vertical-align:baseline"><font face=3D"aria=
l, sans-serif">Emerson/NI/Ettus SDR RF=C2=A0</font><span style=3D"font-fami=
ly:arial,sans-serif">Principal</span><font face=3D"arial, sans-serif">=C2=
=A0Application Engineer</font><br></div><div style=3D"border:0px;font-stret=
ch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baseli=
ne"><font face=3D"arial, sans-serif">Teams: +1-512-683-5305<br></font></div=
><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0=
px;padding:0px;vertical-align:baseline"><font face=3D"arial, sans-serif">Ce=
ll: +1-512-585-1391</font></div><div style=3D"border:0px;font-stretch:inher=
it;line-height:inherit;margin:0px;padding:0px;vertical-align:baseline"><a h=
ref=3D"mailto:michael.dickens@ni.com" style=3D"color:rgb(17,85,204);font-fa=
mily:arial,sans-serif" target=3D"_blank">michael.l.dickens@emerson.com</a><=
/div><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;marg=
in:0px;padding:0px;vertical-align:baseline"><font face=3D"arial, sans-serif=
"><a href=3D"mailto:michael.dickens@ettus.com" style=3D"color:rgb(17,85,204=
)" target=3D"_blank">michael.dickens@ettus.com</a></font></div></div></div>=
</div></div></div><br></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2026 at 3:55=E2=
=80=AFPM Chris Rogers &lt;<a href=3D"mailto:c1337rogers@gmail.com">c1337rog=
ers@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">The X440 has a clock board (<a href=3D"https:=
//files.ettus.com/manual/page_usrp_x4xx.html#x4xx_too_clocking" target=3D"_=
blank">https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_too_clocking=
</a>) which uses the LMK04832 PLL (<a href=3D"https://www.ti.com/lit/ds/sym=
link/lmk04832.pdf?ts=3D1772540151834" target=3D"_blank">https://www.ti.com/=
lit/ds/symlink/lmk04832.pdf?ts=3D1772540151834</a>) to actually generate th=
e RFSoC sample clock from the 10 MHz input. This PLL output will have a pha=
se ambiguity WRT the 10 MHz input signal because of PLL physics, and this i=
s why you see a random relative phase run to run. It looks like this chip s=
upports a synchronization input to align output clock edges and the X440 te=
chnically has a sync input port on the front, but I dont know if these inpu=
ts are actually connected to each other. It could be worth looking into wha=
t the X440 Sync In does... last I checked, it didn&#39;t actually do anythi=
ng but that was at least a year ago</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2026 at 2:37=E2=80=AFPM E=
ugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_bla=
nk">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div>




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
<div id=3D"m_6246226188310196639m_2065451845372422816Signature">
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d6b2d4064c336294--

--===============9138755068867113852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9138755068867113852==--
