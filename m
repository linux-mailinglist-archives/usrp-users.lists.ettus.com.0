Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDEA90DD8E
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 22:41:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC14F385415
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 16:41:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718743287; bh=u1Ja8y+U278vDzkbVSZjHyOal+9tMVE4+0QVuUW3XFU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Q5436xBsu7KzlUIuYsMLQmWlMTXZunE/vSlhH3tARl0cM6DBUh/HkHwDzN5eUG/A1
	 0x5HVde9VApS5NDAFcf74bAxjDLlhytxI+WVWZI/KnVPe2CsFXsjMpxcXdO5Wg4IRw
	 upTSkuEvnvpBwyoxGJ5+H3gi4NMP6iJQtKHelVU+gNXmEh06OOmOpxqCqB3DZiuGa9
	 10BvukihEg0pbow1T9g+2fwTYmKLxZQz8V0tPCPwsvly6Df1iOTf9BFBJoBuCX7PIE
	 VF6NbgxnM7jWqZOADWBiB9KT/Cb/1DDXWcerSUAwyWh0/mMTHcW2EJGzYnGdluVPVK
	 3NZyESrS+tBOQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DFD53853CF
	for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2024 16:40:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="hMjBxz52";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a6f13dddf7eso718446566b.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2024 13:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1718743222; x=1719348022; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0Ej58265Gcnmt50h32DDpNWew3fHikAKYL3zvf31aCw=;
        b=hMjBxz52jMatiN57sEztYAmynJZe+lqjReaWrbbXp2Ah1p+DHRYxmaKYIvffI/FNQM
         KmA9rtmofhmQyUvF3zOYFVXstzRuaIydHV3uPQEq32FNt5RHqy6lvI79896JHE+BuI7z
         nYfPGHfwS/uPm9PjdxeNzUqrqR/payRlRilgha+bMlkxn1vSyBOuSEZ4qdqi4qdMOyat
         b/z/8lYH/yZmSgv/Lar5Bg46kRUH9vFK0smo/AWG2tW+3E8O/Or7dX9m0puiz60ya+sY
         nSnseDDWsihy+nj3LJpszpjUJFnI/F+fKeaQZl1x+z4dJe9beSID/ZBVLebW1GW7LKMF
         5sVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718743222; x=1719348022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Ej58265Gcnmt50h32DDpNWew3fHikAKYL3zvf31aCw=;
        b=Zmqf6DIIEVRrQvFC3usFGwKK8ZVEYDWbnBKZaeIs3u6S6gZxA4sTHNj8XWNFB0bJDG
         O2sfTGdG1MqMwq1a2YsIpD9xXjGYySTzmWMVzDnpr7e3uwM2VIwSIv89WTceFQ9iWDps
         tHuuEjOI2peSZUt4WayZCgmz2bN3L4hgg3cbbdltr+LCRGzNCHor3fMaYfRQd27l3V3t
         z7cIdfKIzmI5rUmb5gPPgY8eTxFWpDbNiQrmsK3kHpH3MdQ2hFZbHvnT81tqnjz8QMRn
         W1uSfOXvcE+wWE19NhKzrk0zvVTSF/pmr8fGX7WpqhiDmstqI5TbfHALU6yLV186ez1x
         Wf6g==
X-Gm-Message-State: AOJu0YzHEDgjTWfg6Okzw6qNnzOobeYwPsXBPfMMMfNK6BWeq3RIFUAG
	uiMbQAO9MUTrSBUf+xTd2ULOznJ/YkmBRKpqTTK3WVjcN+FVTzIn5VeAmS5bT+RHMhVzpu/xLbp
	flF37nEllqY9sGRLAAao0flO4txeeH+qKzAzbP7eDQVmzQ1UDtLaoIg==
X-Google-Smtp-Source: AGHT+IEXuKUFTuA1I1IAuX2tAQ7owI4H7mWeOT5kSQsYndzw9QzGKx78Hx4VPRjRn1O/YYw5MDosFhsZMAuXa99kjTI=
X-Received: by 2002:a17:906:11cb:b0:a6f:1b40:82ab with SMTP id
 a640c23a62f3a-a6fab7d6c27mr28407066b.76.1718743221333; Tue, 18 Jun 2024
 13:40:21 -0700 (PDT)
MIME-Version: 1.0
References: <35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0@lists.ettus.com>
In-Reply-To: <35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 18 Jun 2024 15:40:05 -0500
Message-ID: <CAFche=jpd5-uZMS2DrH03JetcXvvhOnEaitooJX2jkdATpp83A@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: DT2KGXAJWJ4MBJSCXVNWPW53A6P7LPHV
X-Message-ID-Hash: DT2KGXAJWJ4MBJSCXVNWPW53A6P7LPHV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DT2KGXAJWJ4MBJSCXVNWPW53A6P7LPHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5630398997776514661=="

--===============5630398997776514661==
Content-Type: multipart/alternative; boundary="0000000000002b0b91061b301785"

--0000000000002b0b91061b301785
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the first version can you try setting has_time_spec to false after the
first packet is sent, and don't bother to set the time_spec on subsequent
packets within a burst? The time_spec should really only be for the first
packet. The radio will ignore the timestamp on the subsequent packets
within a burst, and I noticed we set has_time_spec to false after the first
packet in our benchmark_rate example.

L means the first packet of the burst came after the indicated time, and 1
second should be enough time. So I suspect either the time is being
calculated wrong or you're sending multiple bursts. If a subsequent packet
in a burst comes late, it would show up as a U rather than L.

Wade

On Mon, Jun 17, 2024 at 11:18=E2=80=AFPM <cjohnson@serranosystems.com> wrot=
e:

> Would you be able to provide some suggestions? We need to keep precision
> timing for transmission. Neither of the two proof of concepts (POC) below
> are meeting our needs. Of course we are sending 2 packets due to lack of
> jumbo frames.
>
> We have 2048 samples (4 bytes per sample) we would have liked to send per
> packet, or 2048/200E+6 =3D 10.24 us per packet or 97656 packets per secon=
d.
> It=E2=80=99s a continuous stream. This doesn=E2=80=99t include packet ove=
rhead.
>
> The reason the Jumbo frame thing came up was because we were getting =E2=
=80=9CL=E2=80=9Ds
> (missed timing) when using the time spec, and =E2=80=9CU=E2=80=9D when no=
t using timing
> spec, most likely due to 2 packets per transmission instead of 1 jumbo
> frame.
>
> I have provided POC of our test Tx program for 2 cases. The first uses
> timing spec, which doesn=E2=80=99t keep up. The second was just to see ho=
w it would
> perform if there wasn=E2=80=99t a time spec.
>
> This thread runs as the highest priority in Linux, and we have tuned
> according to your documentation.
>
> *First Test Program 1), PPS is ~95500,  but we get =E2=80=9CL=E2=80=9Ds c=
onstantly .*
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Maximum frame size: 8000 bytes.
>
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
> Actual TX Rate: 200.000000 Msps
>
> Actual TX Freq: 2400.000000 MHz
>
> Actual TX Gain: 30.000000 dB
>
> Actual TX Bandwidth: 16.000000 MHz
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Using transmit_packets_timespec()
>
> Start transmit_packets_timespec()
>
> Packet size: 8192 bytes
>
> --------------------------------------------
>
> Transmitted packets: 30632386
>
> Dropped packets: 9
>
> PAUSE frames received: 0
>
> PAUSE frames transmitted: 0
>
> GPS lock lost events: 0
>
> Network RX packets: 19733243
>
> Network TX packets: 206298940
>
> Network RX errors: 0
>
> Network TX errors: 0
>
> Network RX dropped: 0
>
> Network TX dropped: 0
>
> USRP TX overruns: 0
>
> USRP TX underruns: 0
>
> USRP sequence errors: 0
>
> GPS time sync: 1136281795
>
> GPS time sync errors: 0
>
> Packets Per Second (PPS): 95428
>
>
> *Second Test Program 2), PPS is ~98000, Buffer Size is 8192 (without USRP
> overhead), occasional =E2=80=9CU=E2=80=9D*
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Maximum frame size: 8000 bytes.
>
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
> Actual TX Rate: 200.000000 Msps
>
> Actual TX Freq: 2400.000000 MHz
>
> Actual TX Gain: 30.000000 dB
>
> Actual TX Bandwidth: 16.000000 MHz
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Using transmit_packets_no_timespec()
>
> Start transmit_packets_no_timespec()
>
> Packet size: 8192 bytes
>
> --------------------------------------------
>
> Transmitted packets: 12844561
>
> Dropped packets: 0
>
> PAUSE frames received: 0
>
> PAUSE frames transmitted: 0
>
> GPS lock lost events: 0
>
> Network RX packets: 5528620
>
> Network TX packets: 77280212
>
> Network RX errors: 0
>
> Network TX errors: 0
>
> Network RX dropped: 0
>
> Network TX dropped: 0
>
> USRP TX overruns: 0
>
> USRP TX underruns: 0
>
> USRP sequence errors: 0
>
> GPS time sync: 1136280963
>
> GPS time sync errors: 0
>
> Packets Per Second (PPS): 98050
>
>
> // 2 function to simulate our packet transmission
> // First Test Program 1)
> void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_=
streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) {
>     uhd::tx_metadata_t md;
>     md.start_of_burst =3D true;
>     md.end_of_burst =3D false;
>     md.has_time_spec =3D true;
>
>     std::vector<std::complex<int16_t>> buffer(2048); // CRJ TEMP buffer(2=
048);
>
>     std::cout << "Start transmit_packets_timespec()" << std::endl;
>     std::cout << "Packet size: " << buffer.size() * sizeof(std::complex<i=
nt16_t>) << " bytes" << std::endl;
>
>     // Get and print the maximum number of samples per packet
>     size_t max_num_samps =3D tx_stream->get_max_num_samps();
>     std::cout << "Max number of samples per packet: " << max_num_samps <<=
 std::endl;
>
>     // Initialize timestamp
>     md.time_spec =3D uhd::time_spec_t(usrp->get_time_now().get_full_secs(=
) + 1.0); // Start 1 second in the future
>
>     while (1 /*!stop_logging.load()*/) {
>         //if (gps_locked.load()) {
>             //  md.time_spec =3D uhd::time_spec_t(usrp->get_time_now().ge=
t_full_secs() + 1.0);
>         //}
>
>         size_t num_tx_samps =3D tx_stream->send(&buffer.front(), buffer.s=
ize(), md);
>
>         if (num_tx_samps < buffer.size()) {
>             dropped_packets++;
>         } else {
>             transmitted_packets++;
>         }
>
>         md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() / =
rate);
>
>         md.start_of_burst =3D false;
>         //std::this_thread::sleep_for(std::chrono::milliseconds(5));
>     }
>
>     // Mark end of burst
>     md.end_of_burst =3D true;
>     tx_stream->send("", 0, md);
> }
>
> // Second Test Program 2)
> void transmit_packets_no_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::=
tx_streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) {
>     uhd::tx_metadata_t md;
>     md.start_of_burst =3D true;
>     md.end_of_burst =3D false;
>     md.has_time_spec =3D false; // No time specification
>
>     std::vector<std::complex<int16_t>> buffer(2048);
>
>     std::cout << "Start transmit_packets_no_timespec()" << std::endl;
>     std::cout << "Packet size: " << buffer.size() * sizeof(std::complex<i=
nt16_t>) << " bytes" << std::endl;
>
>     while (!stop_logging.load()) {
>         size_t num_tx_samps =3D tx_stream->send(&buffer.front(), buffer.s=
ize(), md);
>
>         if (num_tx_samps < buffer.size()) {
>             dropped_packets++;
>         } else {
>             transmitted_packets++;
>         }
>
>         md.start_of_burst =3D false;
>         // Adjust the sleep time to control the packet rate
>         // std::this_thread::sleep_for(std::chrono::milliseconds(1));
>     }
>
>     // Mark end of burst
>     md.end_of_burst =3D true;
>     tx_stream->send("", 0, md);
> }
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002b0b91061b301785
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For the first version can you try setting has_time_sp=
ec to false after the first packet is sent, and don&#39;t bother to set the=
 time_spec on subsequent packets within a burst? The time_spec should reall=
y only be for the first packet. The radio will ignore the timestamp on the =
subsequent packets within a burst, and I noticed we set has_time_spec to fa=
lse after the first packet in our benchmark_rate example.</div><div><br></d=
iv><div>L means the first packet of the burst came after the indicated time=
, and 1 second should be enough time. So I suspect either the time is being=
 calculated wrong or you&#39;re sending multiple bursts. If a subsequent pa=
cket in a burst comes late, it would show up as a U rather than L.</div><di=
v><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2024 at 11:18=E2=80=AFPM &lt=
;<a href=3D"mailto:cjohnson@serranosystems.com">cjohnson@serranosystems.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<p>Would you be able to provide some suggestions?  We need to keep precisio=
n timing for transmission.  Neither of the two proof of concepts (POC) belo=
w are meeting our needs.  Of course we are sending 2 packets due to lack of=
 jumbo frames.</p><p>We have 2048 samples (4 bytes per sample) we would hav=
e liked to send per packet, or 2048/200E+6 =3D 10.24 us per packet or 97656=
 packets per second.  It=E2=80=99s a continuous stream.  This doesn=E2=80=
=99t include packet overhead.</p><p>The reason the Jumbo frame thing came u=
p was because we were getting =E2=80=9CL=E2=80=9Ds (missed timing) when usi=
ng the time spec, and =E2=80=9CU=E2=80=9D when not using timing spec, most =
likely due to 2 packets per transmission instead of 1 jumbo frame.</p><p>I =
have provided POC of our test Tx program for 2 cases.  The first uses timin=
g spec, which doesn=E2=80=99t keep up.  The second was just to see how it w=
ould perform if there wasn=E2=80=99t a time spec.</p><p>This thread runs as=
 the highest priority in Linux, and we have tuned according to your documen=
tation.</p><p><em><strong>First Test Program 1), PPS is ~95500,=C2=A0 but w=
e get =E2=80=9CL=E2=80=9Ds constantly .</strong></em></p><pre><code>[INFO] =
[UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_</code></pre><pre><co=
de>[INFO] [X300] X300 initialization sequence...</code></pre><pre><code>[IN=
FO] [X300] Maximum frame size: 8000 bytes.</code></pre><pre><code>[INFO] [G=
PS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></pre><pre><c=
ode>[INFO] [X300] Radio 1x clock: 200 MHz</code></pre><pre><code>Actual TX =
Rate: 200.000000 Msps</code></pre><pre><code>Actual TX Freq: 2400.000000 MH=
z</code></pre><pre><code>Actual TX Gain: 30.000000 dB</code></pre><pre><cod=
e>Actual TX Bandwidth: 16.000000 MHz</code></pre><pre><code>[WARNING] [0/Ra=
dio#0] Attempting to set tick rate to 0. Skipping.</code></pre><pre><code>U=
sing transmit_packets_timespec()</code></pre><pre><code>Start transmit_pack=
ets_timespec()</code></pre><pre><code>Packet size: 8192 bytes</code></pre><=
pre><code>--------------------------------------------</code></pre><pre><co=
de>Transmitted packets: 30632386</code></pre><pre><code>Dropped packets: 9<=
/code></pre><pre><code>PAUSE frames received: 0</code></pre><pre><code>PAUS=
E frames transmitted: 0</code></pre><pre><code>GPS lock lost events: 0</cod=
e></pre><pre><code>Network RX packets: 19733243</code></pre><pre><code>Netw=
ork TX packets: 206298940</code></pre><pre><code>Network RX errors: 0</code=
></pre><pre><code>Network TX errors: 0</code></pre><pre><code>Network RX dr=
opped: 0</code></pre><pre><code>Network TX dropped: 0</code></pre><pre><cod=
e>USRP TX overruns: 0</code></pre><pre><code>USRP TX underruns: 0</code></p=
re><pre><code>USRP sequence errors: 0</code></pre><pre><code>GPS time sync:=
 1136281795</code></pre><pre><code>GPS time sync errors: 0</code></pre><pre=
><code>Packets Per Second (PPS): 95428  </code></pre><p><br></p><p><strong>=
Second Test Program 2), PPS is ~98000, Buffer Size is 8192 (without USRP ov=
erhead), occasional =E2=80=9CU=E2=80=9D</strong></p><pre><code>[INFO] [UHD]=
 linux; GNU C++ version 9.4.0; Boost_107100; UHD_</code></pre><pre><code>[I=
NFO] [X300] X300 initialization sequence...</code></pre><pre><code>[INFO] [=
X300] Maximum frame size: 8000 bytes.</code></pre><pre><code>[INFO] [GPS] F=
ound an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></pre><pre><code>[=
INFO] [X300] Radio 1x clock: 200 MHz</code></pre><pre><code>Actual TX Rate:=
 200.000000 Msps</code></pre><pre><code>Actual TX Freq: 2400.000000 MHz</co=
de></pre><pre><code>Actual TX Gain: 30.000000 dB</code></pre><pre><code>Act=
ual TX Bandwidth: 16.000000 MHz</code></pre><pre><code>[WARNING] [0/Radio#0=
] Attempting to set tick rate to 0. Skipping.</code></pre><pre><code>Using =
transmit_packets_no_timespec()</code></pre><pre><code>Start transmit_packet=
s_no_timespec()</code></pre><pre><code>Packet size: 8192 bytes</code></pre>=
<pre><code>--------------------------------------------</code></pre><pre><c=
ode>Transmitted packets: 12844561</code></pre><pre><code>Dropped packets: 0=
</code></pre><pre><code>PAUSE frames received: 0</code></pre><pre><code>PAU=
SE frames transmitted: 0</code></pre><pre><code>GPS lock lost events: 0</co=
de></pre><pre><code>Network RX packets: 5528620</code></pre><pre><code>Netw=
ork TX packets: 77280212</code></pre><pre><code>Network RX errors: 0</code>=
</pre><pre><code>Network TX errors: 0</code></pre><pre><code>Network RX dro=
pped: 0</code></pre><pre><code>Network TX dropped: 0</code></pre><pre><code=
>USRP TX overruns: 0</code></pre><pre><code>USRP TX underruns: 0</code></pr=
e><pre><code>USRP sequence errors: 0</code></pre><pre><code>GPS time sync: =
1136280963</code></pre><pre><code>GPS time sync errors: 0</code></pre><pre>=
<code>Packets Per Second (PPS): 98050</code></pre><pre><code>
// 2 function to simulate our packet transmission
// First Test Program 1)
void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_st=
reamer::sptr tx_stream, std::atomic&lt;bool&gt; &amp;gps_locked, double rat=
e) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D true;

    std::vector&lt;std::complex&lt;int16_t&gt;&gt; buffer(2048); // CRJ TEM=
P buffer(2048);

    std::cout &lt;&lt; &quot;Start transmit_packets_timespec()&quot; &lt;&l=
t; std::endl;
    std::cout &lt;&lt; &quot;Packet size: &quot; &lt;&lt; buffer.size() * s=
izeof(std::complex&lt;int16_t&gt;) &lt;&lt; &quot; bytes&quot; &lt;&lt; std=
::endl;

    // Get and print the maximum number of samples per packet
    size_t max_num_samps =3D tx_stream-&gt;get_max_num_samps();
    std::cout &lt;&lt; &quot;Max number of samples per packet: &quot; &lt;&=
lt; max_num_samps &lt;&lt; std::endl;

    // Initialize timestamp
    md.time_spec =3D uhd::time_spec_t(usrp-&gt;get_time_now().get_full_secs=
() + 1.0); // Start 1 second in the future

    while (1 /*!stop_logging.load()*/) {
        //if (gps_locked.load()) {
            //  md.time_spec =3D uhd::time_spec_t(usrp-&gt;get_time_now().g=
et_full_secs() + 1.0);
        //}

        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buffer.front(), buf=
fer.size(), md);

        if (num_tx_samps &lt; buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() / ra=
te);

        md.start_of_burst =3D false;
        //std::this_thread::sleep_for(std::chrono::milliseconds(5));
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream-&gt;send(&quot;&quot;, 0, md);
}

// Second Test Program 2)
void transmit_packets_no_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx=
_streamer::sptr tx_stream, std::atomic&lt;bool&gt; &amp;gps_locked, double =
rate) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D false; // No time specification

    std::vector&lt;std::complex&lt;int16_t&gt;&gt; buffer(2048);

    std::cout &lt;&lt; &quot;Start transmit_packets_no_timespec()&quot; &lt=
;&lt; std::endl;
    std::cout &lt;&lt; &quot;Packet size: &quot; &lt;&lt; buffer.size() * s=
izeof(std::complex&lt;int16_t&gt;) &lt;&lt; &quot; bytes&quot; &lt;&lt; std=
::endl;

    while (!stop_logging.load()) {
        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buffer.front(), buf=
fer.size(), md);

        if (num_tx_samps &lt; buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        md.start_of_burst =3D false;
        // Adjust the sleep time to control the packet rate
        // std::this_thread::sleep_for(std::chrono::milliseconds(1));
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream-&gt;send(&quot;&quot;, 0, md);
}</code></pre>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002b0b91061b301785--

--===============5630398997776514661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5630398997776514661==--
