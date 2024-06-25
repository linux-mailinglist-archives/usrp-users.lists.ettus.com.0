Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A85A915B8E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 03:18:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED2B83814AE
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jun 2024 21:18:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719278295; bh=oC+auTS637SfghZVnLAYtv/terLh8N4wE8zfo3B1fT8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IcoZYU6xxiFGI0PwH52aEhYYWYnIaxNjtmVzp2MGupdaibLt5T4hd7pbkrsIHwvbp
	 MisuG2J7DbRSko3O5CpVP0uThX69S4NWhJPphctZ5rOPQfeSmIRIcNQC/qT2dYKZQZ
	 Toh6TBUOrmjQ4oglm0QbuI97IX+ZHyayAJNwdgDPFT3gEo90hZmL3xVHIQ1NaFY1Ut
	 x+H2IbhSJHrM9b7Ifh+BF+JNaWtyrxcpc+HDN97nLMQDdu2t7QNpQaRsWZ0xeoh9KV
	 vKp84kGTmizr8NsYdBc/ThjjNtNClFIt3nUoDoBeIJ4DX+o6cOJy4amEJyUU1czC9y
	 emXXXTGgwsjjA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D0963811AF
	for <usrp-users@lists.ettus.com>; Mon, 24 Jun 2024 21:17:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719278258; bh=DbkuF0PdSKsiP5VH1GPxMShsMbjlgpke4gwx2mJnvWA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=p+9SEpFV9+Ftp93c+29AMQWvNguK957faQJDfuS6xzDs1edRlzf8dzw1tpEEp9a7e
	 jtAUIicQv5uB3rtBc4+Hfds3L9FfhjVqf4ccTUrsfSl0KTneuRD9i02L8PAykAbaO2
	 6wW2gE8Je2KykQf55WuYeGezZx5ApoMErxaxh0LJ/qAz06+0Z86zUmoYkJc6LJV2zr
	 hpo9OziMgNOE1DagGmALBgsZ70/B1HSESFxGsKZO6PH6ezmACvROFmDKDq3f+TpGsc
	 KvgvErLt/aZ6yuZPzrDXz4kZueF6gT4UmqllX6DDd7bQ1lWM6eNhivCsBsQumWhcyT
	 8DglkzP3/dZnQ==
Date: Tue, 25 Jun 2024 01:17:38 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jpd5-uZMS2DrH03JetcXvvhOnEaitooJX2jkdATpp83A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2MCHG77SP5JRGIQZYUUS4YXSFBIL4IGP
X-Message-ID-Hash: 2MCHG77SP5JRGIQZYUUS4YXSFBIL4IGP
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MCHG77SP5JRGIQZYUUS4YXSFBIL4IGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1767479284879976884=="

This is a multi-part message in MIME format.

--===============1767479284879976884==
Content-Type: multipart/alternative;
 boundary="b1_BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Wade,

I am now receiving =E2=80=9CU=E2=80=9D instead of =E2=80=9CL=E2=80=9D.  T=
hey don=E2=80=99t come out on the console that often, but it is =E2=80=9C=
bad=E2=80=9D if I see any.\
In addition, I did add a priority to the thread, you can see below (takes=
 on a value between 0.0-100.0).\
I also tried setting the buffer to 10\*1996.\
None of these efforts helped.\
Any suggestions on how I can get this to work without losing packets, or =
timing?  FYI usrp->set_tx_rate(200e6).\
(Below is code, below that is the console output)

```
// Main function to simulate packet transmission
void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_=
streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D true;

    // Attempt to set the thread priority
    bool success =3D uhd::set_thread_priority_safe(0.90, true);
    if (success) {
        std::cout << "uhd::set_thread_priority_safe::Thread priority succ=
essfully set." << std::endl;
    } else {
        std::cout << "uhd::set_thread_priority_safe::Failed to set thread=
 priority." << std::endl;
    }

    std::vector<std::complex<int16_t>> buffer(1996);=20

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

    while (true) {

        size_t num_tx_samps =3D tx_stream->send(&buffer.front(), buffer.s=
ize(), md);

        if (num_tx_samps < buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        //md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() =
/ rate);
        md.has_time_spec =3D false;

        md.start_of_burst =3D false;
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream->send("", 0, md);
}
```

**CONSOLE OUTPUT:**

sudo ./tx_timed_samples_perf=20
\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-=
1-ga9f0b4c7
\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 8000 bytes.
\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
\[INFO\] \[X300\] Radio 1x clock: 200 MHz
Actual TX Rate: 200.000000 Msps
Actual TX Freq: 1223.000003 MHz
Actual TX Gain: 20.000000 dB
Actual TX Bandwidth: 200.000000 MHz
\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
Using transmit_packets_timespec()
uhd::set_thread_priority_safe::Thread priority successfully set.
Start transmit_packets_timespec()
Packet size: 7984 bytes
Max number of samples per packet: 1996
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU

--b1_BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Wade,</p><p>I am now receiving =E2=80=9CU=E2=80=9D instead of =E2=80=
=9CL=E2=80=9D.  They don=E2=80=99t come out on the console that often, bu=
t it is =E2=80=9Cbad=E2=80=9D if I see any.<br>In addition, I did add a p=
riority to the thread, you can see below (takes on a value between 0.0-10=
0.0).<br>I also tried setting the buffer to 10*1996.<br>None of these eff=
orts helped.<br>Any suggestions on how I can get this to work without los=
ing packets, or timing?  FYI usrp-&gt;set_tx_rate(200e6).<br>(Below is co=
de, below that is the console output)</p><pre><code>// Main function to s=
imulate packet transmission
void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_=
streamer::sptr tx_stream, std::atomic&lt;bool&gt; &amp;gps_locked, double=
 rate) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D true;

    // Attempt to set the thread priority
    bool success =3D uhd::set_thread_priority_safe(0.90, true);
    if (success) {
        std::cout &lt;&lt; "uhd::set_thread_priority_safe::Thread priorit=
y successfully set." &lt;&lt; std::endl;
    } else {
        std::cout &lt;&lt; "uhd::set_thread_priority_safe::Failed to set =
thread priority." &lt;&lt; std::endl;
    }

    std::vector&lt;std::complex&lt;int16_t&gt;&gt; buffer(1996);=20

    std::cout &lt;&lt; "Start transmit_packets_timespec()" &lt;&lt; std::=
endl;
    std::cout &lt;&lt; "Packet size: " &lt;&lt; buffer.size() * sizeof(st=
d::complex&lt;int16_t&gt;) &lt;&lt; " bytes" &lt;&lt; std::endl;

    // Get and print the maximum number of samples per packet
    size_t max_num_samps =3D tx_stream-&gt;get_max_num_samps();
    std::cout &lt;&lt; "Max number of samples per packet: " &lt;&lt; max_=
num_samps &lt;&lt; std::endl;

    // Initialize timestamp
    md.time_spec =3D uhd::time_spec_t(usrp-&gt;get_time_now().get_full_se=
cs() + 1.0); // Start 1 second in the future

    while (true) {

        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buffer.front(), b=
uffer.size(), md);

        if (num_tx_samps &lt; buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        //md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() =
/ rate);
        md.has_time_spec =3D false;

        md.start_of_burst =3D false;
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream-&gt;send("", 0, md);
}</code></pre><p><strong>CONSOLE OUTPUT:</strong>
<br></p><p>sudo ./tx_timed_samples_perf=20
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-1-ga=
9f0b4c7
[INFO] [X300] X300 initialization sequence...

[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [X300] Radio 1x clock: 200 MHz
Actual TX Rate: 200.000000 Msps
Actual TX Freq: 1223.000003 MHz
Actual TX Gain: 20.000000 dB
Actual TX Bandwidth: 200.000000 MHz
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Using transmit_packets_timespec()
uhd::set_thread_priority_safe::Thread priority successfully set.
Start transmit_packets_timespec()
Packet size: 7984 bytes
Max number of samples per packet: 1996
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU</p>


--b1_BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU--

--===============1767479284879976884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1767479284879976884==--
