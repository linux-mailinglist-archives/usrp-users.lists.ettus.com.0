Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398D590C2B9
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 06:19:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0874A38539A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 00:19:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718684372; bh=GIenZuXnfpQ0jKkQ/2AKNyd3Qi21+IXHKl3avNPZ+dY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uB/vUAHf8Fhwo4N441NNLPOux92ffgta1ELL2wvY1yW5h55u1VTpIvDgJ9AN2zUwJ
	 Zfl4Bgm72FVa+06yHA+4yy7TtK8cOpdMmxL14jdVH2LZogW07Bbps+c0F8F/Ub+dpV
	 JdD6zvlUNw7HEDQ5Ik0rJUP4tlIPeQC/2IEVBPx7uPdnLjEQZOnoCdS53v6O+UQBpK
	 4kpmqv1g4/9PvDt4RGjS4VLbrUUUOSBHq90Py4EcEOHSc4vkyI5P040vuYhjbYDhoG
	 8JSwa8hWEOgLeRruTU+af6xrHgH+Ut11+OolrfGbDNKrJkEkOq9bTgvW8SUjh6oN7c
	 FA9hs1kapnMpA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE42638516A
	for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2024 00:18:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718684307; bh=vCeukQy58BRUWYv0xnSya/1TKe/g1m/mQ5jDoI0u/dc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YbIPJHmSO0G8k3KiBLS7lV3XzJEzaTGzEGT3eOcOCFu50EhXpywB5q6A5LUJD6VZA
	 GAgYUD315ZCrAZIIErE+EIgkbc3XNkwA60hOIFz3m44woOOcBBXyrv/cAOBi/Mry/1
	 NIvqNRpTPdvmqon5x6Zr6GP5wGiE5doO6afkdQMlFcaLY/NcXboj/CyhO2bP2iTttn
	 2mSr3Hj39oBBTW9d7217FqigR5xK+aAZ+jMtOBf708C/Aez087KVn6ZPaCB8GSUfLO
	 gxDR4f/gA7XEzC5pZiatQUQJn8sKlzPKpDa1uBrFQ0z8MzEh4RAfqHqC0ZdhzWofVq
	 HAVJs40g2Wqqg==
Date: Tue, 18 Jun 2024 04:18:26 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 4DRPKRPQO2ZQ3CWCEBXN5YYJELT7B6LO
X-Message-ID-Hash: 4DRPKRPQO2ZQ3CWCEBXN5YYJELT7B6LO
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4DRPKRPQO2ZQ3CWCEBXN5YYJELT7B6LO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6567619299034342692=="

This is a multi-part message in MIME format.

--===============6567619299034342692==
Content-Type: multipart/alternative;
 boundary="b1_35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Would you be able to provide some suggestions?  We need to keep precision=
 timing for transmission.  Neither of the two proof of concepts (POC) bel=
ow are meeting our needs.  Of course we are sending 2 packets due to lack=
 of jumbo frames.

We have 2048 samples (4 bytes per sample) we would have liked to send per=
 packet, or 2048/200E+6 =3D 10.24 us per packet or 97656 packets per seco=
nd.  It=E2=80=99s a continuous stream.  This doesn=E2=80=99t include pack=
et overhead.

The reason the Jumbo frame thing came up was because we were getting =E2=80=
=9CL=E2=80=9Ds (missed timing) when using the time spec, and =E2=80=9CU=E2=
=80=9D when not using timing spec, most likely due to 2 packets per trans=
mission instead of 1 jumbo frame.

I have provided POC of our test Tx program for 2 cases.  The first uses t=
iming spec, which doesn=E2=80=99t keep up.  The second was just to see ho=
w it would perform if there wasn=E2=80=99t a time spec.

This thread runs as the highest priority in Linux, and we have tuned acco=
rding to your documentation.

***First Test Program 1), PPS is \~95500,=C2=A0 but we get =E2=80=9CL=E2=80=
=9Ds constantly .***

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_
```

```
[INFO] [X300] X300 initialization sequence...
```

```
[INFO] [X300] Maximum frame size: 8000 bytes.
```

```
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
```

```
[INFO] [X300] Radio 1x clock: 200 MHz
```

```
Actual TX Rate: 200.000000 Msps
```

```
Actual TX Freq: 2400.000000 MHz
```

```
Actual TX Gain: 30.000000 dB
```

```
Actual TX Bandwidth: 16.000000 MHz
```

```
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
```

```
Using transmit_packets_timespec()
```

```
Start transmit_packets_timespec()
```

```
Packet size: 8192 bytes
```

```
--------------------------------------------
```

```
Transmitted packets: 30632386
```

```
Dropped packets: 9
```

```
PAUSE frames received: 0
```

```
PAUSE frames transmitted: 0
```

```
GPS lock lost events: 0
```

```
Network RX packets: 19733243
```

```
Network TX packets: 206298940
```

```
Network RX errors: 0
```

```
Network TX errors: 0
```

```
Network RX dropped: 0
```

```
Network TX dropped: 0
```

```
USRP TX overruns: 0
```

```
USRP TX underruns: 0
```

```
USRP sequence errors: 0
```

```
GPS time sync: 1136281795
```

```
GPS time sync errors: 0
```

```
Packets Per Second (PPS): 95428 =20
```

**Second Test Program 2), PPS is \~98000, Buffer Size is 8192 (without US=
RP overhead), occasional =E2=80=9CU=E2=80=9D**

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_
```

```
[INFO] [X300] X300 initialization sequence...
```

```
[INFO] [X300] Maximum frame size: 8000 bytes.
```

```
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
```

```
[INFO] [X300] Radio 1x clock: 200 MHz
```

```
Actual TX Rate: 200.000000 Msps
```

```
Actual TX Freq: 2400.000000 MHz
```

```
Actual TX Gain: 30.000000 dB
```

```
Actual TX Bandwidth: 16.000000 MHz
```

```
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
```

```
Using transmit_packets_no_timespec()
```

```
Start transmit_packets_no_timespec()
```

```
Packet size: 8192 bytes
```

```
--------------------------------------------
```

```
Transmitted packets: 12844561
```

```
Dropped packets: 0
```

```
PAUSE frames received: 0
```

```
PAUSE frames transmitted: 0
```

```
GPS lock lost events: 0
```

```
Network RX packets: 5528620
```

```
Network TX packets: 77280212
```

```
Network RX errors: 0
```

```
Network TX errors: 0
```

```
Network RX dropped: 0
```

```
Network TX dropped: 0
```

```
USRP TX overruns: 0
```

```
USRP TX underruns: 0
```

```
USRP sequence errors: 0
```

```
GPS time sync: 1136280963
```

```
GPS time sync errors: 0
```

```
Packets Per Second (PPS): 98050
```

```

// 2 function to simulate our packet transmission
// First Test Program 1)
void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_=
streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D true;

    std::vector<std::complex<int16_t>> buffer(2048); // CRJ TEMP buffer(2=
048);

    std::cout << "Start transmit_packets_timespec()" << std::endl;
    std::cout << "Packet size: " << buffer.size() * sizeof(std::complex<i=
nt16_t>) << " bytes" << std::endl;

    // Get and print the maximum number of samples per packet
    size_t max_num_samps =3D tx_stream->get_max_num_samps();
    std::cout << "Max number of samples per packet: " << max_num_samps <<=
 std::endl;

    // Initialize timestamp
    md.time_spec =3D uhd::time_spec_t(usrp->get_time_now().get_full_secs(=
) + 1.0); // Start 1 second in the future

    while (1 /*!stop_logging.load()*/) {
        //if (gps_locked.load()) {
            //  md.time_spec =3D uhd::time_spec_t(usrp->get_time_now().ge=
t_full_secs() + 1.0);
        //}

        size_t num_tx_samps =3D tx_stream->send(&buffer.front(), buffer.s=
ize(), md);

        if (num_tx_samps < buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() / =
rate);

        md.start_of_burst =3D false;
        //std::this_thread::sleep_for(std::chrono::milliseconds(5));
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream->send("", 0, md);
}

// Second Test Program 2)
void transmit_packets_no_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::=
tx_streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) =
{
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D false; // No time specification

    std::vector<std::complex<int16_t>> buffer(2048);

    std::cout << "Start transmit_packets_no_timespec()" << std::endl;
    std::cout << "Packet size: " << buffer.size() * sizeof(std::complex<i=
nt16_t>) << " bytes" << std::endl;

    while (!stop_logging.load()) {
        size_t num_tx_samps =3D tx_stream->send(&buffer.front(), buffer.s=
ize(), md);

        if (num_tx_samps < buffer.size()) {
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
    tx_stream->send("", 0, md);
}
```

--b1_35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Would you be able to provide some suggestions?  We need to keep precisio=
n timing for transmission.  Neither of the two proof of concepts (POC) belo=
w are meeting our needs.  Of course we are sending 2 packets due to lack of=
 jumbo frames.</p><p>We have 2048 samples (4 bytes per sample) we would hav=
e liked to send per packet, or 2048/200E+6 =3D 10.24 us per packet or 97656=
 packets per second.  It=E2=80=99s a continuous stream.  This doesn=
=E2=80=99t include packet overhead.</p><p>The reason the Jumbo frame thing =
came up was because we were getting =E2=80=9CL=E2=80=9Ds (missed timing) wh=
en using the time spec, and =E2=80=9CU=E2=80=9D when not using timing spec,=
 most likely due to 2 packets per transmission instead of 1 jumbo frame.</p=
><p>I have provided POC of our test Tx program for 2 cases.  The first uses=
 timing spec, which doesn=E2=80=99t keep up.  The second was just to see ho=
w it would perform if there wasn=E2=80=99t a time spec.</p><p>This thread r=
uns as the highest priority in Linux, and we have tuned according to your d=
ocumentation.</p><p><em><strong>First Test Program 1), PPS is ~95500,&nbsp;=
 but we get =E2=80=9CL=E2=80=9Ds constantly .</strong></em></p><pre><code>[=
INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_</code></pre><p=
re><code>[INFO] [X300] X300 initialization sequence...</code></pre><pre><co=
de>[INFO] [X300] Maximum frame size: 8000 bytes.</code></pre><pre><code>[IN=
FO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></pre><=
pre><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></pre><pre><code>Actu=
al TX Rate: 200.000000 Msps</code></pre><pre><code>Actual TX Freq: 2400.000=
000 MHz</code></pre><pre><code>Actual TX Gain: 30.000000 dB</code></pre><pr=
e><code>Actual TX Bandwidth: 16.000000 MHz</code></pre><pre><code>[WARNING]=
 [0/Radio#0] Attempting to set tick rate to 0. Skipping.</code></pre><pre><=
code>Using transmit_packets_timespec()</code></pre><pre><code>Start transmi=
t_packets_timespec()</code></pre><pre><code>Packet size: 8192 bytes</code><=
/pre><pre><code>--------------------------------------------</code></pre><p=
re><code>Transmitted packets: 30632386</code></pre><pre><code>Dropped packe=
ts: 9</code></pre><pre><code>PAUSE frames received: 0</code></pre><pre><cod=
e>PAUSE frames transmitted: 0</code></pre><pre><code>GPS lock lost events: =
0</code></pre><pre><code>Network RX packets: 19733243</code></pre><pre><cod=
e>Network TX packets: 206298940</code></pre><pre><code>Network RX errors: 0=
</code></pre><pre><code>Network TX errors: 0</code></pre><pre><code>Network=
 RX dropped: 0</code></pre><pre><code>Network TX dropped: 0</code></pre><pr=
e><code>USRP TX overruns: 0</code></pre><pre><code>USRP TX underruns: 0</co=
de></pre><pre><code>USRP sequence errors: 0</code></pre><pre><code>GPS time=
 sync: 1136281795</code></pre><pre><code>GPS time sync errors: 0</code></pr=
e><pre><code>Packets Per Second (PPS): 95428  </code></pre><p><br></p><p><s=
trong>Second Test Program 2), PPS is ~98000, Buffer Size is 8192 (without U=
SRP overhead), occasional =E2=80=9CU=E2=80=9D</strong></p><pre><code>[INFO]=
 [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_</code></pre><pre><c=
ode>[INFO] [X300] X300 initialization sequence...</code></pre><pre><code>[I=
NFO] [X300] Maximum frame size: 8000 bytes.</code></pre><pre><code>[INFO] [=
GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></pre><pre><=
code>[INFO] [X300] Radio 1x clock: 200 MHz</code></pre><pre><code>Actual TX=
 Rate: 200.000000 Msps</code></pre><pre><code>Actual TX Freq: 2400.000000 M=
Hz</code></pre><pre><code>Actual TX Gain: 30.000000 dB</code></pre><pre><co=
de>Actual TX Bandwidth: 16.000000 MHz</code></pre><pre><code>[WARNING] [0/R=
adio#0] Attempting to set tick rate to 0. Skipping.</code></pre><pre><code>=
Using transmit_packets_no_timespec()</code></pre><pre><code>Start transmit_=
packets_no_timespec()</code></pre><pre><code>Packet size: 8192 bytes</code>=
</pre><pre><code>--------------------------------------------</code></pre><=
pre><code>Transmitted packets: 12844561</code></pre><pre><code>Dropped pack=
ets: 0</code></pre><pre><code>PAUSE frames received: 0</code></pre><pre><co=
de>PAUSE frames transmitted: 0</code></pre><pre><code>GPS lock lost events:=
 0</code></pre><pre><code>Network RX packets: 5528620</code></pre><pre><cod=
e>Network TX packets: 77280212</code></pre><pre><code>Network RX errors: 0<=
/code></pre><pre><code>Network TX errors: 0</code></pre><pre><code>Network =
RX dropped: 0</code></pre><pre><code>Network TX dropped: 0</code></pre><pre=
><code>USRP TX overruns: 0</code></pre><pre><code>USRP TX underruns: 0</cod=
e></pre><pre><code>USRP sequence errors: 0</code></pre><pre><code>GPS time =
sync: 1136280963</code></pre><pre><code>GPS time sync errors: 0</code></pre=
><pre><code>Packets Per Second (PPS): 98050</code></pre><pre><code>
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

    std::cout &lt;&lt; "Start transmit_packets_timespec()" &lt;&lt; std::en=
dl;
    std::cout &lt;&lt; "Packet size: " &lt;&lt; buffer.size() * sizeof(std:=
:complex&lt;int16_t&gt;) &lt;&lt; " bytes" &lt;&lt; std::endl;

    // Get and print the maximum number of samples per packet
    size_t max_num_samps =3D tx_stream-&gt;get_max_num_samps();
    std::cout &lt;&lt; "Max number of samples per packet: " &lt;&lt; max_nu=
m_samps &lt;&lt; std::endl;

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
    tx_stream-&gt;send("", 0, md);
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

    std::cout &lt;&lt; "Start transmit_packets_no_timespec()" &lt;&lt; std:=
:endl;
    std::cout &lt;&lt; "Packet size: " &lt;&lt; buffer.size() * sizeof(std:=
:complex&lt;int16_t&gt;) &lt;&lt; " bytes" &lt;&lt; std::endl;

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
    tx_stream-&gt;send("", 0, md);
}</code></pre>

--b1_35m40TsyCBVtNI3Tl1s3YOzcYR3OOfyRJFBj70Ua5w0--

--===============6567619299034342692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6567619299034342692==--
