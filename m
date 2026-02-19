Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9O7eJzYDl2mjtgIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:33:58 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 108F515E9AE
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:33:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 423E13855D4
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:33:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771504437; bh=u4d4b8Z+xzXOJGxOI1kPr0j3Uj49lsGMykwMvDFyULU=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QbbYmNmuA4Vl9ssJ356YgT1chsksGaAl5p7vbC157Nfhhi/Y+GMh02RzlSpyr+crK
	 C8VM/HB0I7bfXlwARXt3YkZ9kGUs7p9cmlAkJ6ar8E5gwBuFDrItmxjFRr4QzbOnjj
	 4+3XwfNaIyC882gsJEptKfgL6P9IS8ls/SdFiYGUdkwpirFcZxv7FtvryeRoqigQlv
	 L5xF29At5n13SQ8n7bq5siSv8fiBpncg0ZUuO4y034ajfN7W3Fdxn8ZSXXt5WHayFm
	 OqmZacC2MMeQ0hmJou2m67TONPE7gaHVVQhlHsyz930WeyCBdICY50RRWUmnqcYwhC
	 gmGRvjA30NxCA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5433E385834
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:33:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HoEYiRQj";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8cb420f7500so85539085a.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:33:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771504410; cv=none;
        d=google.com; s=arc-20240605;
        b=C4x3BW4pvdKjtyHonprUHQSSOqch5vgPOxLah2wb0RdGF5uJRWLUOU+e//b2mfPacH
         xrp0frHLMf8SRhfTlKFyu00hAVjETbxA3KR0jn+BVDlsT3Z7ZS0PWTn4urU8Xd0ZZKIy
         CNzkAzg2uQ7eDis71nLS4lTRPP4WlCkznfZJp6cGcHYuVjlz0PkS8n/wk6FLGPQPgOQo
         njJC+HZN8/habACPXyS6R32gxcGYhAMVPuLhoL2nkqBgheRG+byYU98V/a1hB/FYG5qH
         XkZwaD86i/zq9rr34i87E8RfD8ZhMTffPHVYmqP1OOkFlECpM8wvYovy/peuWZBOdZJY
         ksGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=z9dW+yVS/y0O9YTVcl9CwD1prTSfreL1+fvIeWq1s5I=;
        fh=1adcuLN4VePyAip7Shvc4XVYUZRXr323UxdtkoipyMM=;
        b=f6FQkgzR7+tj5lN3026FPN4hHinGFeEiHoUu6rSiAacL+uwrPAGTeAIKQPhR1DK4j9
         QLW/6NhHPviulBrMcjD0sXYGfW4k6ijpiv4uuvYkFSexRYJSta3f8wmhBEPy88n1dfNW
         JlqpwWQPe0vC1nRKhfbq0D+3rwMYRccH9YaS6TohpSYIHIc9I/Q2sTYEY7voHBwExPwO
         rGRn6ITZBMp8Z4eKso2M0OAq06kln1empIBWTLCc0qPV7qdeuseqB8ZqxazhgVHDpJPo
         s62UgQ73E9WWKNNfCH2N3E6ywEnhwkirohHKVqU6YqVGtaugGC5EddqbMA228oBtKjLa
         a9qg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771504410; x=1772109210; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z9dW+yVS/y0O9YTVcl9CwD1prTSfreL1+fvIeWq1s5I=;
        b=HoEYiRQjmAtLbjl2H6qeJXys5GdWIjjimNC3+FAA5+ZTPvbu05qbEvOdaxHUqwyFSJ
         J19jrC+jOrZeqng0lYNxH6IMRsAGa3y1H4sTGX9icmo8UNLGubudkYAWs0C8tdbQBZIg
         QbBC8IOqxIeaen/HxX4fpleJSRjtAbg8eKNr9dV5I1aYuYZKwUViLQmMZlX9hyl3ts59
         IcPmT3/wFui3E42tda03+I2/32z8YyAsu8oro/KNgwwFa+Rb8JeG3NewKNdM1lJ6shMF
         eu1mCCve6D7F4WERkyMDk82po08/TR01ObRmubqIzI4NcfHi1Pa5Q5Ztk55V9h0xJS8P
         /6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771504410; x=1772109210;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9dW+yVS/y0O9YTVcl9CwD1prTSfreL1+fvIeWq1s5I=;
        b=bO9JsQasep6L5NySSqttOsiHAuDZ0W/6GgjO0JdeLWrg3tvPnG3G9SJZwcK14feU/G
         D5vFnepSMmuI0FvSkrb9FoRYLIlqoN4MqItuzhAz/Tt6tVrc4giJbxSCJN+bemcSBnpL
         uAPgwU4k4hCECqNHVYatbKeXcGWJkoa6LBGhLO6x/mG206plJXTupEKzCl3dTYz6+/LX
         L+FhI/UcPliBDG/KAT9mha4mTo6FPyoVt3GOMPosH3yURzgeMh2VTADIVuNNiJyywhqX
         bufQObWuYtnK1plNBLgkTGjHuvYKAMxR7qKVU/YVIq+hvdqJ38SKQ6phBz9QL+AwDpoE
         +6pw==
X-Gm-Message-State: AOJu0YxfKlJl4s5X98372Q+BKg7XSHPhU1nKJOaokzibfD1FHA/ntaQM
	0Jje11imZZActEtDymEPClgTjfftrFNus85D9JQWIo5QqwxpP7w8sasDu40eovTnHVgheKtR1z1
	icTXaDxJm4mwd97XLCWyLJozK6HX9i2HKg7bjwiAQwG+suCmCPlDWBS5mSA==
X-Gm-Gg: AZuq6aJLINmImRR/xRBzIFco/wMw8Q0dKEgxJ+VbmEm6c5I4T4CbYGoFy68TVxY+ROc
	hOv9ilXya8+X69D9oHXAPtjo3TiP6KTAGkJQca9pWXE6Q7JNDYV1+T6GtuJUJpTsQuWWmEvtvs9
	F2C15nvsPAjGghCvyAf9H2h+qKEqr/uEciDcUfdUn7dQNvf1Lij4FV2RVl9gSNMXeW4cyXd3sEm
	DI6WucBVGDEuEN7D+vVuANHzSUIF6kw83u3B5v2BZ00x5U0vM1r+kPEhOt0Wk3eAJ04CGOYuVHF
	Tnk0s7DxIR3Zn+bHt63SfMm/3PXURxtxMQ/iTw==
X-Received: by 2002:a05:620a:4809:b0:8c7:1b3c:8e8 with SMTP id
 af79cd13be357-8cb4bfb97c0mr2154531285a.40.1771504410392; Thu, 19 Feb 2026
 04:33:30 -0800 (PST)
MIME-Version: 1.0
References: <IA4PR10MB8397396A89682AD790D1F38E8693A@IA4PR10MB8397.namprd10.prod.outlook.com>
 <CAB__hTSZ_+jLJhtas5YJCUxbE+=j2zq_7VVkLacDW3PThgPM8g@mail.gmail.com> <IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EA@IA4PR10MB8397.namprd10.prod.outlook.com>
In-Reply-To: <IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EA@IA4PR10MB8397.namprd10.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:33:19 +0100
X-Gm-Features: AaiRm50ZIelv6mgjNOiguwaZSTYBxjpbYQIKONKkxjF0PuTajDcunovkbc6wM_4
Message-ID: <CAFOi1A694jVKDoz2nYZ9iNxYaq-ES-VB7wFS5JXLu2-E0AsTsg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: PE4EJWH2SGJIMGFNVFFLRN4GGYWLITUS
X-Message-ID-Hash: PE4EJWH2SGJIMGFNVFFLRN4GGYWLITUS
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: How to disconnect streamers on RFNoC graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PE4EJWH2SGJIMGFNVFFLRN4GGYWLITUS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7955274182365008852=="
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
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,nd.edu:email,emwd.com:dkim,mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns,emerson.com:email]
X-Rspamd-Queue-Id: 108F515E9AE
X-Rspamd-Action: no action

--===============7955274182365008852==
Content-Type: multipart/alternative; boundary="000000000000198657064b2c83a6"

--000000000000198657064b2c83a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

a short note that might also help: The Replay block has many input ports.
You could use one input port for the Tx Streamer, and a different one for
the radio.

Also, in your list of actions, I don't see a need to actually disconnect
the Tx Streamer. Sounds like you'd be fine just leaving it connected. I
find it helpful, when possible, to do all the connection setup first, then
call commit(), and then only do streaming stuff (but yes, there are
scenarios where that doesn't work and then disconnecting is totally fine).

As for disconnecting: When you destroy the streamer object, it will get
properly disconnected. That is typically the approach I would recommend if
you really need to disconnect streamers.

--M

On Thu, Jan 29, 2026 at 9:00=E2=80=AFAM Yang, Nan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
>
>
> Thank you for the suggestion. The ID is =E2=80=9CTxStreamer#0=E2=80=9D. I=
 also found that
> disconnecting a streamer does not fully restore its status so I need to
> create new streamers every time. This works for me now. I opened an issue
> <https://github.com/EttusResearch/uhd/issues/903> though.
>
>
>
> Regards,
>
> Nan
>
>
>
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, January 27, 2026 7:02 AM
> *To:* Yang, Nan <nan.yang@emerson.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] How to disconnect streamers on
> RFNoC graph
>
>
>
> I'm not sure but I seem to recall that the streamer ID could not be
> queried but that it used a naming convention (something like
> "tx_streamer_1") that you could guess and use to successfully disconnect
> the graph. Perhaps if you log DEBUG or TRACE level messages (or inspect
> Ettus code), you can see what the stream ID is.  I know that this is not
> the right answer, but it might get you by if the API is missing the neede=
d
> functions to query the ID.
>
>
>
> Rob
>
>
>
> On Mon, Jan 26, 2026 at 5:52=E2=80=AFPM Yang, Nan via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello UHD folks,
>
>
>
> I=E2=80=99m trying to buffer all 4 channels tx/rx data on DRAM on X410. S=
o my
> application does
>
>    1. Connect tx_streamer to replay block and write samples to DRAM
>    2. Disconnect tx_streamer
>    3. Connect replay block to radio block
>    4. Do tx and rx
>    5. Disconnect radio blocks
>    6. Connect replay block to rx_streamer and read samples
>
>
>
> I don=E2=80=99t find the correct API for step 2. The
> uhd::rfnoc::rfnoc_graph::disconnect() function takes std::string
> &streamer_id, however, I can=E2=80=99t find a public API that returns a
> streamer_id. The connect() function accepts uhd::tx_streamer::sptr and
> uhd::rx_streamer::sptr, I wonder if disconnect() should accept same
> argument types.
>
>
>
> If I skip step 2, I get an error in step 3.
>
>
>
> Regards,
>
> Nan
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000198657064b2c83a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>a short note that might =
also help: The Replay block has many input ports. You could use one input p=
ort for the Tx Streamer, and a different one for the radio.</div><div><br><=
/div><div>Also, in your list of actions, I don&#39;t see a need to actually=
 disconnect the Tx Streamer. Sounds like you&#39;d be fine just leaving it =
connected. I find it helpful, when possible, to do all the connection setup=
 first, then call commit(), and then only do streaming stuff (but yes, ther=
e are scenarios where that doesn&#39;t work and then disconnecting is total=
ly fine).</div><div><br></div><div>As for disconnecting: When you destroy t=
he streamer object, it will get properly disconnected. That is typically th=
e approach I would recommend if you really need to disconnect streamers.</d=
iv><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 29, 2026 =
at 9:00=E2=80=AFAM Yang, Nan via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg3451346677061=
369262">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_3451346677061369262WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi Rob,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you for the sug=
gestion. The ID is =E2=80=9CTxStreamer#0=E2=80=9D. I also found that discon=
necting a streamer does not fully restore its status so I need to create ne=
w streamers every time. This works for me now. I
<a href=3D"https://github.com/EttusResearch/uhd/issues/903" target=3D"_blan=
k">opened an issue</a> though.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Regards,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Nan<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Rob Kossler &lt;<a href=3D"mailto:=
rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
<br>
<b>Sent:</b> Tuesday, January 27, 2026 7:02 AM<br>
<b>To:</b> Yang, Nan &lt;<a href=3D"mailto:nan.yang@emerson.com" target=3D"=
_blank">nan.yang@emerson.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] How to disconnect streamers on =
RFNoC graph<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:1pt;font-family:&quot;Arial=
&quot;,sans-serif;color:white"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white"><u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m not sure but I seem to recall that the strea=
mer ID could not be queried but that it used a naming convention (something=
 like &quot;tx_streamer_1&quot;) that you could guess and use to successful=
ly disconnect the graph. Perhaps if you log DEBUG
 or TRACE level messages (or inspect Ettus code), you can see what the stre=
am ID is.=C2=A0 I know that this is not the right answer, but it might get =
you by if the API is missing the needed functions to query the ID.<u></u><u=
></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 26, 2026 at 5:52<span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif">=E2=80=AF</span>PM Yang, Nan via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello UHD folks,</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99m trying to=
 buffer all 4 channels tx/rx data on DRAM on X410. So my application does</=
span><u></u><u></u></p>
<ol start=3D"1" type=3D"1">
<li class=3D"m_3451346677061369262m5684133474275124160msolistparagraph">
<span style=3D"font-size:11pt">Connect tx_streamer to replay block and writ=
e samples to DRAM</span><u></u><u></u></li><li class=3D"m_34513466770613692=
62m5684133474275124160msolistparagraph">
<span style=3D"font-size:11pt">Disconnect tx_streamer</span><u></u><u></u><=
/li><li class=3D"m_3451346677061369262m5684133474275124160msolistparagraph"=
>
<span style=3D"font-size:11pt">Connect replay block to radio block</span><u=
></u><u></u></li><li class=3D"m_3451346677061369262m5684133474275124160msol=
istparagraph">
<span style=3D"font-size:11pt">Do tx and rx</span><u></u><u></u></li><li cl=
ass=3D"m_3451346677061369262m5684133474275124160msolistparagraph">
<span style=3D"font-size:11pt">Disconnect radio blocks</span><u></u><u></u>=
</li><li class=3D"m_3451346677061369262m5684133474275124160msolistparagraph=
">
<span style=3D"font-size:11pt">Connect replay block to rx_streamer and read=
 samples</span><u></u><u></u></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I don=E2=80=99t find =
the correct API for step 2. The uhd::rfnoc::rfnoc_graph::disconnect() funct=
ion takes std::string &amp;streamer_id, however, I can=E2=80=99t find
 a public API that returns a streamer_id. The connect() function accepts uh=
d::tx_streamer::sptr and uhd::rx_streamer::sptr, I wonder if disconnect() s=
hould accept same argument types.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">If I skip step 2, I g=
et an error in step 3.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Regards,</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Nan</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000198657064b2c83a6--

--===============7955274182365008852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7955274182365008852==--
