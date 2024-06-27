Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 033BC919DBB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 05:14:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7B8A385B8B
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 23:13:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719458039; bh=ozvb7icf42BKt5s1kvP7XutfmVo1zgtdS1xFRglgPBQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Mf0L497sj6MZUZ6sKg5TUK4/I1D7SoQCXJlo6L8gQgZc96XWxUVdRpm6m7PFwydv5
	 YrxAlNV/+zGjksPPkvhdvR+BKqJ5COlLpW9aQ5K94Z6mMS8dlf3WOmUIcFD7QSitSq
	 Hj6qBMuf0G5eugwbGjxdvjTfzzvs8aKG0sJpUNnyZHQAvvGoQRg/OVox6qPfWMImNt
	 Oh/gNzeA4id+Qz1VzSvSe22sw1J7k5qmr3xJN28PZGlzJyvk0Q9oJvtsH69C/IrqY3
	 xYw8Wv0/aBZBkl9wUnOLscY3tUG3gbWG9QxMiFL1m8RQjo8Mf/Ejs5oWywo82ouzvI
	 s9K9GHROshduA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 90E5F3858AF
	for <usrp-users@lists.ettus.com>; Wed, 26 Jun 2024 23:13:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ONMGaWEZ";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4463be6230cso3201711cf.0
        for <usrp-users@lists.ettus.com>; Wed, 26 Jun 2024 20:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719457999; x=1720062799; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2k48tYAlUdtM55I5MEaefRFNtpwvhLLLlEX4VQH1ao=;
        b=ONMGaWEZoGgk7JlJWOGpVX7lKqzA03rjxlz5NxgwQEAQ57ehNxQ/6/2pSZg+nSkQdy
         A4m25VtHmAkNTgiq7yHZ7ItvZqIBn7D3fUx42NcOqaZiez4PLcyQyZR08t/x8d6gnrR2
         3hvvXXbc02QYByW3zbwa5cHVbNu/QkGvkjHdPDaKXLPpmt10ZouopjgC2Ijq5F2cbr7D
         c2BQWATe5Q3Q3PqI3xQv3si1GEg/hgnib2WwNyYorsOIlcUqs4avQRFCLRU53B22BxzD
         xLb1SubZVYnWds2JPgdfjw2D6qpcbhdFkQ4244820Lf/1nGeMC0PcRIzQ/IXq/0PtjdC
         UXGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719457999; x=1720062799;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q2k48tYAlUdtM55I5MEaefRFNtpwvhLLLlEX4VQH1ao=;
        b=OItW+nZC7gfx/O/IiVHL1n65mF/DDIGpdbk3k7H51bpZXx2Ei1Qtma0hGl7uACG8eG
         stBtNXUXCwIU7fMvLM2Kqez24GoHnFgoaTDoxjSYta+GyM4E4XwOJGbxVv2MIgnZleCR
         3KVZSuyLte8G8rC6BNs1UM+tEemhW8EIIqsHWao70WBSpBcve3LqnS1ukBK12lh1WT0h
         7fMzhzQVPN5WK/QiEZ+BRQ50FVkOwdd1d9rU7R908z5dGxSsw08EIGyOvyHxGAi71pLd
         3yosnDJjv4C5+JfkfETkeR0B8gp4EdhOjhq4mvnHwjh+30OvuEKc/jPrUXZ2fZDDETzi
         1O7A==
X-Gm-Message-State: AOJu0YyTr799CU4fA7eND9ODHAMIwOyaI7NRjjNr4hUCPD94qGsWxauy
	ZuBtrtSKhBrRDqEjEH11KnmMxQs3ofZB5O33W/dxosQKn0cl3Q9fiZSsIQ==
X-Google-Smtp-Source: AGHT+IGNSNU1CzQ27O3cUsPwfSp4DV71G5Jl54WUm8+hP9diUw13+H4qzQV6AUXKXn8fqleCZV+O3Q==
X-Received: by 2002:a05:622a:28f:b0:43e:3bb7:864d with SMTP id d75a77b69052e-444d939fed8mr127478351cf.61.1719457998650;
        Wed, 26 Jun 2024 20:13:18 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-44641f021f6sm1827571cf.50.2024.06.26.20.13.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 20:13:18 -0700 (PDT)
Message-ID: <97a1f439-6322-47c6-bfe6-a71c4a78c504@gmail.com>
Date: Wed, 26 Jun 2024 23:13:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com>
Message-ID-Hash: H6VI4WCKI6M6TR437FSZ6EHQF4QWCRHR
X-Message-ID-Hash: H6VI4WCKI6M6TR437FSZ6EHQF4QWCRHR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H6VI4WCKI6M6TR437FSZ6EHQF4QWCRHR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5778444014138210534=="

This is a multi-part message in MIME format.
--===============5778444014138210534==
Content-Type: multipart/alternative;
 boundary="------------BTz5RJzHVvCioIGRi6g7q6CI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BTz5RJzHVvCioIGRi6g7q6CI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/06/2024 22:48, cjohnson@serranosystems.com wrote:
>
> Hi,
>
> I appreciate the response. I previously made all of those changes=20
> (except bios, DPDK, and Sprectre). In addition, I have MTU at 9000. I=20
> just re-verified.
>
I don't *think* the 2974 SOM embedded computer has the type of interface=20
that would be supported by DPDK, but I could
 =C2=A0 be wrong.


> I=E2=80=99m still getting the U=E2=80=99s.
>
I think the basic problem is that 4-core i7 on that board is now a=20
9-year-old design, and maxes out at 2.8GHz clock
 =C2=A0 frequency, and it just doesn't have enough grunt to sustain 200e6=
 SPS.

I think the MTU issue is a red-herring.=C2=A0=C2=A0 The packet-overhead d=
ifference=20
between 9000 and 8000 MTU is very small
 =C2=A0 (about 0.1% using a rough number of 40 bytes of packet overhead).=
=C2=A0=C2=A0=20
The interrupt-load difference would be
 =C2=A0 about 12.5%, except that would be a naive over-estimate given tha=
t=20
the 10Gig NIC subsystem almost certainly
 =C2=A0 does a lot of interrupt aggregation, etc.


> So we could have the same common code as a starting point, I modified=20
> your tx_timed_samples.cpp provided below so you can reproduce the probl=
em.
>
> Here are the changes:
>
>  *
>
>     Sends continuously (instead of some a set number of samples)
>
>  *
>
>     Data is sc16 and not fc32
>
>  *
>
>     Data rate is 200e6 SPS instead of a much lower value
>
> |// // Copyright 2010-2011,2014 Ettus Research LLC // Copyright 2018=20
> Ettus Research, a National Instruments Company // //=20
> SPDX-License-Identifier: GPL-3.0-or-later // #include=20
> <uhd/usrp/multi_usrp.hpp> #include <uhd/utils/safe_main.hpp> #include=20
> <uhd/utils/thread.hpp> #include <boost/format.hpp> #include=20
> <boost/program_options.hpp> #include <boost/thread/thread.hpp>=20
> #include <complex> #include <iostream> namespace po =3D=20
> boost::program_options; int UHD_SAFE_MAIN(int argc, char* argv[]) { //=20
> variables to be set by po std::string args; std::string wire; double=20
> seconds_in_future; size_t total_num_samps; double rate; float ampl; //=20
> setup the program options po::options_description desc("Allowed=20
> options"); // clang-format off desc.add_options() ("help", "help=20
> message") // ("args",=20
> po::value<std::string>(&args)->default_value(""), "single uhd device=20
> address args") ("args",=20
> po::value<std::string>(&args)->default_value("type=3Dx300,addr=3D192.16=
8.40.2"),=20
> "single uhd device address args") ("wire",=20
> po::value<std::string>(&wire)->default_value(""), "the over the wire=20
> type, sc16, sc8, etc") ("secs",=20
> po::value<double>(&seconds_in_future)->default_value(1.5), "number of=20
> seconds in the future to transmit") ("nsamps",=20
> po::value<size_t>(&total_num_samps)->default_value(10000), "total=20
> number of samples to transmit") // ("rate",=20
> po::value<double>(&rate)->default_value(100e6/16), "rate of outgoing=20
> samples") ("rate", po::value<double>(&rate)->default_value(200e6),=20
> "rate of outgoing samples") ("ampl",=20
> po::value<float>(&ampl)->default_value(float(0.3)), "amplitude of each=20
> sample") ("dilv", "specify to disable inner-loop verbose") ; //=20
> clang-format on po::variables_map vm;=20
> po::store(po::parse_command_line(argc, argv, desc), vm);=20
> po::notify(vm); // print the help message if (vm.count("help")) {=20
> std::cout << boost::format("UHD TX Timed Samples %s") % desc <<=20
> std::endl; return ~0; } bool verbose =3D vm.count("dilv") =3D=3D 0; //=20
> create a usrp device std::cout << std::endl; std::cout <<=20
> boost::format("Creating the usrp device with: %s...") % args <<=20
> std::endl; uhd::usrp::multi_usrp::sptr usrp =3D=20
> uhd::usrp::multi_usrp::make(args); std::cout << boost::format("Using=20
> Device: %s") % usrp->get_pp_string() << std::endl; // set the tx=20
> sample rate std::cout << boost::format("Setting TX Rate: %f Msps...")=20
> % (rate / 1e6) << std::endl; usrp->set_tx_rate(rate); std::cout <<=20
> boost::format("Actual TX Rate: %f Msps...") % (usrp->get_tx_rate() /=20
> 1e6) << std::endl << std::endl; std::cout << boost::format("Setting=20
> device timestamp to 0...") << std::endl;=20
> usrp->set_time_now(uhd::time_spec_t(0.0)); // create a transmit=20
> streamer // uhd::stream_args_t stream_args("fc32", wire); // complex=20
> floats uhd::stream_args_t stream_args("sc16", "sc16");=20
> uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);=20
> // allocate buffer with data to send //=20
> std::vector<std::complex<float>> buff(tx_stream->get_max_num_samps(),=20
> std::complex<float>(ampl, ampl)); typedef uint16_t sample_t; // Either=20
> the I or Q portion of an IQ sample.=20
> std::vector<std::complex<sample_t>>=20
> buff(tx_stream->get_max_num_samps(), std::complex<sample_t>(ampl *=20
> 32767, ampl * 32767)); // setup metadata for the first packet=20
> uhd::tx_metadata_t md; md.start_of_burst =3D false; md.end_of_burst =3D=
=20
> false; md.has_time_spec =3D true; md.time_spec =3D=20
> uhd::time_spec_t(seconds_in_future); // the first call to send() will=20
> block this many seconds before sending: const double timeout =3D=20
> seconds_in_future + 0.1; // timeout (delay before transmit + padding)=20
> #if 1 while (true) { size_t num_tx_samps =3D=20
> tx_stream->send(&buff.front(), buff.size(), md); if (num_tx_samps <=20
> buff.size()) { std::cerr << "Send timeout..." << std::endl; } // do=20
> not use time spec for subsequent packets md.has_time_spec =3D false; }=20
> #else size_t num_acc_samps =3D 0; // number of accumulated samples whil=
e=20
> (num_acc_samps < total_num_samps) { size_t samps_to_send =3D=20
> std::min(total_num_samps - num_acc_samps, buff.size()); // send a=20
> single packet size_t num_tx_samps =3D tx_stream->send(&buff.front(),=20
> samps_to_send, md, timeout); // do not use time spec for subsequent=20
> packets md.has_time_spec =3D false; if (num_tx_samps < samps_to_send)=20
> std::cerr << "Send timeout..." << std::endl; if (verbose) std::cout <<=20
> boost::format("Sent packet: %u samples") % num_tx_samps << std::endl;=20
> num_acc_samps +=3D num_tx_samps; } #endif // send a mini EOB packet=20
> md.end_of_burst =3D true; tx_stream->send("", 0, md); std::cout <<=20
> std::endl << "Waiting for async burst ACK... " << std::flush;=20
> uhd::async_metadata_t async_md; bool got_async_burst_ack =3D false; //=20
> loop through all messages for the ACK packet (may have underflow=20
> messages in queue) while (not got_async_burst_ack and=20
> tx_stream->recv_async_msg(async_md, timeout)) { got_async_burst_ack =3D=
=20
> (async_md.event_code =3D=3D uhd::async_metadata_t::EVENT_CODE_BURST_ACK=
);=20
> } std::cout << (got_async_burst_ack ? "success" : "fail") <<=20
> std::endl; // finished std::cout << std::endl << "Done!" << std::endl=20
> << std::endl; return EXIT_SUCCESS; } |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------BTz5RJzHVvCioIGRi6g7q6CI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/06/2024 22:48,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,</p>
      <p>I appreciate the response. I previously made all of those
        changes (except bios, DPDK, and Sprectre). In addition, I have
        MTU at 9000. I just re-verified.</p>
    </blockquote>
    I don't *think* the 2974 SOM embedded computer has the type of
    interface that would be supported by DPDK, but I could<br>
    =C2=A0 be wrong.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com">
      <p>I=E2=80=99m still getting the U=E2=80=99s. </p>
    </blockquote>
    I think the basic problem is that 4-core i7 on that board is now a
    9-year-old design, and maxes out at 2.8GHz clock<br>
    =C2=A0 frequency, and it just doesn't have enough grunt to sustain 20=
0e6
    SPS.<br>
    <br>
    I think the MTU issue is a red-herring.=C2=A0=C2=A0 The packet-overhe=
ad
    difference between 9000 and 8000 MTU is very small<br>
    =C2=A0 (about 0.1% using a rough number of 40 bytes of packet
    overhead).=C2=A0=C2=A0 The interrupt-load difference would be<br>
    =C2=A0 about 12.5%, except that would be a naive over-estimate given =
that
    the 10Gig NIC subsystem almost certainly<br>
    =C2=A0 does a lot of interrupt aggregation, etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com">
      <p>So we could have the same common code as a starting point, I
        modified your tx_timed_samples.cpp provided below so you can
        reproduce the problem.</p>
      <p>Here are the changes:</p>
      <ul>
        <li>
          <p>Sends continuously (instead of some a set number of
            samples)</p>
        </li>
        <li>
          <p>Data is sc16 and not fc32</p>
        </li>
        <li>
          <p>Data rate is 200e6 SPS instead of a much lower value</p>
        </li>
      </ul>
      <pre><code>

//
// Copyright 2010-2011,2014 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#include &lt;uhd/usrp/multi_usrp.hpp&gt;
#include &lt;uhd/utils/safe_main.hpp&gt;
#include &lt;uhd/utils/thread.hpp&gt;
#include &lt;boost/format.hpp&gt;
#include &lt;boost/program_options.hpp&gt;
#include &lt;boost/thread/thread.hpp&gt;
#include &lt;complex&gt;
#include &lt;iostream&gt;

namespace po =3D boost::program_options;

int UHD_SAFE_MAIN(int argc, char* argv[])
{
    // variables to be set by po
    std::string args;
    std::string wire;
    double seconds_in_future;
    size_t total_num_samps;
    double rate;
    float ampl;

    // setup the program options
    po::options_description desc("Allowed options");
    // clang-format off
    desc.add_options()
        ("help", "help message")
//        ("args", po::value&lt;std::string&gt;(&amp;args)-&gt;default_va=
lue(""), "single uhd device address args")
        ("args", po::value&lt;std::string&gt;(&amp;args)-&gt;default_valu=
e("type=3Dx300,addr=3D192.168.40.2"), "single uhd device address args")
        ("wire", po::value&lt;std::string&gt;(&amp;wire)-&gt;default_valu=
e(""), "the over the wire type, sc16, sc8, etc")
        ("secs", po::value&lt;double&gt;(&amp;seconds_in_future)-&gt;defa=
ult_value(1.5), "number of seconds in the future to transmit")
        ("nsamps", po::value&lt;size_t&gt;(&amp;total_num_samps)-&gt;defa=
ult_value(10000), "total number of samples to transmit")
//        ("rate", po::value&lt;double&gt;(&amp;rate)-&gt;default_value(1=
00e6/16), "rate of outgoing samples")
        ("rate", po::value&lt;double&gt;(&amp;rate)-&gt;default_value(200=
e6), "rate of outgoing samples")
        ("ampl", po::value&lt;float&gt;(&amp;ampl)-&gt;default_value(floa=
t(0.3)), "amplitude of each sample")
        ("dilv", "specify to disable inner-loop verbose")
    ;
    // clang-format on
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    // print the help message
    if (vm.count("help")) {
        std::cout &lt;&lt; boost::format("UHD TX Timed Samples %s") % des=
c &lt;&lt; std::endl;
        return ~0;
    }

    bool verbose =3D vm.count("dilv") =3D=3D 0;

    // create a usrp device
    std::cout &lt;&lt; std::endl;
    std::cout &lt;&lt; boost::format("Creating the usrp device with: %s..=
.") % args
              &lt;&lt; std::endl;
    uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args=
);
    std::cout &lt;&lt; boost::format("Using Device: %s") % usrp-&gt;get_p=
p_string() &lt;&lt; std::endl;

    // set the tx sample rate
    std::cout &lt;&lt; boost::format("Setting TX Rate: %f Msps...") % (ra=
te / 1e6) &lt;&lt; std::endl;
    usrp-&gt;set_tx_rate(rate);
    std::cout &lt;&lt; boost::format("Actual TX Rate: %f Msps...") % (usr=
p-&gt;get_tx_rate() / 1e6)
              &lt;&lt; std::endl
              &lt;&lt; std::endl;

    std::cout &lt;&lt; boost::format("Setting device timestamp to 0...") =
&lt;&lt; std::endl;
    usrp-&gt;set_time_now(uhd::time_spec_t(0.0));

    // create a transmit streamer
//    uhd::stream_args_t stream_args("fc32", wire); // complex floats
    uhd::stream_args_t stream_args("sc16", "sc16");
    uhd::tx_streamer::sptr tx_stream =3D usrp-&gt;get_tx_stream(stream_ar=
gs);

    // allocate buffer with data to send
//    std::vector&lt;std::complex&lt;float&gt;&gt; buff(tx_stream-&gt;get=
_max_num_samps(), std::complex&lt;float&gt;(ampl, ampl));
    typedef uint16_t sample_t;    // Either the I or Q portion of an IQ s=
ample.
    std::vector&lt;std::complex&lt;sample_t&gt;&gt; buff(tx_stream-&gt;ge=
t_max_num_samps(), std::complex&lt;sample_t&gt;(ampl * 32767, ampl * 3276=
7));

    // setup metadata for the first packet
    uhd::tx_metadata_t md;
    md.start_of_burst =3D false;
    md.end_of_burst   =3D false;
    md.has_time_spec  =3D true;
    md.time_spec      =3D uhd::time_spec_t(seconds_in_future);

    // the first call to send() will block this many seconds before sendi=
ng:
    const double timeout =3D
        seconds_in_future + 0.1; // timeout (delay before transmit + padd=
ing)

#if 1
    while (true) {
        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buff.front(), buf=
f.size(), md);

        if (num_tx_samps &lt; buff.size()) {
            std::cerr &lt;&lt; "Send timeout..." &lt;&lt; std::endl;
        }

        // do not use time spec for subsequent packets
        md.has_time_spec =3D false;
    }
#else
    size_t num_acc_samps =3D 0; // number of accumulated samples
    while (num_acc_samps &lt; total_num_samps) {
        size_t samps_to_send =3D std::min(total_num_samps - num_acc_samps=
, buff.size());

        // send a single packet
        size_t num_tx_samps =3D tx_stream-&gt;send(&amp;buff.front(), sam=
ps_to_send, md, timeout);

        // do not use time spec for subsequent packets
        md.has_time_spec =3D false;

        if (num_tx_samps &lt; samps_to_send)
            std::cerr &lt;&lt; "Send timeout..." &lt;&lt; std::endl;
        if (verbose)
            std::cout &lt;&lt; boost::format("Sent packet: %u samples") %=
 num_tx_samps
                      &lt;&lt; std::endl;

        num_acc_samps +=3D num_tx_samps;
    }
#endif

    // send a mini EOB packet
    md.end_of_burst =3D true;
    tx_stream-&gt;send("", 0, md);

    std::cout &lt;&lt; std::endl &lt;&lt; "Waiting for async burst ACK...=
 " &lt;&lt; std::flush;
    uhd::async_metadata_t async_md;
    bool got_async_burst_ack =3D false;
    // loop through all messages for the ACK packet (may have underflow m=
essages in queue)
    while (not got_async_burst_ack and tx_stream-&gt;recv_async_msg(async=
_md, timeout)) {
        got_async_burst_ack =3D
            (async_md.event_code =3D=3D uhd::async_metadata_t::EVENT_CODE=
_BURST_ACK);
    }
    std::cout &lt;&lt; (got_async_burst_ack ? "success" : "fail") &lt;&lt=
; std::endl;

    // finished
    std::cout &lt;&lt; std::endl &lt;&lt; "Done!" &lt;&lt; std::endl &lt;=
&lt; std::endl;

    return EXIT_SUCCESS;
}

</code></pre>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------BTz5RJzHVvCioIGRi6g7q6CI--

--===============5778444014138210534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5778444014138210534==--
