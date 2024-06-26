Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0769A9176ED
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 05:44:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D14453853E5
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 23:44:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719373464; bh=nJU64jvvo1njsuDuocWQs7ntS6e+TRyK3CpEtZNf8wU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=azon3n2W7sqeHYmQ8q6apmUUqHiUaDxOVRHbnw449hd2ypjMu4gwwhQ7lvxKQxQa4
	 h+rIi2INNaZOc2wZGnou8WnsEwB9u1usP9sGtS63RvDy8SzQhJQgT0vv6h38xmu1FP
	 aHn7yQdB7NRW40FjWj8Ck8PKkV4Jeg2HIq61pF24DRKIxtOeZVY+sEE/5KOBtJxuHq
	 qi/AJJStUKu3aV5FTF6ifNxH6ex7jFz23QcqXFvA6hM7VggFJEALSopodHv44seF/c
	 9R3SybjVxcJnKirx19ZG9wy/lOfR/GL+CCkZ+ulr2ni+P8ktkVRSoR0dGeagiJO6vg
	 cEC8eB5bCBfDA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id F3E473853E5
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 23:43:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="P0UjAIW+";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a6fd513f18bso545636366b.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 20:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719373437; x=1719978237; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mMyO+3SI+sPx5nLgoS5d7r3ZYd3sg82BR0OO/zf0E+k=;
        b=P0UjAIW+oZy+ApqvYHBJ1/oVlQ0H1HcN9XLdZulouWrPZu5uW/N78YauBbqetqf/f/
         ijHpSQemcvbawwFa5wdoR6Bhmw/xOisFrJw410gwYyKo/MjLDbMQSiqn7hkVrq6lFQYu
         78bjnIGpjZd3fnrgzaugQAhiSKSsQNMfwjzqG5MZtmC55q/XZY/ab2rfinCwGivEJ30u
         d+j2rCoSKRHfK4dlpRk/0PjgW4SKMvVkq3f85bgA2XVeEAIx9ZzQu50CmEwCiDVAWuf4
         C11MM5CxXPFBVwNdyYK8fVLVsv2H2js80UopThgMNF0USw5KQwZQkN33IkaDca3rKvkb
         5PSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719373437; x=1719978237;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mMyO+3SI+sPx5nLgoS5d7r3ZYd3sg82BR0OO/zf0E+k=;
        b=ilWEgN8pNqrf2w9wzRv+TyvL1fKQCHNHBvspwa2Iw1zY9tgtlHrrVAyOCiTuzG2+lx
         SCWjKVYjuj9ijz4imfIuvYVrjts0AVVSTVInHO/bU3J1zfRI7MYJVn8uoZNlnzt2JE9S
         k8ERPXrucwru7bapZ/A/ZkL1NMF2o+VTGYFdnI0OiER+WvLS3Y6f+2TFEdm2NxmfPPen
         mysgoReSIl9pbXiR42F95onBvdKVrpdLeWQ72IEQo4wrLO0tsMjqvwTYSP6KhVKf4Fjs
         HWLGomdO00Adz79L4Ku96f/mTfdRGX+zL3rRwrp7WnPzU4wPsjqhTVzafMVx/08KX9ZT
         XiJw==
X-Gm-Message-State: AOJu0Yy9IzumewpDllRnAcg30cMJNQJsdBofWozBs8FiBqsYFTfdgoRc
	t2n53muDSwUB2UtU/TAA/3sLIubvd+LjNJsFsOutgtTsb4hcuESwADcmqY0Ny6//NjmM4xPXagQ
	oZ9rBH4Tq93eQujRadmQXWjT0yHum0fa8fHRF/kW4auLLbfVn+3/YeQ==
X-Google-Smtp-Source: AGHT+IHxGZfj4EBRGaGdt4uCUEyzzy+DJfso1bowsldCqCB+7iLU2eYbdfzFC7F5m4fubB/mdUYW6tPpFP1Ls1swV3E=
X-Received: by 2002:a17:907:c5c4:b0:a70:7a10:de0b with SMTP id
 a640c23a62f3a-a727f79b78bmr189435566b.21.1719373436587; Tue, 25 Jun 2024
 20:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU@lists.ettus.com>
In-Reply-To: <BaB1RFmtvUcDD6ALPNv6sI09WVwEFa2vHftD4r9zU@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 25 Jun 2024 22:43:40 -0500
Message-ID: <CAFche=jo1NaahJt=MiA4w97-3Yihenq5sJeAa=xNRQJJf=_gug@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: SXDJFIXCNJLORYGI3BCHPJVGWUTL66N5
X-Message-ID-Hash: SXDJFIXCNJLORYGI3BCHPJVGWUTL66N5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SXDJFIXCNJLORYGI3BCHPJVGWUTL66N5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3903933164245073985=="

--===============3903933164245073985==
Content-Type: multipart/alternative; boundary="000000000000ecaa2c061bc2d2a3"

--000000000000ecaa2c061bc2d2a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might need to make some tweaks to your system. Take a look at the
suggestions here:
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Wade

On Mon, Jun 24, 2024 at 8:18=E2=80=AFPM <cjohnson@serranosystems.com> wrote=
:

> Hi Wade,
>
> I am now receiving =E2=80=9CU=E2=80=9D instead of =E2=80=9CL=E2=80=9D. Th=
ey don=E2=80=99t come out on the console
> that often, but it is =E2=80=9Cbad=E2=80=9D if I see any.
> In addition, I did add a priority to the thread, you can see below (takes
> on a value between 0.0-100.0).
> I also tried setting the buffer to 10*1996.
> None of these efforts helped.
> Any suggestions on how I can get this to work without losing packets, or
> timing? FYI usrp->set_tx_rate(200e6).
> (Below is code, below that is the console output)
>
> // Main function to simulate packet transmission
> void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_=
streamer::sptr tx_stream, std::atomic<bool> &gps_locked, double rate) {
>     uhd::tx_metadata_t md;
>     md.start_of_burst =3D true;
>     md.end_of_burst =3D false;
>     md.has_time_spec =3D true;
>
>     // Attempt to set the thread priority
>     bool success =3D uhd::set_thread_priority_safe(0.90, true);
>     if (success) {
>         std::cout << "uhd::set_thread_priority_safe::Thread priority succ=
essfully set." << std::endl;
>     } else {
>         std::cout << "uhd::set_thread_priority_safe::Failed to set thread=
 priority." << std::endl;
>     }
>
>     std::vector<std::complex<int16_t>> buffer(1996);
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
>     while (true) {
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
>         //md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() =
/ rate);
>         md.has_time_spec =3D false;
>
>         md.start_of_burst =3D false;
>     }
>
>     // Mark end of burst
>     md.end_of_burst =3D true;
>     tx_stream->send("", 0, md);
> }
>
> *CONSOLE OUTPUT:*
>
> sudo ./tx_timed_samples_perf [INFO] [UHD] linux; GNU C++ version 9.4.0;
> Boost_107100; UHD_4.6.0.0-1-ga9f0b4c7 [INFO] [X300] X300 initialization
> sequence... [INFO] [X300] Maximum frame size: 8000 bytes. [INFO] [GPS]
> Found an internal GPSDO: LC_XO, Firmware Rev 0.929a [INFO] [X300] Radio 1=
x
> clock: 200 MHz Actual TX Rate: 200.000000 Msps Actual TX Freq: 1223.00000=
3
> MHz Actual TX Gain: 20.000000 dB Actual TX Bandwidth: 200.000000 MHz
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping. Using
> transmit_packets_timespec() uhd::set_thread_priority_safe::Thread priorit=
y
> successfully set. Start transmit_packets_timespec() Packet size: 7984 byt=
es
> Max number of samples per packet: 1996
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ecaa2c061bc2d2a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You might need to make some tweaks to your system. Ta=
ke a look at the suggestions here:</div><div><a href=3D"https://kb.ettus.co=
m/USRP_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_H=
ost_Performance_Tuning_Tips_and_Tricks</a></div><div><br></div><div>Wade<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Jun 24, 2024 at 8:18=E2=80=AFPM &lt;<a href=3D"mailto:cjohns=
on@serranosystems.com">cjohnson@serranosystems.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Wade,</p><p>I am no=
w receiving =E2=80=9CU=E2=80=9D instead of =E2=80=9CL=E2=80=9D.  They don=
=E2=80=99t come out on the console that often, but it is =E2=80=9Cbad=E2=80=
=9D if I see any.<br>In addition, I did add a priority to the thread, you c=
an see below (takes on a value between 0.0-100.0).<br>I also tried setting =
the buffer to 10*1996.<br>None of these efforts helped.<br>Any suggestions =
on how I can get this to work without losing packets, or timing?  FYI usrp-=
&gt;set_tx_rate(200e6).<br>(Below is code, below that is the console output=
)</p><pre><code>// Main function to simulate packet transmission
void transmit_packets_timespec(uhd::usrp::multi_usrp::sptr usrp, uhd::tx_st=
reamer::sptr tx_stream, std::atomic&lt;bool&gt; &amp;gps_locked, double rat=
e) {
    uhd::tx_metadata_t md;
    md.start_of_burst =3D true;
    md.end_of_burst =3D false;
    md.has_time_spec =3D true;

    // Attempt to set the thread priority
    bool success =3D uhd::set_thread_priority_safe(0.90, true);
    if (success) {
        std::cout &lt;&lt; &quot;uhd::set_thread_priority_safe::Thread prio=
rity successfully set.&quot; &lt;&lt; std::endl;
    } else {
        std::cout &lt;&lt; &quot;uhd::set_thread_priority_safe::Failed to s=
et thread priority.&quot; &lt;&lt; std::endl;
    }

    std::vector&lt;std::complex&lt;int16_t&gt;&gt; buffer(1996);=20

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

    while (true) {

        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buffer.front(), buf=
fer.size(), md);

        if (num_tx_samps &lt; buffer.size()) {
            dropped_packets++;
        } else {
            transmitted_packets++;
        }

        //md.time_spec =3D md.time_spec + uhd::time_spec_t(buffer.size() / =
rate);
        md.has_time_spec =3D false;

        md.start_of_burst =3D false;
    }

    // Mark end of burst
    md.end_of_burst =3D true;
    tx_stream-&gt;send(&quot;&quot;, 0, md);
}</code></pre><p><strong>CONSOLE OUTPUT:</strong>
<br></p><p>sudo ./tx_timed_samples_perf=20
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-1-ga9f=
0b4c7
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

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ecaa2c061bc2d2a3--

--===============3903933164245073985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3903933164245073985==--
