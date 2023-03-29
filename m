Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AADC6CD1B1
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 07:37:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16AF4384590
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 01:37:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680068236; bh=IOJIRo3/m9WnwgEoED+I9JMVJQgDeGW1Vc2srE19LZM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vKcIyGJcNPJmh7OSJBuXsaMl8P4ceS5l1YRA3tURGaDzZyl/rwGPsR7/NV8hQVEzO
	 pLMGtjHXOfLb7Q9PjSBg77/CVXZiN2sGWGTHgN07tUU2F1escFi0AMI8inCstL/3cp
	 kMUcWXWTszjflXGYJ20A0V8drtzrIxO5lB17pDrny1yiSWzSYZX54mESUh9WkPFbmS
	 1NZapBct2LcTPUEnAzGUN6WcQQYZxcO9CUTL5Xm6ltl1WMJ/B9Wl1V4sGZ92vreT1y
	 QKA8MxhuK5ZObMNCCPsfRENNezcbx+JvgkofcWdYSiBE0eUI0Jpl5Iev9voX3umc9Q
	 ljg6UVeyEAnSQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FCEA38409B
	for <usrp-users@lists.ettus.com>; Wed, 29 Mar 2023 01:36:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680068187; bh=SMOmUtIrOgYC7CiNkNsAevqeLTdSOe7dQ9OrEP5kvs4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=DDsA0U3Gyygr/YFiqYHVnpm/K2CQEyDw9d0Lkk5QMzIS4B0+8yhSKfmofQ1LesGuk
	 8dX8tmpO7bBak6czXc6NmEwGuOmIETIfmIuTaCb07TRdAK/Et1VvRVkhVbhSjXSulz
	 xCsAQqVis2KsIp8mrRY8RU1OB67nlzOJTBI+Bw7GPTEWZgCCBndZHzL0m3YSXxmm95
	 EIy3qE3GHhw59iDPxNGzyMWjvvCHzkMYVM5zoQGYvMS/p6dAcQYHBGKMC0CHxVx1Xv
	 6bzOAd4glJKyqJOrDVAEb3fg0uKsW0/9vIvLgIuSi4NLFRH3PhuMWY94AcZTDNibEv
	 gokXG0O2k/JkQ==
Date: Wed, 29 Mar 2023 05:36:27 +0000
To: usrp-users@lists.ettus.com
From: soring@ayecka.com
Message-ID: <7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: bb6f0b97-382d-e31c-7f22-69bbd0c79436@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CVXALROKS3ARSS7Z4T5AKDLMVMQOEJMJ
X-Message-ID-Hash: CVXALROKS3ARSS7Z4T5AKDLMVMQOEJMJ
X-MailFrom: soring@ayecka.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVXALROKS3ARSS7Z4T5AKDLMVMQOEJMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6246971421585549534=="

This is a multi-part message in MIME format.

--===============6246971421585549534==
Content-Type: multipart/alternative;
 boundary="b1_7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve uploaded a sample of the signal I generate at:

https://mega.nz/file/jEEgnBZL#Kr-qjSUXlYDNBmuVfFvSOwy1CJCBelmxsSsnS2a4aDQ

The file is binary. The signal is sampled at 5.76 MHz. The signal is comp=
lex interleaved, 16 bits signed.=20

I gather the signal as it is transmitted to the B205.

I use:  linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.0-0-g5fac24=
6b

Gain 80 db. BW 10 MHz. lo-offset 3e6. Rate 5.76MHz.

I measure an output power of 3 dbm. Image rejection about 25 db only.\
\
I copied the code for the initialization of the USRP:

std::string device_args("num_send_frames=3D256");

    std::string subdev("A:A");

    std::string ant("TX/RX");

    std::string ref("external");

    std::cout << boost::format("Creating the usrp device with: %s...") % =
device_args << std::endl;

    uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(devi=
ce_args);

    // Lock mboard clocks

    std::cout << boost::format("Lock mboard clocks: %f") % ref << std::en=
dl;

    usrp->set_clock_source(ref);

    //always select the subdevice first, the channel mapping affects the =
other settings

    std::cout << boost::format("subdev set to: %f") % subdev << std::endl=
;

    usrp->set_tx_subdev_spec(subdev);

    std::cout << boost::format("Using Device: %s") % usrp->get_pp_string(=
) << std::endl;

    //set the sample rate

    if (rate <=3D 0.0) {

        std::cerr << "Please specify a valid sample rate" << std::endl;

        return \~0;

    }

    // set sample rate

    std::cout << boost::format("Setting TX Rate: %f Msps...") % (rate / 1=
e6) << std::endl;

    usrp->set_tx_rate(rate);

    std::cout << boost::format("Actual RX Rate: %f Msps...") % (usrp->get=
_tx_rate() / 1e6) << std::endl << std::endl;

    // set freq

    std::cout << boost::format("Setting RX Freq: %f MHz...") % (freq / 1e=
6) << std::endl;

    uhd::tune_request_t tune_request(freq,lo_offset);

    usrp->set_tx_freq(tune_request);

    std::cout << boost::format("Actual TX Freq: %f MHz...") % (usrp->get_=
tx_freq() / 1e6) << std::endl << std::endl;

    // set the rf gain

    std::cout << boost::format("Setting TX Gain: %f dB...") % gain << std=
::endl;

    usrp->set_tx_gain(gain);

    std::cout << boost::format("Actual TX Gain: %f dB...") % usrp->get_tx=
_gain() << std::endl << std::endl;

    // set the IF filter bandwidth

    std::cout << boost::format("Setting TX Bandwidth: %f MHz...") % (bw /=
 1e6) << std::endl;

    usrp->set_tx_bandwidth(bw);

    std::cout << boost::format("Actual TX Bandwidth: %f MHz...") % (usrp-=
>get_tx_bandwidth() / 1e6) << std::endl << std::endl;

    // set the antenna

    std::cout << boost::format("Setting TX Antenna: %s") % ant << std::en=
dl;

    usrp->set_tx_antenna(ant);

    std::cout << boost::format("Actual TX Antenna: %s") % usrp->get_tx_an=
tenna() << std::endl << std::endl;

    std::string cpu_format =3D"sc16";

    std::string wirefmt=3D"sc16";

    uhd::stream_args_t stream_args(cpu_format, wirefmt);

    std::vector<size_t> channel_nums;

    channel_nums.push_back(boost::lexical_cast<size_t>("0"));

    stream_args.channels             =3D channel_nums;

It would be great to know how to get it work properly.

Thank you,

Sorin

--b1_7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve uploaded a sample of the signal I generate at:</p><p>https:=
//mega.nz/file/jEEgnBZL#Kr-qjSUXlYDNBmuVfFvSOwy1CJCBelmxsSsnS2a4aDQ</p><p>T=
he file is binary. The signal is sampled at 5.76 MHz. The signal is complex=
 interleaved, 16 bits signed. </p><p>I gather the signal as it is transmitt=
ed to the B205.</p><p>I use:  linux; GNU C++ version 9.4.0; Boost_107100; U=
HD_4.4.0.0-0-g5fac246b</p><p>Gain 80 db. BW 10 MHz. lo-offset 3e6. Rate 5.7=
6MHz.</p><p>I measure an output power of 3 dbm. Image rejection about 25 db=
 only.<br><br>I copied the code for the initialization of the USRP:</p><p>s=
td::string device_args("num_send_frames=3D256");</p><p>    std::string subd=
ev("A:A");</p><p>    std::string ant("TX/RX");</p><p>    std::string ref("e=
xternal");</p><p><br></p><p>    std::cout &lt;&lt; boost::format("Creating =
the usrp device with: %s...") % device_args &lt;&lt; std::endl;</p><p>    u=
hd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(device_args=
);</p><p>    // Lock mboard clocks</p><p>    std::cout &lt;&lt; boost::form=
at("Lock mboard clocks: %f") % ref &lt;&lt; std::endl;</p><p>    usrp-&gt;s=
et_clock_source(ref);</p><p>    //always select the subdevice first, the ch=
annel mapping affects the other settings</p><p>    std::cout &lt;&lt; boost=
::format("subdev set to: %f") % subdev &lt;&lt; std::endl;</p><p>    usrp-&=
gt;set_tx_subdev_spec(subdev);</p><p>    std::cout &lt;&lt; boost::format("=
Using Device: %s") % usrp-&gt;get_pp_string() &lt;&lt; std::endl;</p><p>   =
 //set the sample rate</p><p>    if (rate &lt;=3D 0.0) {</p><p>        std:=
:cerr &lt;&lt; "Please specify a valid sample rate" &lt;&lt; std::endl;</p>=
<p>        return ~0;</p><p>    }</p><p>    // set sample rate</p><p>    st=
d::cout &lt;&lt; boost::format("Setting TX Rate: %f Msps...") % (rate / 1e6=
) &lt;&lt; std::endl;</p><p>    usrp-&gt;set_tx_rate(rate);</p><p>    std::=
cout &lt;&lt; boost::format("Actual RX Rate: %f Msps...") % (usrp-&gt;get_t=
x_rate() / 1e6) &lt;&lt; std::endl &lt;&lt; std::endl;</p><p>    // set fre=
q</p><p>    std::cout &lt;&lt; boost::format("Setting RX Freq: %f MHz...") =
% (freq / 1e6) &lt;&lt; std::endl;</p><p>    uhd::tune_request_t tune_reque=
st(freq,lo_offset);</p><p>    usrp-&gt;set_tx_freq(tune_request);</p><p>   =
 std::cout &lt;&lt; boost::format("Actual TX Freq: %f MHz...") % (usrp-&gt;=
get_tx_freq() / 1e6) &lt;&lt; std::endl &lt;&lt; std::endl;</p><p>    // se=
t the rf gain</p><p>    std::cout &lt;&lt; boost::format("Setting TX Gain: =
%f dB...") % gain &lt;&lt; std::endl;</p><p>    usrp-&gt;set_tx_gain(gain);=
</p><p>    std::cout &lt;&lt; boost::format("Actual TX Gain: %f dB...") % u=
srp-&gt;get_tx_gain() &lt;&lt; std::endl &lt;&lt; std::endl;</p><p>    // s=
et the IF filter bandwidth</p><p>    std::cout &lt;&lt; boost::format("Sett=
ing TX Bandwidth: %f MHz...") % (bw / 1e6) &lt;&lt; std::endl;</p><p>    us=
rp-&gt;set_tx_bandwidth(bw);</p><p>    std::cout &lt;&lt; boost::format("Ac=
tual TX Bandwidth: %f MHz...") % (usrp-&gt;get_tx_bandwidth() / 1e6) &lt;&l=
t; std::endl &lt;&lt; std::endl;</p><p>    // set the antenna</p><p>    std=
::cout &lt;&lt; boost::format("Setting TX Antenna: %s") % ant &lt;&lt; std:=
:endl;</p><p>    usrp-&gt;set_tx_antenna(ant);</p><p>    std::cout &lt;&lt;=
 boost::format("Actual TX Antenna: %s") % usrp-&gt;get_tx_antenna() &lt;&lt=
; std::endl &lt;&lt; std::endl;</p><p>    std::string cpu_format =3D"sc16";=
</p><p>    std::string wirefmt=3D"sc16";</p><p>    uhd::stream_args_t strea=
m_args(cpu_format, wirefmt);</p><p>    std::vector&lt;size_t&gt; channel_nu=
ms;</p><p>    channel_nums.push_back(boost::lexical_cast&lt;size_t&gt;("0")=
);</p><p>    stream_args.channels             =3D channel_nums;</p><p><br><=
/p><p>It would be great to know how to get it work properly.</p><p>Thank yo=
u,</p><p>Sorin</p><p><br></p>

--b1_7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw--

--===============6246971421585549534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6246971421585549534==--
