Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A4A919D8A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 04:49:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBF50385B8B
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 22:49:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719456552; bh=B7Mpfya6rsiDztgykje4xMzzfGmmxynOuTbuvvDQaXs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cAB3N4rEvTQK/QzVdmUngcH7e1Q9OSHI9nMAdYWWKqSk145/rH1zbNMQJ6nvMIbkD
	 EZCGzkl6vDb37X6J1lG4hfs8zSexIDM3u6zF2Ec3SqXZEoiYfrof80NH20I4Ns4Sdc
	 ug/6JUWezMwxFupV+v0ZyMGDNDo7ct8cv5xsJCGRlmKQkRSGSyuODzo1Dee56F6SA0
	 uveaFr1JKecOXDHS+QbFDSlKcrfPu80Ee6A/a8Ot9iBYUpiMvMHlulZyBkHX11dmHO
	 FLwDL099txGfUWcz/R98sWiLw2IPBCNo0gqFKlwp6MK69AR1LQ7x/DEk0v9eq2cQMe
	 /4jEzynoKYdEg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F6FD385AC8
	for <usrp-users@lists.ettus.com>; Wed, 26 Jun 2024 22:48:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719456512; bh=1Rj2/XrFExQjfIk0DfvtzOj/MZ6TFn4zppVGnjxnMCs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=v+nVMAgOXhR8L5J3rej0S8hiDQ3ZCOdHi9poIsmo8BRgDptfhtfUgI0zOCLgXoJbn
	 zHCPazEP78RCl3sf0OwrIu/ymwWa43i3XrTG4qovYQSkHMufwg7pfcPlAfD3L/zXVr
	 jQ5fUGmrhJDLQ8RrS0mOf9pshKc0Z52Xq/97fhZJiLvvTpEUPBPb6H/pPV1PwxZ1W2
	 FncGwBH468bUPPUYK33f9u0A7Nju7C9nZ3GlBuSY5yY/i29HD8GUCB9LRrZIhZj6Oj
	 4giZU40I+pN5PNXcoAnhPTQUDMZaLtIeUMlI337XJIsD3P37UOuRq1Mx9W0Hoj055U
	 PzWfbT1yd6P+Q==
Date: Thu, 27 Jun 2024 02:48:32 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jo1NaahJt=MiA4w97-3Yihenq5sJeAa=xNRQJJf=_gug@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ECSTTMLIJIS6G2PV3GK5QL236IIX6N6R
X-Message-ID-Hash: ECSTTMLIJIS6G2PV3GK5QL236IIX6N6R
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECSTTMLIJIS6G2PV3GK5QL236IIX6N6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1108634388246941110=="

This is a multi-part message in MIME format.

--===============1108634388246941110==
Content-Type: multipart/alternative;
 boundary="b1_qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I appreciate the response.  I previously made all of those changes (excep=
t bios, DPDK, and Sprectre).  In addition, I have MTU at 9000.  I just re=
-verified.

I=E2=80=99m still getting the U=E2=80=99s.=20

So we could have the same common code as a starting point, I modified you=
r tx_timed_samples.cpp provided below so you can reproduce the problem.

Here are the changes:

* Sends continuously (instead of some a set number of samples)

* Data is sc16 and not fc32

* Data rate is 200e6 SPS instead of a much lower value

```


//
// Copyright 2010-2011,2014 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/utils/safe_main.hpp>
#include <uhd/utils/thread.hpp>
#include <boost/format.hpp>
#include <boost/program_options.hpp>
#include <boost/thread/thread.hpp>
#include <complex>
#include <iostream>

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
//        ("args", po::value<std::string>(&args)->default_value(""), "sin=
gle uhd device address args")
        ("args", po::value<std::string>(&args)->default_value("type=3Dx30=
0,addr=3D192.168.40.2"), "single uhd device address args")
        ("wire", po::value<std::string>(&wire)->default_value(""), "the o=
ver the wire type, sc16, sc8, etc")
        ("secs", po::value<double>(&seconds_in_future)->default_value(1.5=
), "number of seconds in the future to transmit")
        ("nsamps", po::value<size_t>(&total_num_samps)->default_value(100=
00), "total number of samples to transmit")
//        ("rate", po::value<double>(&rate)->default_value(100e6/16), "ra=
te of outgoing samples")
        ("rate", po::value<double>(&rate)->default_value(200e6), "rate of=
 outgoing samples")
        ("ampl", po::value<float>(&ampl)->default_value(float(0.3)), "amp=
litude of each sample")
        ("dilv", "specify to disable inner-loop verbose")
    ;
    // clang-format on
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    // print the help message
    if (vm.count("help")) {
        std::cout << boost::format("UHD TX Timed Samples %s") % desc << s=
td::endl;
        return ~0;
    }

    bool verbose =3D vm.count("dilv") =3D=3D 0;

    // create a usrp device
    std::cout << std::endl;
    std::cout << boost::format("Creating the usrp device with: %s...") % =
args
              << std::endl;
    uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args=
);
    std::cout << boost::format("Using Device: %s") % usrp->get_pp_string(=
) << std::endl;

    // set the tx sample rate
    std::cout << boost::format("Setting TX Rate: %f Msps...") % (rate / 1=
e6) << std::endl;
    usrp->set_tx_rate(rate);
    std::cout << boost::format("Actual TX Rate: %f Msps...") % (usrp->get=
_tx_rate() / 1e6)
              << std::endl
              << std::endl;

    std::cout << boost::format("Setting device timestamp to 0...") << std=
::endl;
    usrp->set_time_now(uhd::time_spec_t(0.0));

    // create a transmit streamer
//    uhd::stream_args_t stream_args("fc32", wire); // complex floats
    uhd::stream_args_t stream_args("sc16", "sc16");
    uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args)=
;

    // allocate buffer with data to send
//    std::vector<std::complex<float>> buff(tx_stream->get_max_num_samps(=
), std::complex<float>(ampl, ampl));
    typedef uint16_t sample_t;    // Either the I or Q portion of an IQ s=
ample.
    std::vector<std::complex<sample_t>> buff(tx_stream->get_max_num_samps=
(), std::complex<sample_t>(ampl * 32767, ampl * 32767));

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
        size_t num_tx_samps =3D tx_stream->send(&buff.front(), buff.size(=
), md);

        if (num_tx_samps < buff.size()) {
            std::cerr << "Send timeout..." << std::endl;
        }

        // do not use time spec for subsequent packets
        md.has_time_spec =3D false;
    }
#else
    size_t num_acc_samps =3D 0; // number of accumulated samples
    while (num_acc_samps < total_num_samps) {
        size_t samps_to_send =3D std::min(total_num_samps - num_acc_samps=
, buff.size());

        // send a single packet
        size_t num_tx_samps =3D tx_stream->send(&buff.front(), samps_to_s=
end, md, timeout);

        // do not use time spec for subsequent packets
        md.has_time_spec =3D false;

        if (num_tx_samps < samps_to_send)
            std::cerr << "Send timeout..." << std::endl;
        if (verbose)
            std::cout << boost::format("Sent packet: %u samples") % num_t=
x_samps
                      << std::endl;

        num_acc_samps +=3D num_tx_samps;
    }
#endif

    // send a mini EOB packet
    md.end_of_burst =3D true;
    tx_stream->send("", 0, md);

    std::cout << std::endl << "Waiting for async burst ACK... " << std::f=
lush;
    uhd::async_metadata_t async_md;
    bool got_async_burst_ack =3D false;
    // loop through all messages for the ACK packet (may have underflow m=
essages in queue)
    while (not got_async_burst_ack and tx_stream->recv_async_msg(async_md=
, timeout)) {
        got_async_burst_ack =3D
            (async_md.event_code =3D=3D uhd::async_metadata_t::EVENT_CODE=
_BURST_ACK);
    }
    std::cout << (got_async_burst_ack ? "success" : "fail") << std::endl;

    // finished
    std::cout << std::endl << "Done!" << std::endl << std::endl;

    return EXIT_SUCCESS;
}
```

--b1_qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I appreciate the response.  I previously made all of those c=
hanges (except bios, DPDK, and Sprectre).  In addition, I have MTU at 900=
0.  I just re-verified.</p><p>I=E2=80=99m still getting the U=E2=80=99s. =
</p><p>So we could have the same common code as a starting point, I modif=
ied your tx_timed_samples.cpp provided below so you can reproduce the pro=
blem.</p><p>Here are the changes:</p><ul><li><p>Sends continuously (inste=
ad of some a set number of samples)</p></li><li><p>Data is sc16 and not f=
c32</p></li><li><p>Data rate is 200e6 SPS instead of a much lower value</=
p></li></ul><pre><code>

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
<br></code></pre>


--b1_qCqJEY4F7HzdFF5RxThVbJeKcQbpU2qs58QI1vdxzI--

--===============1108634388246941110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1108634388246941110==--
