Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 304939EE69A
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 13:25:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC153385E99
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 07:25:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734006330; bh=wqFt3J30Ff5lCx9eLkg+TjMmtvvUcnVhBAeuNdwYpHw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cWgIrKruz+sSbsPsi5nAjIaueWc21s430l2Ky4ob3FX1A7p65WUE+n5Xr2WTMlqEd
	 ZMgS2xrzHg8wvCuQvjOiYuHfyjQUWHSWN2xo4rDvRHuax4lVzsqQw1/4mjQPl03pOq
	 6EeTDK13Gmyd0a+7qhNvB50B0Rhri6ZxYExTk2LIxEx+i3uuMIK511tmc9sAHaYSth
	 SiF9QxszVWGVZSXBzWeoGWK27HDhvLSRZ6xxFZeqFJbne65brFHMEASQrinTf3AOa5
	 SLR4FWElNGOP4o9gyRWX/lMiG7wl2XHOTiuxKBRqm1atBziYa969E4rr0ug64GXKkG
	 pvWYBDUcbcd6g==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F108385C4D
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 07:24:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SXqIb2Av";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-46772a0f8fbso4103171cf.3
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 04:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734006277; x=1734611077; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+bxnukduSL/UE8gM1VS/U88X8FaY33m+2DqBiCF23mM=;
        b=SXqIb2Av6+Seg6Xk0yZs7dghVejTUbGJvwkK9Y0V8us2PKmRIoawh68ojsA/gqjVRP
         M2jU/GQhKlwF93dTeQADQSE1njFvAHyR6uC27U4GixXyEYeuEOVwGMj7i0I+ahhd+qud
         bD6ZDvpP9fR/mZ8eQBrAn5I17YwXBYlMN8sDlHF8UYTa3XofWs5bXm1fKD5DQE7MfOQH
         LoEFdzQTBFbgVp5ph76XrJzDL+jzcXn3aixIDeoWjuN2U71Etd/GFq7XPjt0n/pAl/HE
         dlE22GeyXQmJBh6H9FN3raxRmQIfFQbHCeN34wBwcTjik3nekPN3ORyFHoNRuH7H03d4
         zOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734006277; x=1734611077;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+bxnukduSL/UE8gM1VS/U88X8FaY33m+2DqBiCF23mM=;
        b=mBkO0HCnOsOdNWncX2OZ2VO/U4fnulbdtvuPqB+MvLhXSIhcmcGNcO6FnKJhjreqhi
         iv1bWgEeH/5b5B0IuL9kO4LxL2d7ZKQyt/poMX64Wo9dvOlBhkrezz2tEQoc0FpXLgiQ
         DTr+I36BUISGtrAdLX9EzcxihYSxifhPtquGNDmY0vGpLDnAyckgfVMw1IuDfM4eJIjK
         NBftpb86fS3WIQ/Opp2HuXSWwTC9ZkFK8MQw0JbfbBAbVDuk5UaZoNRaXbjCJ6JAkE5M
         dKH8inGv/m1GglJy8Aq9IDD6Gemwbwf8WWrMgOsMxN2uWpKOEE9XLvKov1OgdqnSwuSC
         N/GQ==
X-Gm-Message-State: AOJu0Yz9+Rzm16lbZZVGZtL0K2H1amHMalpwLefWrOQ6E68+t/0pHXgq
	3tLNR6l3FyL7st/0lCPv9DBLFqkz999Wgi0eJYHUktw7m5bOFMeueP4Gcavej2GTzRDNYcZNEdP
	eixJSM+aOVEY6ph1Je/qORqE4fGnLo4QF
X-Gm-Gg: ASbGncuXpXrf8/iTrebosoDTTHZKAr3GANHHqOQOJwjk4Aq3DpRLd++EiNq5vhWpdF7
	n6GStnLRiDSsMpymA9g9WzxfeqhAqsIpNOWF7
X-Google-Smtp-Source: AGHT+IEyWTUt7ijsTwnlmC6J4YUn+QRYe4scNYCn4rh1nbdYRkMf/eAd+HFKICmJbyAKhNGXDY58cK5EXlE4754jAc4=
X-Received: by 2002:ac8:7fc2:0:b0:467:6ae8:a1b0 with SMTP id
 d75a77b69052e-467a156c8f7mr906731cf.21.1734006276789; Thu, 12 Dec 2024
 04:24:36 -0800 (PST)
MIME-Version: 1.0
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Thu, 12 Dec 2024 13:24:25 +0100
Message-ID: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YTF7MNRAL2HD5BJVJOTKBIJOQX52X5AT
X-Message-ID-Hash: YTF7MNRAL2HD5BJVJOTKBIJOQX52X5AT
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Python API: Buffer processing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTF7MNRAL2HD5BJVJOTKBIJOQX52X5AT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0310797179520789634=="

--===============0310797179520789634==
Content-Type: multipart/alternative; boundary="0000000000002a9ca7062911cc21"

--0000000000002a9ca7062911cc21
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am working with the UHD Python API to handle burst-mode data transmission
and reception. Both the transmitter and receiver are set to be active at
specific times, for a fixed number of samples per burst. This process
occurs approximately 100 times per second.

Currently, the transmit and receive processes are handled in separate
threads, where they wait for a timestamp to start their respective
operations. When both are finished, a new loop begins. The waiting however
can create some late commands. I would like to process the buffer
separately.

For each RX burst, the following function is called:
*rx_buffer_size = int(5000) # each recv is 500 samples, but we want more
space for multiple bursts*
*rx_buffer = np.zeros(rx_buffer_size, dtype=np.complex64)*

*def rx(start_time, rx_streamer, rx_buffer, rx_metadata):*
*    global rx_time*
*    rx_stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.num_done)*
*    rx_stream_cmd.num_samps = 500*
*    rx_stream_cmd.stream_now = False*
*    rx_stream_cmd.time_spec = start_time*
*    rx_streamer.issue_stream_cmd(rx_stream_cmd)*

*    num_rx_samps = rx_streamer.recv(rx_buffer, rx_metadata, timeout=1.0)*
*    rx_time = rx_metadata.time_spec.get_real_secs()*

Each receive burst consists of exactly 500 samples. However, this approach
feels inefficient as I am processing each burst individually. My goal is to:

   1. *Optimize Efficiency*: Fill a larger buffer with multiple bursts
   (e.g., 10 bursts = 5000 samples) before processing.
   2. *Preserve Timestamps*: Retain the metadata timestamp for each burst
   (i.e., every 500th sample) within the larger buffer.

For example, if a buffer holds 10 bursts, I would like:

   - The buffer to contain 5000 samples.
   - To retrieve the rx_metadata timestamp for the first sample of each
   burst (at indices 0, 500, 1000, ...).

How can I achieve this efficiently while ensuring accurate timestamp
extraction for each burst?

Best regards,
Tim

--0000000000002a9ca7062911cc21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hi all,</p><p>I am working with the UHD Python API to h=
andle burst-mode data transmission and reception. Both the transmitter and =
receiver are set to be active at specific times, for a fixed number of samp=
les per burst. This process occurs approximately 100 times per second.</p><=
p>Currently, the transmit and receive processes are handled in separate thr=
eads, where they wait for a timestamp to start their respective operations.=
 When both are finished, a new loop begins. The waiting however can create =
some late commands. I would like to process the buffer separately.</p><p>Fo=
r each RX burst, the following function is called:</p><div><div style=3D"co=
lor:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;font-=
size:14px;line-height:19px;white-space:pre"><div><i>rx_buffer_size =3D int(=
5000) # each recv is 500 samples, but we want more space for multiple burst=
s</i></div><div><i>rx_buffer =3D np.zeros(rx_buffer_size, dtype=3Dnp.comple=
x64)</i></div></div></div><div><i><br></i></div><div><div style=3D"line-hei=
ght:19px"><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier=
 New&quot;,monospace;font-size:14px;white-space:pre"><i><span style=3D"colo=
r:rgb(0,0,255)">def</span> rx(start_time, rx_streamer, rx_buffer, rx_metada=
ta):</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Cou=
rier New&quot;,monospace;font-size:14px;white-space:pre"><i>=C2=A0 =C2=A0 <=
span style=3D"color:rgb(0,0,255)">global</span> rx_time</i></div><div style=
=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace=
;font-size:14px;white-space:pre"><i>=C2=A0 =C2=A0 rx_stream_cmd =3D uhd.typ=
es.StreamCMD(uhd.types.StreamMode.num_done)</i></div><div style=3D"color:rg=
b(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;font-size:1=
4px;white-space:pre"><i>=C2=A0 =C2=A0 rx_stream_cmd.num_samps =3D 500</i></=
div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&q=
uot;,monospace;font-size:14px;white-space:pre"><i>=C2=A0 =C2=A0 rx_stream_c=
md.stream_now =3D <span style=3D"color:rgb(0,0,255)">False</span></i></div>=
<div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;=
,monospace;font-size:14px;white-space:pre"><i>=C2=A0 =C2=A0 rx_stream_cmd.t=
ime_spec =3D start_time</i></div><div style=3D"color:rgb(0,0,0);font-family=
:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre"=
><i>=C2=A0 =C2=A0 rx_streamer.issue_stream_cmd(rx_stream_cmd)</i></div><div=
 style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,mon=
ospace;font-size:14px;white-space:pre"><i><br></i></div><div style=3D"color=
:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;font-siz=
e:14px;white-space:pre"><i>=C2=A0 =C2=A0 num_rx_samps =3D rx_streamer.recv(=
rx_buffer, rx_metadata, timeout=3D<span style=3D"color:rgb(9,134,88)">1.0</=
span>)</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;C=
ourier New&quot;,monospace;font-size:14px;white-space:pre"><i>=C2=A0 =C2=A0=
 rx_time =3D rx_metadata.time_spec.get_real_secs()</i></div><div style=3D""=
><p>Each receive burst consists of exactly 500 samples. However, this appro=
ach feels inefficient as I am processing each burst individually. My goal i=
s to:</p><ol><li><strong>Optimize Efficiency</strong>: Fill a larger buffer=
 with multiple bursts (e.g., 10 bursts =3D 5000 samples) before processing.=
</li><li><strong>Preserve Timestamps</strong>: Retain the metadata timestam=
p for each burst (i.e., every 500th sample) within the larger buffer.</li><=
/ol><p>For example, if a buffer holds 10 bursts, I would like:</p><ul><li>T=
he buffer to contain 5000 samples.</li><li>To retrieve the <code>rx_metadat=
a</code> timestamp for the first sample of each burst (at indices 0, 500, 1=
000, ...).</li></ul><p>How can I achieve this efficiently while ensuring ac=
curate timestamp extraction for each burst?</p><p>Best regards,<br>Tim</p><=
/div></div></div></div>

--0000000000002a9ca7062911cc21--

--===============0310797179520789634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0310797179520789634==--
