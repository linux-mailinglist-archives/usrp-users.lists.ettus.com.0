Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C14BCA181BB
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 17:11:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A452385E93
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 11:11:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737475881; bh=m6t7F+N3fTB11HuIzgzI5PRNqMOWWdJJHF5Gy8pNcw0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mUbaYdWOxLjEBcRMR9wV9WDO9YVyrcN7ZnupYOLEkih0NZdxfC3Ni+0NAH3NR9j5Z
	 TJTBxlVEFNn5SLsYWdRdHFEZoIGN2DZ51U4C8rR4rIaw0Qz1J8IE2T/f1+lkLprM6l
	 LuLN2SkzMEAqWofgDd+g6s77Jw5Tlca/NdLx5yK+hvB+WRpUh5fmr/EOxWsgZj05VV
	 d/uzUACiaKPlBVEE1L7ObsNkZQK9We1/Zn9XYhaXVFRqRsyGRYE1zzAkuzIc4sZonJ
	 f+3WqxhqNdBZxgVx5A1RNhZKv8pZRofhouzSnVLYzjJmZq6UNteAWsW4SN/WM0VzGA
	 rQpbgy9Td6kmg==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 495F738557F
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 11:10:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FnoT2BIr";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d9f06f8cf2so11376494a12.3
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 08:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1737475840; x=1738080640; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=57mC1ANGLQM18hWyALBjGPRN+55HcBgTaUnK6+cFh6E=;
        b=FnoT2BIriAQ3iH4mQ1qO2JQBNsXUE6eZ+4o4zHjFqqZmMCz4DA/QQQ9CCbKOopB6uh
         cDUgtdzXu1ctXLMlg0R9o7hbyM9+/oGT8zOFckTQlB+ABZ1FL4B/OXfarC4Q+sR+f0Xe
         X37qcCGcUMwVFGleWwPnM3SoxO5PoBKxz/maQetJmevUNd5ke/Vz+rg40o2js/gXCpLH
         OGqsI6l2V7q8lPk6SMYvz69rvJbLsNLMt+8Oxb1FWncyrZrc8mLD49iTRxs6nWiT6nbt
         piSbvqScrP1RpO5DRHRCMO6E+ZhSbzNb51tl3OxzrM9O6ghi+lW5X6YaP25bcwcZkhjK
         62PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737475840; x=1738080640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57mC1ANGLQM18hWyALBjGPRN+55HcBgTaUnK6+cFh6E=;
        b=MpEgKsbY7fFe93Wm7cEHGLMCQ4X3spsOtMJ0ITHYoJbY+kVf8Ba+YERUeksg0a8iSw
         3+yur5tVb+qM4BMVTE11NZlTf/s1GkyyK4PBsklE8h44KrHhwK9OCfeWKwajT1p2taeF
         ml4qqGFPMZNVMvwuH2h/8HQuZG9WpQYC3X75t0aLqeep7SZYzrFa19aq6+xLaHGRUj4D
         DdoMvAhSKdOlkSwQopulAinkqWIj66R4nlFMAsocTYw+VC8GhdJkmsH+DGI0oev5PWLX
         mv1OsLhW6J9ZQK2+HJEzJyOkSH5oF9sajN+3nJYsxn99K0i+rYGn9DwrhoGTSCO3dc5g
         B+SQ==
X-Gm-Message-State: AOJu0YyGxhGMskJed0c2O+yw67PS/jJcJo9f7AzADQ1Msl3ZlVKxQn4X
	Xg1OCBEXQdUnZT0ueE1W1v0fr91UqrMlg+jmsZCeoHWXHjm9/K0q4MRFpSelbdTvi7JmwxIB8nc
	7YtlX5vZoOfLt3Shufk1eMiTOnAwKAwgsUjllDji37aVniL4=
X-Gm-Gg: ASbGncvt2qgyPiB2Mg4TvJ7C91CbtnCubbZAYoW4l3XYkW4VsC5MVVNt5+epTnxRlwP
	I/N5WCZDIn8U1y7OeH3nsLq40PIiy4s1c6zMzD/Pk24Xi+4wxFg==
X-Google-Smtp-Source: AGHT+IF43D57cay5jjXVME4CynaIycY9zO76QNAJf4VMGzyfdPPDo7etY+SiSOYLq278uC8ONzy1zR0Zsq6zYBZn4vU=
X-Received: by 2002:a05:6402:5251:b0:5d2:d72a:77e4 with SMTP id
 4fb4d7f45d1cf-5db7db1234bmr17973317a12.28.1737475840003; Tue, 21 Jan 2025
 08:10:40 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB912650439B1EAA173D62A6EBECE72@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912650439B1EAA173D62A6EBECE72@SJ0PR09MB9126.namprd09.prod.outlook.com>
Date: Tue, 21 Jan 2025 11:10:28 -0500
X-Gm-Features: AbW1kvYYYEJNFLIHYeqcViiSz95x6hPehkOfiRCNHpjIXAw9CyeMM4AD-17hcsg
Message-ID: <CAB__hTQSmEW7h73wpfXKbM7_KsqCA85=5jMAL615Dr25EZePgQ@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: K3YVE7H2VNSE6FL24O3QYPRCZW7N7HET
X-Message-ID-Hash: K3YVE7H2VNSE6FL24O3QYPRCZW7N7HET
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow reported on first packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K3YVE7H2VNSE6FL24O3QYPRCZW7N7HET/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4894902269134680565=="

--===============4894902269134680565==
Content-Type: multipart/alternative; boundary="0000000000004004a3062c399e77"

--0000000000004004a3062c399e77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,
Is it possible that the overflow occurs because of the previous command
still being in the queue such that at 30 seconds it starts streaming with
nothing to catch it?
Rob

On Mon, Jan 20, 2025 at 6:26=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hi,
>
> Using UHD4.6.0 on ubuntu 22.04 with X310 (same issue on N320).  Using a
> custom C++ UHD application.  The stream start command is timed (about 30s
> in the future).
>
> size_t num_rx_samps =3D rx_stream->recv(buf, len, md, 0.1);
>
>
> As expected, I get a bunch of CODE_TIMEOUT while waiting for the stream t=
o
> start.
>
> About every 3rd time the very non-TIMEOUT response I get is zero-length
> with the md.error_code set to OVERFLOW.  This seems like a UHD error =E2=
=80=94 how
> could it have overflowed without sending me any samples?
>
> Thanks,
> Eugene
>
> ----------------
>
> uhd::rx_metadata_t md;
> bool waiting_for_first_samples =3D true;
> uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
> stream_cmd.stream_now =3D false;
> stream_cmd.time_spec =3D uhd::time_spec_t(start_time_s, 0.0);
> rx_stream->issue_stream_cmd(stream_cmd);
> auto len =3D rx_stream->get_max_num_samps();
> zmq_sample_t buf[len]; // NOLINT
> uint64_t total_samples =3D 0;
>
> while (!stop){
> size_t num_rx_samps =3D rx_stream->recv(buf, len, md, 0.1);
>
> if (cbuf->enqueue(buf, num_rx_samps) =3D=3D 2) // Aborting
> break;
> total_samples +=3D num_rx_samps;
>
> switch (md.error_code) { //handle the error codes
> case uhd::rx_metadata_t::ERROR_CODE_NONE:
> break;
> case uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:
> // The data may not start flowing for a while after we come up
> // However, after we get the first samples, there should never
> // be a timeout. Even at the lowest sample rate of 200 kHz,
> // we expect to get plenty of samples during the 0.1 timeout
> if (!waiting_for_first_samples)
> LOG_WARN("Timeout on ch {} at {:10.2}s, last_report at {:10.2}s",
> ch, tw[ch].current_time, tw[ch].prev_report_time);
> break;
> case uhd::rx_metadata_t::ERROR_CODE_OVERFLOW:
> overflows[ch] ++;
> LOG_WARN("Overflow on ch {} at {:10.2}s, last_report at {:10.2}s. Total
> {}",
> ch, tw[ch].current_time, tw[ch].prev_report_time, overflows[ch]);
> LOG_WARN("total {}, rx {}", total_samples, num_rx_samps);
> break;
> default:
> LOG_ERROR("Got error code on ch {} {:#x}:{}, exiting loop...",
> ch, md.error_code, md.strerror());
> stop =3D true;
> break;
> }
>
> if (num_rx_samps !=3D 0) // got some samples
> waiting_for_first_samples =3D false;
> }
> ---------------------
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004004a3062c399e77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Eugene,</div><div>Is it possible that the overflow=
 occurs because of the previous command still being in the queue such that =
at 30 seconds it starts streaming with nothing to catch it?</div><div>Rob<b=
r></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jan 20, 2025 at 6:26=E2=80=AFPM Eugen=
e Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aer=
o.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"msg-8553700889651751035">




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
Using UHD4.6.0 on ubuntu 22.04 with X310 (same issue on N320).=C2=A0 Using =
a custom C++ UHD application.=C2=A0 The stream start command is timed (abou=
t 30s in the future).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
size_t num_rx_samps =3D rx_stream-&gt;recv(buf, len, md, 0.1);</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
As expected, I get a bunch of CODE_TIMEOUT while waiting for the stream to =
start.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
About every 3rd time the very non-TIMEOUT response I get is zero-length wit=
h the md.error_code set to OVERFLOW.=C2=A0 This seems like a UHD error =E2=
=80=94 how could it have overflowed without sending me any samples?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
----------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
uhd::rx_metadata_t md;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
bool waiting_for_first_samples =3D true;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOU=
S);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
stream_cmd.stream_now =3D false;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
stream_cmd.time_spec =3D uhd::time_spec_t(start_time_s, 0.0);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
rx_stream-&gt;issue_stream_cmd(stream_cmd);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
auto len =3D rx_stream-&gt;get_max_num_samps();</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
zmq_sample_t buf[len];=C2=A0// NOLINT</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
uint64_t total_samples =3D 0;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
while=C2=A0(!stop){</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
size_t num_rx_samps =3D rx_stream-&gt;recv(buf, len, md, 0.1);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
if=C2=A0(cbuf-&gt;enqueue(buf, num_rx_samps) =3D=3D 2)=C2=A0// Aborting</di=
v>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
break;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
total_samples +=3D num_rx_samps;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
switch=C2=A0(md.error_code) {=C2=A0//handle the error codes</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
case uhd::rx_metadata_t::ERROR_CODE_NONE:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
break;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
case uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
// The data may not start flowing for a while after we come up</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
// However, after we get the first samples, there should never</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
// be a timeout. Even at the lowest sample rate of 200 kHz,</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
// we expect to get plenty of samples during the 0.1 timeout</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
if=C2=A0(!waiting_for_first_samples)</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
LOG_WARN(&quot;Timeout on ch {} at {:10.2}s, last_report at {:10.2}s&quot;,=
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ch, tw[ch].current_time, tw[ch].prev_report_time);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
break;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
case uhd::rx_metadata_t::ERROR_CODE_OVERFLOW:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
overflows[ch] ++;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
LOG_WARN(&quot;Overflow on ch {} at {:10.2}s, last_report at {:10.2}s. Tota=
l {}&quot;,</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ch, tw[ch].current_time, tw[ch].prev_report_time, overflows[ch]);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
LOG_WARN(&quot;total {}, rx {}&quot;, total_samples, num_rx_samps);</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
break;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
default:</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
LOG_ERROR(&quot;Got error code on ch {} {:#x}:{}, exiting loop...&quot;,</d=
iv>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ch, md.error_code, md.strerror());</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
stop =3D true;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
break;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
}</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
if=C2=A0(num_rx_samps !=3D 0)=C2=A0// got some samples</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
waiting_for_first_samples =3D false;</div>
<div style=3D"line-height:19px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
}</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------------</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000004004a3062c399e77--

--===============4894902269134680565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4894902269134680565==--
