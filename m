Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 118CF3F7F95
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 03:00:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03F4F38410B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 21:00:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="YIEfkeZo";
	dkim-atps=neutral
Received: from sonic304-10.consmr.mail.bf2.yahoo.com (sonic304-10.consmr.mail.bf2.yahoo.com [74.6.128.33])
	by mm2.emwd.com (Postfix) with ESMTPS id 7800A383D8D
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 20:59:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629939561; bh=cP39BPTm1uRxuTm4C5rpuGFBFeOia4WYL5aXSvZ4AZs=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=YIEfkeZoAS4JE9+OYhL2UyAKW8dm2fX6YJZBHAHSHL3zC/ZfSca4zsx0BupNV2pLVEa+GZ+2SxxeWD/ANKMVPhGtR7qe/Xljl61r8ayXQDLnTn/sveik4pgtKyjtQIP5fGKfuioqswAu/I4pbwRNJnpiXMp+fKbPatyA6fX0i9+HurPy2g0CUR7bhGRgQjTZVQ6T32+YabIQFNerIeMiwrUUlQgFiV96vBL35PJAwImG6HUXup6U8qarALkYp9uuGWcagjNStedSUNb7jdUf20ntDnR8Rl3XEiUkGb+RMwW4rbTSVz8SVQB9Zx92Yw0JppfgykCzisVPg6H4gxRBlQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629939561; bh=jCxYReKYP3b7c0Gegy6vQbg+DqUTf2o0lx8i+DBTvc/=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=kdrqNJzSYm0ylxz11979WvQk0ZBk56mQv3kGR5CkwLP/ujC6Yx04kl9D1TGa3eaegzPZa7fB6LbCLxwpvSIgp5TTj6JqW2ZQBSRj/MXFTNx9Q7Wc54ZOcoH4DLErsn3itVc2lUGswa8XE7nrb0MqoRCJ511Znju5h7n3ihzLqB1qhVuZPkU/1+0oWo1Ei2jGUbmcXWwfQzKZLhQTCe4N+St9PORKN2eqfyY03WlPSx6U0i3BTVRfcFaSAz0LFv60tvxLpyI3XblwfRp9CV2++7s2xjnJYS5MsspbKMT97N1oRoGgyd/ysdm906WFP4rWrXHdYgZy/gp27OxsTYx1DA==
X-YMail-OSG: mmkhALQVM1kdRQZr37nf1oezNn9jvd_eU3.O.r.Dox2uO82OswGDgfRiAdZ07un
 NRUEwx5xz9OEq5fEESbUdbs_.VBqlSja_uIvvYlSY2JpueIVRUFUEk6cdY2RToDqw0rd_wIGOYX9
 oFDoxcOJ.8fAWz0Q2ZILFsXxUr4CfqdPmJ7lFAs8Pf64vY4cjv.SUgKm30M5P.hbYuaNyAwZru3a
 o2UDedu7n_2jpyMqHHd9nCxd6HQMYWerIUrXF6Jo_RC6bG73KujL99VX2.Et.LTty20sbFACTtpA
 _n2FMtripgvl22RfxD2lAzbSXPAcd.nNQ_eIzhu.P9q7xvdYMXBR7vg3WOJ17br.XBHofhInlxZ.
 I9KD.DgdHiaYvpy0fQhVZNpY85y6ZUbDdlBCtk1uzYRMOySxzZDnfKLcEwz_a2ouio8E5LtXD3b3
 5dTXBqe5YCffMCjOnCYW6Mo_Cq0H2UF_Ns9pCwsHCTgmV13eVFyseIAvjk9N05IRgVNKAgYpE.vR
 TsIVeCGif0BZKLL3gNRAb.nhfmz4aKG.1SVDXXTQI66XzGQirf1AvXw9qLQ.bPH_9tChuhqk5uoA
 8fi272BHzBL0Ft.Y7C.VwMSoX6biZlDhPeCx0AK_ZDhfkPQVbcRy898IA_saWYKo4lMBUzs38zZ7
 vyvJ6zNJ6IutHFIgmGKudy1OmN0ZQw_W1KBjyLCckB7nLdw5_5gvLEkSVeeD5TjHVzr9ocy9y.j4
 kXlPoZ3lZL3nmFbOcVwAQ9Bi5RXcrxORmlePnEVeJycaJox6i0oplobcaFvf1ngaDHiu8AbbW5iq
 QS77jZm0xVuXxG5W5Pn9Fbw.9aP72Mfv8InEyjnzIa54cHdsuWfN7tWnwIkkMn_2NXqpj1oXLWpB
 AH8aQaY3LvtVXeLA.l726.5LrEpElFimUjhPnkgfRGAWCnNTCEuCE9uPNBvEjSkq0Zvgo_UkW.f1
 6.MAw1aDfUJzozUHNr1kn2d.b9BLWeswR9W5RCaIyJhGzKSIA0xk2KWysPWcT6GOP9EITpZwyNUX
 rhh5fWenjEjLyOiP6pFu9ixl7w1AtXrmJmZNCa27IQ2xY5c2e9FTbm4mYjYB7r2bozb.j.7aRXZS
 krUj7qAHLpZADVWum8QfreNc7mO5ItPNpoXHvvkUgsW3ifhDZr3ocBa3QFMKCCjIHOHZO_068pSV
 T1lm3tdzUAJ3GNxPIcKBYm98cpAMHf6jF6eGUaOv6tABnzJvEVcH3LIURXyyRjp2KadWKxeq0ivM
 2AQo6YlD2nkMNB0qGM3P8zNh2AcCu5sJfirY52CTABh78bEOQo25kOewNcfM_jQowUSzv2hI0M6K
 t2eono5F8le3hp950NSqUcPPXhl2HQUGFWE1rWqv71s9m15TdtEISg8HJ19Mzykdy8phtB_Jjhq0
 JtYfZbvcFBzg7MTGEMVmMmPgssu_A2U2xtvl5JntUuFFgR9ig72XKc1yyCRcuTf0c380bQIyFsSh
 OtiB.qwuPhWmMM6hKy5wcf0vjZr_GXBjIn965.ziJBOCq.gBwkvQWrE_4QcVI3dNX0qndmDbK3kA
 LE8RogffGSwETrHfuZycSlbaOwki8u4pnermlmiTllC9glxjrtGgZYw.ocpjM5O7ODt_chDeCEuY
 QJR8l0unbosvczglBmff2ilQhPtKAWxWYQM3niE2Re4B56LIibvM_dQzG321TyQsCVyUe2.e.7N1
 e..cAyEkt4xX_fFG_l8BYw38t_Tz4Zz0TRhfCMq.1ByGj.QuWkZRXP6CYLJ6gB9UNlVQipUc.JN6
 e4Jk8Vta2PuW0yFDgpRO_ytc7vA3vyZ7GWTtqiKCax0GEMgYv5jtO3Km7mgILeob5PUJqShZc_Bf
 lizA3tgzv2Zs6Zrb8_y6TYE1slbLwsiM39ig_0.2sMO3ecvh_ez7oucX5kV3VjhCllwXS4dj0DMv
 pnUi7t2btEEbtiT8AOqR1KdDVZ7yhYu87l4iBxTaWg5dM9Em7GNSRaI_w7eyqIHrn_EyrpsvDCBy
 pYR63A8ieLIBWnAcTE6ope5s4vLFFzsfFbpNvk2S01HIS1gQiFvk5hUmYVYmJducT6IOM9Eu6QSF
 vNuaQ3dJj3s14kcktgUJ81xsMcXy3m0zEg6j2cv9wn8Eqgg9Qlrk4q06GBK4UDYtCQ.rSU.bM8cC
 D8QCvCHRxDzEJ9LdyXvWK_HHHm7Y_nTAjt0t43g_b0h9bZsL9z768tV7YdbUwfGjI9Ikfl9rvT3n
 Jj1y28c4l6l7NcYRN.BLVrYewYzZ4wkEVf_LUDkCqDr7QyAG1GDeOe1qcJh3SrmhPAIa1PA0EfND
 Y4nVfypkdeNVMVGyuyPXByLzjGQ--
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Thu, 26 Aug 2021 00:59:21 +0000
Date: Thu, 26 Aug 2021 00:59:19 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1773773029.528750.1629939559989@mail.yahoo.com>
In-Reply-To: <146269565.381604.1629901775157@mail.yahoo.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com> <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com> <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com> <983558461.158295.1629821292551@mail.yahoo.com> <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com> <1502691808.229735.1629837681660@mail.yahoo.com> <CAL7q81tixB=BxZvRuLuJcOq1KNFpALzumZjWr7tR4AAv_NQo9A@mail.gmail.com> <146269565.381604.1629901775157@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: V6545NQRFAS6PT5XB35ZQMDTTALRHOU3
X-Message-ID-Hash: V6545NQRFAS6PT5XB35ZQMDTTALRHOU3
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V6545NQRFAS6PT5XB35ZQMDTTALRHOU3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0118259684190689730=="

--===============0118259684190689730==
Content-Type: multipart/alternative;
	boundary="----=_Part_528749_74420697.1629939559983"

------=_Part_528749_74420697.1629939559983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 From looking at the whole printout to the screen, it seems as though UHD f=
unctions as well as boost functions are not being seen, hence the "undefine=
d reference" messages. I'm unclear as to why this is happening at the momen=
t. This is a complete printout below.=20


tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ sudo make rfnoc_replay=
_samples_1_from_file[sudo] password for tw:=20
g++=C2=A0=C2=A0=C2=A0=C2=A0 rfnoc_replay_samples_1_from_file.cpp=C2=A0=C2=
=A0 -o rfnoc_replay_samples_1_from_file
/tmp/ccXdJ5o0.o: In function `_main(int, char**)':
rfnoc_replay_samples_1_from_file.cpp:(.text+0x34e): undefined reference to =
`boost::program_options::options_description::m_default_line_length'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x359): undefined reference to =
`boost::program_options::options_description::m_default_line_length'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a0): undefined reference to =
`boost::program_options::options_description::options_description(std::__cx=
x11::basic_string<char, std::char_traits<char>, std::allocator<char> > cons=
t&, unsigned int, unsigned int)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3cd): undefined reference to =
`boost::program_options::options_description::add_options()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3f1): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, char const*)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x45d): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, boost::program_options::value_semantic const*, char const*)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x488): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, boost::program_options::value_semantic const*, char const*)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x4d3): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, boost::program_options::value_semantic const*, char const*)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x51e): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, boost::program_options::value_semantic const*, char const*)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x569): undefined reference to =
`boost::program_options::options_description_easy_init::operator()(char con=
st*, boost::program_options::value_semantic const*, char const*)'
/tmp/ccXdJ5o0.o:rfnoc_replay_samples_1_from_file.cpp:(.text+0x5b4): more un=
defined references to `boost::program_options::options_description_easy_ini=
t::operator()(char const*, boost::program_options::value_semantic const*, c=
har const*)' follow
/tmp/ccXdJ5o0.o: In function `_main(int, char**)':
rfnoc_replay_samples_1_from_file.cpp:(.text+0x817): undefined reference to =
`boost::program_options::variables_map::variables_map()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x877): undefined reference to =
`boost::program_options::store(boost::program_options::basic_parsed_options=
<char> const&, boost::program_options::variables_map&, bool)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x8a4): undefined reference to =
`boost::program_options::notify(boost::program_options::variables_map&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x941): undefined reference to =
`boost::program_options::operator<<(std::ostream&, boost::program_options::=
options_description const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xa18): undefined reference to =
`uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char, std::ch=
ar_traits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xa31): undefined reference to =
`uhd::rfnoc::rfnoc_graph::make(uhd::device_addr_t const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xa91): undefined reference to =
`uhd::rfnoc::block_id_t::block_id_t(unsigned long, std::__cxx11::basic_stri=
ng<char, std::char_traits<char>, std::allocator<char> > const&, unsigned lo=
ng)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xcf7): undefined reference to =
`uhd::rfnoc::block_id_t::block_id_t(std::__cxx11::basic_string<char, std::c=
har_traits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xd3c): undefined reference to =
`uhd::rfnoc::block_id_t::match(std::__cxx11::basic_string<char, std::char_t=
raits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0xeef): undefined reference to =
`uhd::rfnoc::block_id_t::block_id_t(unsigned long, std::__cxx11::basic_stri=
ng<char, std::char_traits<char>, std::allocator<char> > const&, unsigned lo=
ng)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x127f): undefined reference to=
 `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char, std::c=
har_traits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x1ce8): undefined reference to=
 `uhd::_log::log::log(uhd::log::severity_level, std::__cxx11::basic_string<=
char, std::char_traits<char>, std::allocator<char> > const&, unsigned int, =
std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<cha=
r> > const&, std::thread::id)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x1d0d): undefined reference to=
 `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x1f6e): undefined reference to=
 `uhd::_log::log::log(uhd::log::severity_level, std::__cxx11::basic_string<=
char, std::char_traits<char>, std::allocator<char> > const&, unsigned int, =
std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<cha=
r> > const&, std::thread::id)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x1f93): undefined reference to=
 `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x207a): undefined reference to=
 `uhd::_log::log::log(uhd::log::severity_level, std::__cxx11::basic_string<=
char, std::char_traits<char>, std::allocator<char> > const&, unsigned int, =
std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<cha=
r> > const&, std::thread::id)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x209f): undefined reference to=
 `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x2120): undefined reference to=
 `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char, std::c=
har_traits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x2183): undefined reference to=
 `uhd::tx_metadata_t::tx_metadata_t()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x21af): undefined reference to=
 `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x2e93): undefined reference to=
 `uhd::time_spec_t::time_spec_t(double)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x2f47): undefined reference to=
 `uhd::stream_cmd_t::stream_cmd_t(uhd::stream_cmd_t::stream_mode_t const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3604): undefined reference to=
 `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3666): undefined reference to=
 `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x36c8): undefined reference to=
 `uhd::_log::log::~log()'
/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::property_t<int>* (anonymous names=
pace)::_assert_prop<int>(uhd::rfnoc::property_base_t*, std::__cxx11::basic_=
string<char, std::char_traits<char>, std::allocator<char> > const&, std::__=
cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > co=
nst&)':
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a81): undefined reference to=
 `uhd::lookup_error::lookup_error(std::__cxx11::basic_string<char, std::cha=
r_traits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3aad): undefined reference to=
 `typeinfo for uhd::lookup_error'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3ba6): undefined reference to=
 `uhd::type_error::type_error(std::__cxx11::basic_string<char, std::char_tr=
aits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3be1): undefined reference to=
 `typeinfo for uhd::type_error'
/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::block_id_t::operator std::__cxx11=
::basic_string<char, std::char_traits<char>, std::allocator<char> >() const=
':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10block_id_tcvNSt=
7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv[_ZNK3uhd5rfnoc10block_i=
d_tcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv]+0x2e): undefin=
ed reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const'
/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::operator<<(std::ostream&, uhd::rf=
noc::block_id_t)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoclsERSoNS0_10block_=
id_tE[_ZN3uhd5rfnoclsERSoNS0_10block_id_tE]+0x2f): undefined reference to `=
uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const'
/tmp/ccXdJ5o0.o: In function `uhd::runtime_error::~runtime_error()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd13runtime_errorD2Ev[_ZN3=
uhd13runtime_errorD5Ev]+0xf): undefined reference to `vtable for uhd::runti=
me_error'
/tmp/ccXdJ5o0.o: In function `uhd::stream_args_t::stream_args_t(std::__cxx1=
1::basic_string<char, std::char_traits<char>, std::allocator<char> > const&=
, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<c=
har> > const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd13stream_args_tC2ERKNSt7=
__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_[_ZN3uhd13stream_args_tC=
5ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_]+0x76): undefin=
ed reference to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_stri=
ng<char, std::char_traits<char>, std::allocator<char> > const&)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::error_with_option_nam=
e::~error_with_option_name()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options22err=
or_with_option_nameD2Ev[_ZN5boost15program_options22error_with_option_nameD=
5Ev]+0xf): undefined reference to `vtable for boost::program_options::error=
_with_option_name'
/tmp/ccXdJ5o0.o: In function `boost::program_options::validation_error::val=
idation_error(boost::program_options::validation_error::kind_t, std::__cxx1=
1::basic_string<char, std::char_traits<char>, std::allocator<char> > const&=
, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<c=
har> > const&, int)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options16val=
idation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcE=
SaIcEEESA_i[_ZN5boost15program_options16validation_errorC5ENS1_6kind_tERKNS=
t7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i]+0x41): undefined re=
ference to `boost::program_options::validation_error::get_template[abi:cxx1=
1](boost::program_options::validation_error::kind_t)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options16val=
idation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcE=
SaIcEEESA_i[_ZN5boost15program_options16validation_errorC5ENS1_6kind_tERKNS=
t7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i]+0x5e): undefined re=
ference to `boost::program_options::error_with_option_name::error_with_opti=
on_name(std::__cxx11::basic_string<char, std::char_traits<char>, std::alloc=
ator<char> > const&, std::__cxx11::basic_string<char, std::char_traits<char=
>, std::allocator<char> > const&, std::__cxx11::basic_string<char, std::cha=
r_traits<char>, std::allocator<char> > const&, int)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::value_semantic_codecv=
t_helper<char>::value_semantic_codecvt_helper()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options29val=
ue_semantic_codecvt_helperIcEC2Ev[_ZN5boost15program_options29value_semanti=
c_codecvt_helperIcEC5Ev]+0x1b): undefined reference to `vtable for boost::p=
rogram_options::value_semantic_codecvt_helper<char>'
/tmp/ccXdJ5o0.o: In function `boost::program_options::value_semantic_codecv=
t_helper<char>::~value_semantic_codecvt_helper()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options29val=
ue_semantic_codecvt_helperIcED2Ev[_ZN5boost15program_options29value_semanti=
c_codecvt_helperIcED5Ev]+0xf): undefined reference to `vtable for boost::pr=
ogram_options::value_semantic_codecvt_helper<char>'
/tmp/ccXdJ5o0.o: In function `uhd::lookup_error::~lookup_error()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd12lookup_errorD2Ev[_ZN3u=
hd12lookup_errorD5Ev]+0xf): undefined reference to `vtable for uhd::lookup_=
error'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::radio_control> uh=
d::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::radio_control>(uhd::rfnoc::blo=
ck_id_t const&) const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd=
5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0=
_10block_id_tE]+0xbb): undefined reference to `uhd::rfnoc::block_id_t::to_s=
tring[abi:cxx11]() const'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd=
5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0=
_10block_id_tE]+0x16b): undefined reference to `uhd::lookup_error::lookup_e=
rror(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocato=
r<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd=
5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0=
_10block_id_tE]+0x1d9): undefined reference to `typeinfo for uhd::lookup_er=
ror'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::duc_block_control=
> uhd::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::duc_block_control>(uhd::rf=
noc::block_id_t const&) const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK=
3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_ptrI=
T_ERKNS0_10block_id_tE]+0xbb): undefined reference to `uhd::rfnoc::block_id=
_t::to_string[abi:cxx11]() const'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK=
3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_ptrI=
T_ERKNS0_10block_id_tE]+0x16b): undefined reference to `uhd::lookup_error::=
lookup_error(std::__cxx11::basic_string<char, std::char_traits<char>, std::=
allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK=
3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_ptrI=
T_ERKNS0_10block_id_tE]+0x1d9): undefined reference to `typeinfo for uhd::l=
ookup_error'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::replay_block_cont=
rol> uhd::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::replay_block_control>(u=
hd::rfnoc::block_id_t const&) const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_=
ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10share=
d_ptrIT_ERKNS0_10block_id_tE]+0xbb): undefined reference to `uhd::rfnoc::bl=
ock_id_t::to_string[abi:cxx11]() const'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_=
ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10share=
d_ptrIT_ERKNS0_10block_id_tE]+0x16b): undefined reference to `uhd::lookup_e=
rror::lookup_error(std::__cxx11::basic_string<char, std::char_traits<char>,=
 std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get=
_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_=
ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10share=
d_ptrIT_ERKNS0_10block_id_tE]+0x1d9): undefined reference to `typeinfo for =
uhd::lookup_error'
/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_command_line_pa=
rser<char>::basic_command_line_parser(int, char const* const*)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcEC2EiPKPKc[_ZN5boost15program_options25basic_comman=
d_line_parserIcEC5EiPKPKc]+0x81): undefined reference to `boost::program_op=
tions::detail::cmdline::cmdline(std::vector<std::__cxx11::basic_string<char=
, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx=
11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > c=
onst&)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_command_line_pa=
rser<char>::options(boost::program_options::options_description const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcE7optionsERKNS0_19options_descriptionE[_ZN5boost15p=
rogram_options25basic_command_line_parserIcE7optionsERKNS0_19options_descri=
ptionE]+0x1f): undefined reference to `boost::program_options::detail::cmdl=
ine::set_options_description(boost::program_options::options_description co=
nst&)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_command_line_pa=
rser<char>::style(int)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcE5styleEi[_ZN5boost15program_options25basic_command=
_line_parserIcE5styleEi]+0x1c): undefined reference to `boost::program_opti=
ons::detail::cmdline::style(int)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_command_line_pa=
rser<char>::extra_parser(boost::function1<std::pair<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::bas=
ic_string<char, std::char_traits<char>, std::allocator<char> > >, std::__cx=
x11::basic_string<char, std::char_traits<char>, std::allocator<char> > cons=
t&>)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE[_ZN5boost15program_optio=
ns25basic_command_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7__=
cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE]+0x42): undefined=
 reference to `boost::program_options::detail::cmdline::set_additional_pars=
er(boost::function1<std::pair<std::__cxx11::basic_string<char, std::char_tr=
aits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::c=
har_traits<char>, std::allocator<char> > >, std::__cxx11::basic_string<char=
, std::char_traits<char>, std::allocator<char> > const&>)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_command_line_pa=
rser<char>::run()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcE3runEv[_ZN5boost15program_options25basic_command_l=
ine_parserIcE3runEv]+0x28): undefined reference to `boost::program_options:=
:detail::cmdline::get_canonical_option_prefix()'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25bas=
ic_command_line_parserIcE3runEv[_ZN5boost15program_options25basic_command_l=
ine_parserIcE3runEv]+0x54): undefined reference to `boost::program_options:=
:detail::cmdline::run()'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::radio_control> st=
d::dynamic_pointer_cast<uhd::rfnoc::radio_control, uhd::rfnoc::noc_block_ba=
se>(std::shared_ptr<uhd::rfnoc::noc_block_base> const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3uh=
d5rfnoc13radio_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E[_=
ZSt20dynamic_pointer_castIN3uhd5rfnoc13radio_controlENS1_14noc_block_baseEE=
St10shared_ptrIT_ERKS4_IT0_E]+0x30): undefined reference to `typeinfo for u=
hd::rfnoc::noc_block_base'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::duc_block_control=
> std::dynamic_pointer_cast<uhd::rfnoc::duc_block_control, uhd::rfnoc::noc_=
block_base>(std::shared_ptr<uhd::rfnoc::noc_block_base> const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3uh=
d5rfnoc17duc_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0=
_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc17duc_block_controlENS1_14noc_bloc=
k_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30): undefined reference to `typein=
fo for uhd::rfnoc::noc_block_base'
/tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::replay_block_cont=
rol> std::dynamic_pointer_cast<uhd::rfnoc::replay_block_control, uhd::rfnoc=
::noc_block_base>(std::shared_ptr<uhd::rfnoc::noc_block_base> const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3uh=
d5rfnoc20replay_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_=
IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc20replay_block_controlENS1_14no=
c_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30): undefined reference to `=
typeinfo for uhd::rfnoc::noc_block_base'
/tmp/ccXdJ5o0.o: In function `int const& uhd::rfnoc::node_t::get_property<i=
nt>(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator=
<char> > const&, uhd::rfnoc::res_source_info const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0xb4): undefi=
ned reference to `uhd::_log::log::log(uhd::log::severity_level, std::__cxx1=
1::basic_string<char, std::char_traits<char>, std::allocator<char> > const&=
, unsigned int, std::__cxx11::basic_string<char, std::char_traits<char>, st=
d::allocator<char> > const&, std::thread::id)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x162): undef=
ined reference to `uhd::_log::log::~log()'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x19e): undef=
ined reference to `uhd::rfnoc::node_t::resolve_all()'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x1e8): undef=
ined reference to `uhd::rfnoc::node_t::_find_property(uhd::rfnoc::res_sourc=
e_info, std::__cxx11::basic_string<char, std::char_traits<char>, std::alloc=
ator<char> > const&) const'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x23c): undef=
ined reference to `uhd::rfnoc::node_t::_request_property_access(uhd::rfnoc:=
:property_base_t*, uhd::rfnoc::property_base_t::access_t) const'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_prope=
rtyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15re=
s_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x2b2): undef=
ined reference to `uhd::_log::log::~log()'
/tmp/ccXdJ5o0.o: In function `std::vector<std::__cxx11::basic_string<char, =
std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11=
::basic_string<char, std::char_traits<char>, std::allocator<char> > > > boo=
st::program_options::to_internal<std::__cxx11::basic_string<char, std::char=
_traits<char>, std::allocator<char> > >(std::vector<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::allocator<st=
d::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>=
 > > > const&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options11to_=
internalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7=
_SaIS7_EERKS8_IT_SaISB_EE[_ZN5boost15program_options11to_internalINSt7__cxx=
1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7_SaIS7_EERKS8_IT_S=
aISB_EE]+0x6c): undefined reference to `boost::program_options::to_internal=
(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<ch=
ar> > const&)'
/tmp/ccXdJ5o0.o: In function `uhd::access_error::~access_error()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd12access_errorD2Ev[_ZN3u=
hd12access_errorD5Ev]+0xf): undefined reference to `vtable for uhd::access_=
error'
/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::property_t<int>::get() const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3g=
etEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x133): undefined reference to `u=
hd::access_error::access_error(std::__cxx11::basic_string<char, std::char_t=
raits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3g=
etEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x1a1): undefined reference to `t=
ypeinfo for uhd::access_error'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3g=
etEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x26e): undefined reference to `u=
hd::access_error::access_error(std::__cxx11::basic_string<char, std::char_t=
raits<char>, std::allocator<char> > const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3g=
etEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x2af): undefined reference to `t=
ypeinfo for uhd::access_error'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueIdcE=
E[_ZTVN5boost15program_options11typed_valueIdcEE]+0x38): undefined referenc=
e to `boost::program_options::value_semantic_codecvt_helper<char>::parse(bo=
ost::any&, std::vector<std::__cxx11::basic_string<char, std::char_traits<ch=
ar>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char=
, std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueImcE=
E[_ZTVN5boost15program_options11typed_valueImcEE]+0x38): undefined referenc=
e to `boost::program_options::value_semantic_codecvt_helper<char>::parse(bo=
ost::any&, std::vector<std::__cxx11::basic_string<char, std::char_traits<ch=
ar>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char=
, std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueINSt=
7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTVN5boost15program_o=
ptions11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE=
]+0x38): undefined reference to `boost::program_options::value_semantic_cod=
ecvt_helper<char>::parse(boost::any&, std::vector<std::__cxx11::basic_strin=
g<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std:=
:__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >=
 > > const&, bool) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options20invalid_option_=
valueE[_ZTVN5boost15program_options20invalid_option_valueE]+0x20): undefine=
d reference to `boost::program_options::error_with_option_name::what() cons=
t'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options20invalid_option_=
valueE[_ZTVN5boost15program_options20invalid_option_valueE]+0x30): undefine=
d reference to `boost::program_options::error_with_option_name::substitute_=
placeholders(std::__cxx11::basic_string<char, std::char_traits<char>, std::=
allocator<char> > const&) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16validation_erro=
rE[_ZTVN5boost15program_options16validation_errorE]+0x20): undefined refere=
nce to `boost::program_options::error_with_option_name::what() const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16validation_erro=
rE[_ZTVN5boost15program_options16validation_errorE]+0x30): undefined refere=
nce to `boost::program_options::error_with_option_name::substitute_placehol=
ders(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocato=
r<char> > const&) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueIdcE=
E[_ZTIN5boost15program_options11typed_valueIdcEE]+0x18): undefined referenc=
e to `typeinfo for boost::program_options::value_semantic_codecvt_helper<ch=
ar>'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueImcE=
E[_ZTIN5boost15program_options11typed_valueImcEE]+0x18): undefined referenc=
e to `typeinfo for boost::program_options::value_semantic_codecvt_helper<ch=
ar>'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueINSt=
7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTIN5boost15program_o=
ptions11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE=
]+0x18): undefined reference to `typeinfo for boost::program_options::value=
_semantic_codecvt_helper<char>'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options16validation_erro=
rE[_ZTIN5boost15program_options16validation_errorE]+0x10): undefined refere=
nce to `typeinfo for boost::program_options::error_with_option_name'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc20replay_block_controlE[_ZTIN3=
uhd5rfnoc20replay_block_controlE]+0x10): undefined reference to `typeinfo f=
or uhd::rfnoc::noc_block_base'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc13radio_controlE[_ZTIN3uhd5rfn=
oc13radio_controlE]+0x18): undefined reference to `typeinfo for uhd::rfnoc:=
:noc_block_base'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc17duc_block_controlE[_ZTIN3uhd=
5rfnoc17duc_block_controlE]+0x10): undefined reference to `typeinfo for uhd=
::rfnoc::noc_block_base'
/tmp/ccXdJ5o0.o: In function `uhd::type_error::~type_error()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd10type_errorD2Ev[_ZN3uhd=
10type_errorD5Ev]+0xf): undefined reference to `vtable for uhd::type_error'
/tmp/ccXdJ5o0.o: In function `boost::program_options::variables_map::~varia=
bles_map()':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options13var=
iables_mapD2Ev[_ZN5boost15program_options13variables_mapD5Ev]+0xf): undefin=
ed reference to `vtable for boost::program_options::variables_map'
/tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<double, c=
har>::name[abi:cxx11]() const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11ty=
ped_valueIdcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed_valueIdcE4na=
meB5cxx11Ev]+0x43): undefined reference to `boost::program_options::arg[abi=
:cxx11]'
/tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<unsigned =
long, char>::name[abi:cxx11]() const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11ty=
ped_valueImcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed_valueImcE4na=
meB5cxx11Ev]+0x43): undefined reference to `boost::program_options::arg[abi=
:cxx11]'
/tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<std::__cx=
x11::basic_string<char, std::char_traits<char>, std::allocator<char> >, cha=
r>::name() const':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11ty=
ped_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE4nameEv[_ZN=
K5boost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_t=
raitsIcESaIcEEEcE4nameEv]+0x43): undefined reference to `boost::program_opt=
ions::arg[abi:cxx11]'
/tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<std::__cx=
x11::basic_string<char, std::char_traits<char>, std::allocator<char> >, cha=
r>::xparse(boost::any&, std::vector<std::__cxx11::basic_string<char, std::c=
har_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basi=
c_string<char, std::char_traits<char>, std::allocator<char> > > > const&) c=
onst':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11ty=
ped_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE6xparseERNS=
_3anyERKSt6vectorIS7_SaIS7_EE[_ZNK5boost15program_options11typed_valueINSt7=
__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE6xparseERNS_3anyERKSt6vec=
torIS7_SaIS7_EE]+0x7a): undefined reference to `boost::program_options::val=
idate(boost::any&, std::vector<std::__cxx11::basic_string<char, std::char_t=
raits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> > > > const&, std::_=
_cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*,=
 int)'
/tmp/ccXdJ5o0.o: In function `void boost::program_options::validate<double,=
 char>(boost::any&, std::vector<std::__cxx11::basic_string<char, std::char_=
traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_st=
ring<char, std::char_traits<char>, std::allocator<char> > > > const&, doubl=
e*, long)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8vali=
dateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traits=
IS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateIdcEEvRNS_3an=
yERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaI=
SB_EEPT_l]+0x42): undefined reference to `boost::program_options::validator=
s::check_first_occurrence(boost::any const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8vali=
dateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traits=
IS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateIdcEEvRNS_3an=
yERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaI=
SB_EEPT_l]+0x122): undefined reference to `boost::program_options::invalid_=
option_value::invalid_option_value(std::__cxx11::basic_string<char, std::ch=
ar_traits<char>, std::allocator<char> > const&)'
/tmp/ccXdJ5o0.o: In function `void boost::program_options::validate<unsigne=
d long, char>(boost::any&, std::vector<std::__cxx11::basic_string<char, std=
::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::b=
asic_string<char, std::char_traits<char>, std::allocator<char> > > > const&=
, unsigned long*, long)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8vali=
dateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traits=
IS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateImcEEvRNS_3an=
yERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaI=
SB_EEPT_l]+0x42): undefined reference to `boost::program_options::validator=
s::check_first_occurrence(boost::any const&)'
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8vali=
dateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traits=
IS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateImcEEvRNS_3an=
yERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaI=
SB_EEPT_l]+0x11d): undefined reference to `boost::program_options::invalid_=
option_value::invalid_option_value(std::__cxx11::basic_string<char, std::ch=
ar_traits<char>, std::allocator<char> > const&)'
/tmp/ccXdJ5o0.o: In function `boost::program_options::error_with_option_nam=
e::error_with_option_name(boost::program_options::error_with_option_name co=
nst&)':
rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options22err=
or_with_option_nameC2ERKS1_[_ZN5boost15program_options22error_with_option_n=
ameC5ERKS1_]+0x27): undefined reference to `vtable for boost::program_optio=
ns::error_with_option_name'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0=
_19error_info_injectorINS_15program_options16validation_errorEEEEE[_ZTVN5bo=
ost16exception_detail10clone_implINS0_19error_info_injectorINS_15program_op=
tions16validation_errorEEEEE]+0x28): undefined reference to `boost::program=
_options::error_with_option_name::what() const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0=
_19error_info_injectorINS_15program_options16validation_errorEEEEE[_ZTVN5bo=
ost16exception_detail10clone_implINS0_19error_info_injectorINS_15program_op=
tions16validation_errorEEEEE]+0x38): undefined reference to `boost::program=
_options::error_with_option_name::substitute_placeholders(std::__cxx11::bas=
ic_string<char, std::char_traits<char>, std::allocator<char> > const&) cons=
t'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_inj=
ectorINS_15program_options16validation_errorEEE[_ZTVN5boost16exception_deta=
il19error_info_injectorINS_15program_options16validation_errorEEE]+0x20): u=
ndefined reference to `boost::program_options::error_with_option_name::what=
() const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_inj=
ectorINS_15program_options16validation_errorEEE[_ZTVN5boost16exception_deta=
il19error_info_injectorINS_15program_options16validation_errorEEE]+0x30): u=
ndefined reference to `boost::program_options::error_with_option_name::subs=
titute_placeholders(std::__cxx11::basic_string<char, std::char_traits<char>=
, std::allocator<char> > const&) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0=
_19error_info_injectorINS_15program_options20invalid_option_valueEEEEE[_ZTV=
N5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15progra=
m_options20invalid_option_valueEEEEE]+0x28): undefined reference to `boost:=
:program_options::error_with_option_name::what() const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0=
_19error_info_injectorINS_15program_options20invalid_option_valueEEEEE[_ZTV=
N5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15progra=
m_options20invalid_option_valueEEEEE]+0x38): undefined reference to `boost:=
:program_options::error_with_option_name::substitute_placeholders(std::__cx=
x11::basic_string<char, std::char_traits<char>, std::allocator<char> > cons=
t&) const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_inj=
ectorINS_15program_options20invalid_option_valueEEE[_ZTVN5boost16exception_=
detail19error_info_injectorINS_15program_options20invalid_option_valueEEE]+=
0x20): undefined reference to `boost::program_options::error_with_option_na=
me::what() const'
/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_inj=
ectorINS_15program_options20invalid_option_valueEEE[_ZTVN5boost16exception_=
detail19error_info_injectorINS_15program_options20invalid_option_valueEEE]+=
0x30): undefined reference to `boost::program_options::error_with_option_na=
me::substitute_placeholders(std::__cxx11::basic_string<char, std::char_trai=
ts<char>, std::allocator<char> > const&) const'
collect2: error: ld returned 1 exit status
<builtin>: recipe for target 'rfnoc_replay_samples_1_from_file' failed
make: *** [rfnoc_replay_samples_1_from_file] Error 1

From looking at the whole printout to the screen, it seems as though UHD fu=
nctions as well as boost functions are not being seen, hence the "undefined=
 reference" messages. I'm unclear as to why this is happening at the moment=
. This is a complete printout.=20


    On Wednesday, August 25, 2021, 10:30:21 AM EDT, Tellrell White via USRP=
-users <usrp-users@lists.ettus.com> wrote: =20
=20
  Thanks for the reply. I tried the CMake approach following the steps you =
mentioned but received an error when building.=C2=A0=20
First, I created CMakeLists which is pretty simple as shown below

cmake_minimum_required(VERSION 3.10)

#set the project name
project(Tutorial)

#add the executable
add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)

Then, I sourced the file, and set the flag for CMake. Lastly, inside of a b=
uild directory, I tried building the App and got the following printout=20

/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm-o=
e-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/replay_e=
xample.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5boost15pro=
gram_options11typed_valueIjcEE[_ZTVN5boost15program_options11typed_valueIjc=
EE]+0x1c): undefined reference to `boost::program_options::value_semantic_c=
odecvt_helper<char>::parse(boost::any&, std::vector<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::allocator<st=
d::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>=
 > > > const&, bool) const'
/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm-o=
e-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/replay_e=
xample.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5boost15pro=
gram_options11typed_valueIdcEE[_ZTVN5boost15program_options11typed_valueIdc=
EE]+0x1c): undefined reference to `boost::program_options::value_semantic_c=
odecvt_helper<char>::parse(boost::any&, std::vector<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::allocator<st=
d::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>=
 > > > const&, bool) const'
collect2: error: ld returned 1 exit status
CMakeFiles/replay_example.dir/build.make:83: recipe for target 'replay_exam=
ple' failed
make[2]: *** [replay_example] Error 1
CMakeFiles/Makefile2:75: recipe for target 'CMakeFiles/replay_example.dir/a=
ll' failed
make[1]: *** [CMakeFiles/replay_example.dir/all] Error 2
Makefile:83: recipe for target 'all' failed
make: *** [all] Error 2

I'm not sure if this is a boost issue or something else.




    On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon Pendlum <jonatho=
n.pendlum@ettus.com> wrote: =20
=20
 Hi Tellrell,
Do not use the Xilinx SDK, only the Yocto one, i.e.=C2=A0/usr/local/share/u=
hd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi
You need to source the "environment-setup-cortexa9t2hf-neon-oe-linux-gnueab=
i"=C2=A0file before cross compiling. If you use cmake with building your ap=
plication, you also need to set the flag "-DCMAKE_TOOLCHAIN_FILE=3D<path to=
 UHD>/host/cmake/Toolchains/oe-sdk_cross.cmake".
Also, if you just want to run the UHD example, it already exists on the N31=
0's root file system at: /usr/lib/uhd/examples/rfnoc_replay_samples_from_fi=
le
Jonathon
On Tue, Aug 24, 2021 at 4:42 PM Tellrell White via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

 I'm trying to compile the source code using SDK 2019.1. I'm pointing the t=
he SDK project to the directory for sysroot and also to the directory for m=
y linux toolchain which are the following
 /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi

/tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gn=
ueabihf
I continue to get the following error stating that these files can't be fou=
nd, however, they do exist. And, when I try adding them within the project =
and refreshing nothing happens.=20


cannot find /lib/ld-linux-armhf.so.3=C2=A0=C2=A0=20

cannot find /lib/libc.so.6=C2=A0=C2=A0=C2=A0=20

cannot find /usr/lib/libc_nonshared.a=C2=A0=C2=A0=C2=A0=20

Am I going about building this application correctly? I thought that linkin=
g my project to sysroot which I installed for the n310 and to the SDK toolc=
hain( maybe I'm doing this incorrectly) would be pretty straightforward.










    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 2021-08-24 12:08 p.m., Tellrell White wrote:
 =20
=20
 Yep. Marcus you caught it!! That worked. Do I need to complete the section=
s on "Compiling MPM Natively" and "Building UHD"?? I understand that I need=
 the cross-compiler for compiling SW for the device but I don't see the nee=
d for completing the other two parts. Is there something additional that ne=
eds to be done other than cross compiling on the host machine and ssh'ing o=
ver the executable?=20
 =20
  As far as I know, you should be able to just cross-compile the code you'r=
e interested in.
=20
=20
   _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_528749_74420697.1629939559983
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp664c3e1yahoo-style-wrap" style=3D=
"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-s=
etdir=3D"false"><span>From looking at the whole printout to the screen, it =
seems as though UHD
 functions as well as boost functions are not being seen, hence the=20
"undefined reference" messages. I'm unclear as to why this is happening=20
at the moment. This is a complete printout below. </span><br></div><div><br=
></div><div><br></div><div>tw@tw-virtual-machine:/usr/local/share/uhd/image=
s/y$ sudo make rfnoc_replay_samples_1_from_file</div>[sudo] password for tw=
: <br>g++&nbsp;&nbsp;&nbsp;&nbsp; rfnoc_replay_samples_1_from_file.cpp&nbsp=
;&nbsp; -o rfnoc_replay_samples_1_from_file<br>/tmp/ccXdJ5o0.o: In function=
 `_main(int, char**)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x34e=
): undefined reference to `boost::program_options::options_description::m_d=
efault_line_length'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x359): =
undefined reference to `boost::program_options::options_description::m_defa=
ult_line_length'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a0): und=
efined reference to `boost::program_options::options_description::options_d=
escription(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;=
, std::allocator&lt;char&gt; &gt; const&amp;, unsigned int, unsigned int)'<=
br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3cd): undefined reference =
to `boost::program_options::options_description::add_options()'<br>rfnoc_re=
play_samples_1_from_file.cpp:(.text+0x3f1): undefined reference to `boost::=
program_options::options_description_easy_init::operator()(char const*, cha=
r const*)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x45d): undefined=
 reference to `boost::program_options::options_description_easy_init::opera=
tor()(char const*, boost::program_options::value_semantic const*, char cons=
t*)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x488): undefined refer=
ence to `boost::program_options::options_description_easy_init::operator()(=
char const*, boost::program_options::value_semantic const*, char const*)'<b=
r>rfnoc_replay_samples_1_from_file.cpp:(.text+0x4d3): undefined reference t=
o `boost::program_options::options_description_easy_init::operator()(char c=
onst*, boost::program_options::value_semantic const*, char const*)'<br>rfno=
c_replay_samples_1_from_file.cpp:(.text+0x51e): undefined reference to `boo=
st::program_options::options_description_easy_init::operator()(char const*,=
 boost::program_options::value_semantic const*, char const*)'<br>rfnoc_repl=
ay_samples_1_from_file.cpp:(.text+0x569): undefined reference to `boost::pr=
ogram_options::options_description_easy_init::operator()(char const*, boost=
::program_options::value_semantic const*, char const*)'<br>/tmp/ccXdJ5o0.o:=
rfnoc_replay_samples_1_from_file.cpp:(.text+0x5b4): more undefined referenc=
es to `boost::program_options::options_description_easy_init::operator()(ch=
ar const*, boost::program_options::value_semantic const*, char const*)' fol=
low<br>/tmp/ccXdJ5o0.o: In function `_main(int, char**)':<br>rfnoc_replay_s=
amples_1_from_file.cpp:(.text+0x817): undefined reference to `boost::progra=
m_options::variables_map::variables_map()'<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text+0x877): undefined reference to `boost::program_options::stor=
e(boost::program_options::basic_parsed_options&lt;char&gt; const&amp;, boos=
t::program_options::variables_map&amp;, bool)'<br>rfnoc_replay_samples_1_fr=
om_file.cpp:(.text+0x8a4): undefined reference to `boost::program_options::=
notify(boost::program_options::variables_map&amp;)'<br>rfnoc_replay_samples=
_1_from_file.cpp:(.text+0x941): undefined reference to `boost::program_opti=
ons::operator&lt;&lt;(std::ostream&amp;, boost::program_options::options_de=
scription const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa18=
): undefined reference to `uhd::device_addr_t::device_addr_t(std::__cxx11::=
basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&=
gt; &gt; const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa31)=
: undefined reference to `uhd::rfnoc::rfnoc_graph::make(uhd::device_addr_t =
const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa91): undefin=
ed reference to `uhd::rfnoc::block_id_t::block_id_t(unsigned long, std::__c=
xx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt=
;char&gt; &gt; const&amp;, unsigned long)'<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text+0xcf7): undefined reference to `uhd::rfnoc::block_id_t::bloc=
k_id_t(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text+0xd3c): undefined reference to `uhd::rfnoc::block_id_t::matc=
h(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::al=
locator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_samples_1_from_file.c=
pp:(.text+0xeef): undefined reference to `uhd::rfnoc::block_id_t::block_id_=
t(unsigned long, std::__cxx11::basic_string&lt;char, std::char_traits&lt;ch=
ar&gt;, std::allocator&lt;char&gt; &gt; const&amp;, unsigned long)'<br>rfno=
c_replay_samples_1_from_file.cpp:(.text+0x127f): undefined reference to `uh=
d::device_addr_t::device_addr_t(std::__cxx11::basic_string&lt;char, std::ch=
ar_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>rfno=
c_replay_samples_1_from_file.cpp:(.text+0x1ce8): undefined reference to `uh=
d::_log::log::log(uhd::log::severity_level, std::__cxx11::basic_string&lt;c=
har, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&am=
p;, unsigned int, std::__cxx11::basic_string&lt;char, std::char_traits&lt;c=
har&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::thread::id)'<br>r=
fnoc_replay_samples_1_from_file.cpp:(.text+0x1d0d): undefined reference to =
`uhd::_log::log::~log()'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x1=
f6e): undefined reference to `uhd::_log::log::log(uhd::log::severity_level,=
 std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::all=
ocator&lt;char&gt; &gt; const&amp;, unsigned int, std::__cxx11::basic_strin=
g&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; co=
nst&amp;, std::thread::id)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+=
0x1f93): undefined reference to `uhd::_log::log::~log()'<br>rfnoc_replay_sa=
mples_1_from_file.cpp:(.text+0x207a): undefined reference to `uhd::_log::lo=
g::log(uhd::log::severity_level, std::__cxx11::basic_string&lt;char, std::c=
har_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, unsigne=
d int, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt; const&amp;, std::thread::id)'<br>rfnoc_replay=
_samples_1_from_file.cpp:(.text+0x209f): undefined reference to `uhd::_log:=
:log::~log()'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x2120): undef=
ined reference to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_st=
ring&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;=
 const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x2183): undef=
ined reference to `uhd::tx_metadata_t::tx_metadata_t()'<br>rfnoc_replay_sam=
ples_1_from_file.cpp:(.text+0x21af): undefined reference to `uhd::rfnoc::bl=
ock_id_t::to_string[abi:cxx11]() const'<br>rfnoc_replay_samples_1_from_file=
.cpp:(.text+0x2e93): undefined reference to `uhd::time_spec_t::time_spec_t(=
double)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x2f47): undefined =
reference to `uhd::stream_cmd_t::stream_cmd_t(uhd::stream_cmd_t::stream_mod=
e_t const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3604): un=
defined reference to `uhd::_log::log::~log()'<br>rfnoc_replay_samples_1_fro=
m_file.cpp:(.text+0x3666): undefined reference to `uhd::_log::log::~log()'<=
br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x36c8): undefined reference=
 to `uhd::_log::log::~log()'<br>/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::p=
roperty_t&lt;int&gt;* (anonymous namespace)::_assert_prop&lt;int&gt;(uhd::r=
fnoc::property_base_t*, std::__cxx11::basic_string&lt;char, std::char_trait=
s&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11::ba=
sic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt=
; &gt; const&amp;)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a81)=
: undefined reference to `uhd::lookup_error::lookup_error(std::__cxx11::bas=
ic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt;=
 &gt; const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3aad): =
undefined reference to `typeinfo for uhd::lookup_error'<br>rfnoc_replay_sam=
ples_1_from_file.cpp:(.text+0x3ba6): undefined reference to `uhd::type_erro=
r::type_error(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&=
gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_samples_1=
_from_file.cpp:(.text+0x3be1): undefined reference to `typeinfo for uhd::ty=
pe_error'<br>/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::block_id_t::operator=
 std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::all=
ocator&lt;char&gt; &gt;() const':<br>rfnoc_replay_samples_1_from_file.cpp:(=
.text._ZNK3uhd5rfnoc10block_id_tcvNSt7__cxx1112basic_stringIcSt11char_trait=
sIcESaIcEEEEv[_ZNK3uhd5rfnoc10block_id_tcvNSt7__cxx1112basic_stringIcSt11ch=
ar_traitsIcESaIcEEEEv]+0x2e): undefined reference to `uhd::rfnoc::block_id_=
t::to_string[abi:cxx11]() const'<br>/tmp/ccXdJ5o0.o: In function `uhd::rfno=
c::operator&lt;&lt;(std::ostream&amp;, uhd::rfnoc::block_id_t)':<br>rfnoc_r=
eplay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoclsERSoNS0_10block_id_tE[_=
ZN3uhd5rfnoclsERSoNS0_10block_id_tE]+0x2f): undefined reference to `uhd::rf=
noc::block_id_t::to_string[abi:cxx11]() const'<br>/tmp/ccXdJ5o0.o: In funct=
ion `uhd::runtime_error::~runtime_error()':<br>rfnoc_replay_samples_1_from_=
file.cpp:(.text._ZN3uhd13runtime_errorD2Ev[_ZN3uhd13runtime_errorD5Ev]+0xf)=
: undefined reference to `vtable for uhd::runtime_error'<br>/tmp/ccXdJ5o0.o=
: In function `uhd::stream_args_t::stream_args_t(std::__cxx11::basic_string=
&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; con=
st&amp;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, =
std::allocator&lt;char&gt; &gt; const&amp;)':<br>rfnoc_replay_samples_1_fro=
m_file.cpp:(.text._ZN3uhd13stream_args_tC2ERKNSt7__cxx1112basic_stringIcSt1=
1char_traitsIcESaIcEEES8_[_ZN3uhd13stream_args_tC5ERKNSt7__cxx1112basic_str=
ingIcSt11char_traitsIcESaIcEEES8_]+0x76): undefined reference to `uhd::devi=
ce_addr_t::device_addr_t(std::__cxx11::basic_string&lt;char, std::char_trai=
ts&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>/tmp/ccXdJ5=
o0.o: In function `boost::program_options::error_with_option_name::~error_w=
ith_option_name()':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boos=
t15program_options22error_with_option_nameD2Ev[_ZN5boost15program_options22=
error_with_option_nameD5Ev]+0xf): undefined reference to `vtable for boost:=
:program_options::error_with_option_name'<br>/tmp/ccXdJ5o0.o: In function `=
boost::program_options::validation_error::validation_error(boost::program_o=
ptions::validation_error::kind_t, std::__cxx11::basic_string&lt;char, std::=
char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::_=
_cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&=
lt;char&gt; &gt; const&amp;, int)':<br>rfnoc_replay_samples_1_from_file.cpp=
:(.text._ZN5boost15program_options16validation_errorC2ENS1_6kind_tERKNSt7__=
cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i[_ZN5boost15program_optio=
ns16validation_errorC5ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_tr=
aitsIcESaIcEEESA_i]+0x41): undefined reference to `boost::program_options::=
validation_error::get_template[abi:cxx11](boost::program_options::validatio=
n_error::kind_t)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost1=
5program_options16validation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_strin=
gIcSt11char_traitsIcESaIcEEESA_i[_ZN5boost15program_options16validation_err=
orC5ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i=
]+0x5e): undefined reference to `boost::program_options::error_with_option_=
name::error_with_option_name(std::__cxx11::basic_string&lt;char, std::char_=
traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx1=
1::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;ch=
ar&gt; &gt; const&amp;, std::__cxx11::basic_string&lt;char, std::char_trait=
s&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, int)'<br>/tmp/cc=
XdJ5o0.o: In function `boost::program_options::value_semantic_codecvt_helpe=
r&lt;char&gt;::value_semantic_codecvt_helper()':<br>rfnoc_replay_samples_1_=
from_file.cpp:(.text._ZN5boost15program_options29value_semantic_codecvt_hel=
perIcEC2Ev[_ZN5boost15program_options29value_semantic_codecvt_helperIcEC5Ev=
]+0x1b): undefined reference to `vtable for boost::program_options::value_s=
emantic_codecvt_helper&lt;char&gt;'<br>/tmp/ccXdJ5o0.o: In function `boost:=
:program_options::value_semantic_codecvt_helper&lt;char&gt;::~value_semanti=
c_codecvt_helper()':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boo=
st15program_options29value_semantic_codecvt_helperIcED2Ev[_ZN5boost15progra=
m_options29value_semantic_codecvt_helperIcED5Ev]+0xf): undefined reference =
to `vtable for boost::program_options::value_semantic_codecvt_helper&lt;cha=
r&gt;'<br>/tmp/ccXdJ5o0.o: In function `uhd::lookup_error::~lookup_error()'=
:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd12lookup_errorD2Ev[=
_ZN3uhd12lookup_errorD5Ev]+0xf): undefined reference to `vtable for uhd::lo=
okup_error'<br>/tmp/ccXdJ5o0.o: In function `std::shared_ptr&lt;uhd::rfnoc:=
:radio_control&gt; uhd::rfnoc::rfnoc_graph::get_block&lt;uhd::rfnoc::radio_=
control&gt;(uhd::rfnoc::block_id_t const&amp;) const':<br>rfnoc_replay_samp=
les_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radi=
o_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_gra=
ph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0=
xbb): undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11](=
) const'<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfn=
oc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id=
_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_=
ptrIT_ERKNS0_10block_id_tE]+0x16b): undefined reference to `uhd::lookup_err=
or::lookup_error(std::__cxx11::basic_string&lt;char, std::char_traits&lt;ch=
ar&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_sample=
s_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radio_=
controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph=
9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0x1=
d9): undefined reference to `typeinfo for uhd::lookup_error'<br>/tmp/ccXdJ5=
o0.o: In function `std::shared_ptr&lt;uhd::rfnoc::duc_block_control&gt; uhd=
::rfnoc::rfnoc_graph::get_block&lt;uhd::rfnoc::duc_block_control&gt;(uhd::r=
fnoc::block_id_t const&amp;) const':<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt=
10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockIN=
S0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0xbb): unde=
fined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const'<b=
r>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_Z=
NK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_pt=
rIT_ERKNS0_10block_id_tE]+0x16b): undefined reference to `uhd::lookup_error=
::lookup_error(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char=
&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_samples_=
1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_bloc=
k_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_gra=
ph9get_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_t=
E]+0x1d9): undefined reference to `typeinfo for uhd::lookup_error'<br>/tmp/=
ccXdJ5o0.o: In function `std::shared_ptr&lt;uhd::rfnoc::replay_block_contro=
l&gt; uhd::rfnoc::rfnoc_graph::get_block&lt;uhd::rfnoc::replay_block_contro=
l&gt;(uhd::rfnoc::block_id_t const&amp;) const':<br>rfnoc_replay_samples_1_=
from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_blo=
ck_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_gr=
aph9get_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_=
id_tE]+0xbb): undefined reference to `uhd::rfnoc::block_id_t::to_string[abi=
:cxx11]() const'<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rf=
noc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ER=
KNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block=
_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0x16b): undefined referen=
ce to `uhd::lookup_error::lookup_error(std::__cxx11::basic_string&lt;char, =
std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<=
br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9=
get_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_t=
E[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10sh=
ared_ptrIT_ERKNS0_10block_id_tE]+0x1d9): undefined reference to `typeinfo f=
or uhd::lookup_error'<br>/tmp/ccXdJ5o0.o: In function `boost::program_optio=
ns::basic_command_line_parser&lt;char&gt;::basic_command_line_parser(int, c=
har const* const*)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boo=
st15program_options25basic_command_line_parserIcEC2EiPKPKc[_ZN5boost15progr=
am_options25basic_command_line_parserIcEC5EiPKPKc]+0x81): undefined referen=
ce to `boost::program_options::detail::cmdline::cmdline(std::vector&lt;std:=
:__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocato=
r&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, s=
td::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; cons=
t&amp;)'<br>/tmp/ccXdJ5o0.o: In function `boost::program_options::basic_com=
mand_line_parser&lt;char&gt;::options(boost::program_options::options_descr=
iption const&amp;)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boo=
st15program_options25basic_command_line_parserIcE7optionsERKNS0_19options_d=
escriptionE[_ZN5boost15program_options25basic_command_line_parserIcE7option=
sERKNS0_19options_descriptionE]+0x1f): undefined reference to `boost::progr=
am_options::detail::cmdline::set_options_description(boost::program_options=
::options_description const&amp;)'<br>/tmp/ccXdJ5o0.o: In function `boost::=
program_options::basic_command_line_parser&lt;char&gt;::style(int)':<br>rfn=
oc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25basic_=
command_line_parserIcE5styleEi[_ZN5boost15program_options25basic_command_li=
ne_parserIcE5styleEi]+0x1c): undefined reference to `boost::program_options=
::detail::cmdline::style(int)'<br>/tmp/ccXdJ5o0.o: In function `boost::prog=
ram_options::basic_command_line_parser&lt;char&gt;::extra_parser(boost::fun=
ction1&lt;std::pair&lt;std::__cxx11::basic_string&lt;char, std::char_traits=
&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::__cxx11::basic_string&l=
t;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt;,=
 std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::all=
ocator&lt;char&gt; &gt; const&amp;&gt;)':<br>rfnoc_replay_samples_1_from_fi=
le.cpp:(.text._ZN5boost15program_options25basic_command_line_parserIcE12ext=
ra_parserENS_9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsI=
cESaIcEEESA_ERKSA_EE[_ZN5boost15program_options25basic_command_line_parserI=
cE12extra_parserENS_9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_=
traitsIcESaIcEEESA_ERKSA_EE]+0x42): undefined reference to `boost::program_=
options::detail::cmdline::set_additional_parser(boost::function1&lt;std::pa=
ir&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std=
::allocator&lt;char&gt; &gt;, std::__cxx11::basic_string&lt;char, std::char=
_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt;, std::__cxx11::ba=
sic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt=
; &gt; const&amp;&gt;)'<br>/tmp/ccXdJ5o0.o: In function `boost::program_opt=
ions::basic_command_line_parser&lt;char&gt;::run()':<br>rfnoc_replay_sample=
s_1_from_file.cpp:(.text._ZN5boost15program_options25basic_command_line_par=
serIcE3runEv[_ZN5boost15program_options25basic_command_line_parserIcE3runEv=
]+0x28): undefined reference to `boost::program_options::detail::cmdline::g=
et_canonical_option_prefix()'<br>rfnoc_replay_samples_1_from_file.cpp:(.tex=
t._ZN5boost15program_options25basic_command_line_parserIcE3runEv[_ZN5boost1=
5program_options25basic_command_line_parserIcE3runEv]+0x54): undefined refe=
rence to `boost::program_options::detail::cmdline::run()'<br>/tmp/ccXdJ5o0.=
o: In function `std::shared_ptr&lt;uhd::rfnoc::radio_control&gt; std::dynam=
ic_pointer_cast&lt;uhd::rfnoc::radio_control, uhd::rfnoc::noc_block_base&gt=
;(std::shared_ptr&lt;uhd::rfnoc::noc_block_base&gt; const&amp;)':<br>rfnoc_=
replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3uhd5rfno=
c13radio_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E[_ZSt20d=
ynamic_pointer_castIN3uhd5rfnoc13radio_controlENS1_14noc_block_baseEESt10sh=
ared_ptrIT_ERKS4_IT0_E]+0x30): undefined reference to `typeinfo for uhd::rf=
noc::noc_block_base'<br>/tmp/ccXdJ5o0.o: In function `std::shared_ptr&lt;uh=
d::rfnoc::duc_block_control&gt; std::dynamic_pointer_cast&lt;uhd::rfnoc::du=
c_block_control, uhd::rfnoc::noc_block_base&gt;(std::shared_ptr&lt;uhd::rfn=
oc::noc_block_base&gt; const&amp;)':<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text._ZSt20dynamic_pointer_castIN3uhd5rfnoc17duc_block_controlENS1_14no=
c_block_baseEESt10shared_ptrIT_ERKS4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd=
5rfnoc17duc_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_=
E]+0x30): undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'<=
br>/tmp/ccXdJ5o0.o: In function `std::shared_ptr&lt;uhd::rfnoc::replay_bloc=
k_control&gt; std::dynamic_pointer_cast&lt;uhd::rfnoc::replay_block_control=
, uhd::rfnoc::noc_block_base&gt;(std::shared_ptr&lt;uhd::rfnoc::noc_block_b=
ase&gt; const&amp;)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20=
dynamic_pointer_castIN3uhd5rfnoc20replay_block_controlENS1_14noc_block_base=
EESt10shared_ptrIT_ERKS4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc20repl=
ay_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30):=
 undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'<br>/tmp/c=
cXdJ5o0.o: In function `int const&amp; uhd::rfnoc::node_t::get_property&lt;=
int&gt;(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, s=
td::allocator&lt;char&gt; &gt; const&amp;, uhd::rfnoc::res_source_info cons=
t&amp;)':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node=
_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIc=
EEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt=
7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+=
0xb4): undefined reference to `uhd::_log::log::log(uhd::log::severity_level=
, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::al=
locator&lt;char&gt; &gt; const&amp;, unsigned int, std::__cxx11::basic_stri=
ng&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; c=
onst&amp;, std::thread::id)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
._ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt1=
1char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_pr=
opertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_1=
5res_source_infoE]+0x162): undefined reference to `uhd::_log::log::~log()'<=
br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pr=
opertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_1=
5res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x19e): un=
defined reference to `uhd::rfnoc::node_t::resolve_all()'<br>rfnoc_replay_sa=
mples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNS=
t7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE[=
_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11=
char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x1e8): undefined reference =
to `uhd::rfnoc::node_t::_find_property(uhd::rfnoc::res_source_info, std::__=
cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&l=
t;char&gt; &gt; const&amp;) const'<br>rfnoc_replay_samples_1_from_file.cpp:=
(.text._ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_strin=
gIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12=
get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER=
KNS0_15res_source_infoE]+0x23c): undefined reference to `uhd::rfnoc::node_t=
::_request_property_access(uhd::rfnoc::property_base_t*, uhd::rfnoc::proper=
ty_base_t::access_t) const'<br>rfnoc_replay_samples_1_from_file.cpp:(.text.=
_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11=
char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE]+0x2b2): undefined reference to `uhd::_log::log::~log()'<b=
r>/tmp/ccXdJ5o0.o: In function `std::vector&lt;std::__cxx11::basic_string&l=
t;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std:=
:allocator&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&=
gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; boost::program_options::to_i=
nternal&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;=
, std::allocator&lt;char&gt; &gt; &gt;(std::vector&lt;std::__cxx11::basic_s=
tring&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt=
;, std::allocator&lt;std::__cxx11::basic_string&lt;char, std::char_traits&l=
t;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; const&amp;)':<br>rfno=
c_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options11to_inte=
rnalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7_SaI=
S7_EERKS8_IT_SaISB_EE[_ZN5boost15program_options11to_internalINSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7_SaIS7_EERKS8_IT_SaISB=
_EE]+0x6c): undefined reference to `boost::program_options::to_internal(std=
::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocat=
or&lt;char&gt; &gt; const&amp;)'<br>/tmp/ccXdJ5o0.o: In function `uhd::acce=
ss_error::~access_error()':<br>rfnoc_replay_samples_1_from_file.cpp:(.text.=
_ZN3uhd12access_errorD2Ev[_ZN3uhd12access_errorD5Ev]+0xf): undefined refere=
nce to `vtable for uhd::access_error'<br>/tmp/ccXdJ5o0.o: In function `uhd:=
:rfnoc::property_t&lt;int&gt;::get() const':<br>rfnoc_replay_samples_1_from=
_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3getEv[_ZNK3uhd5rfnoc10proper=
ty_tIiE3getEv]+0x133): undefined reference to `uhd::access_error::access_er=
ror(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::=
allocator&lt;char&gt; &gt; const&amp;)'<br>rfnoc_replay_samples_1_from_file=
.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3getEv[_ZNK3uhd5rfnoc10property_tI=
iE3getEv]+0x1a1): undefined reference to `typeinfo for uhd::access_error'<b=
r>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE=
3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x26e): undefined reference to =
`uhd::access_error::access_error(std::__cxx11::basic_string&lt;char, std::c=
har_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'<br>rfn=
oc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3getE=
v[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x2af): undefined reference to `type=
info for uhd::access_error'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15p=
rogram_options11typed_valueIdcEE[_ZTVN5boost15program_options11typed_valueI=
dcEE]+0x38): undefined reference to `boost::program_options::value_semantic=
_codecvt_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;std::__c=
xx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt=
;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, std::=
char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; const&am=
p;, bool) const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_opti=
ons11typed_valueImcEE[_ZTVN5boost15program_options11typed_valueImcEE]+0x38)=
: undefined reference to `boost::program_options::value_semantic_codecvt_he=
lper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;std::__cxx11::basic=
_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &=
gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, std::char_traits=
&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; const&amp;, bool) c=
onst'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_=
valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTVN5boost15=
program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcES=
aIcEEEcEE]+0x38): undefined reference to `boost::program_options::value_sem=
antic_codecvt_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;std=
::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocat=
or&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, =
std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; con=
st&amp;, bool) const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program=
_options20invalid_option_valueE[_ZTVN5boost15program_options20invalid_optio=
n_valueE]+0x20): undefined reference to `boost::program_options::error_with=
_option_name::what() const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15p=
rogram_options20invalid_option_valueE[_ZTVN5boost15program_options20invalid=
_option_valueE]+0x30): undefined reference to `boost::program_options::erro=
r_with_option_name::substitute_placeholders(std::__cxx11::basic_string&lt;c=
har, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&am=
p;) const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16v=
alidation_errorE[_ZTVN5boost15program_options16validation_errorE]+0x20): un=
defined reference to `boost::program_options::error_with_option_name::what(=
) const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16val=
idation_errorE[_ZTVN5boost15program_options16validation_errorE]+0x30): unde=
fined reference to `boost::program_options::error_with_option_name::substit=
ute_placeholders(std::__cxx11::basic_string&lt;char, std::char_traits&lt;ch=
ar&gt;, std::allocator&lt;char&gt; &gt; const&amp;) const'<br>/tmp/ccXdJ5o0=
.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueIdcEE[_ZTIN5boost=
15program_options11typed_valueIdcEE]+0x18): undefined reference to `typeinf=
o for boost::program_options::value_semantic_codecvt_helper&lt;char&gt;'<br=
>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueImc=
EE[_ZTIN5boost15program_options11typed_valueImcEE]+0x18): undefined referen=
ce to `typeinfo for boost::program_options::value_semantic_codecvt_helper&l=
t;char&gt;'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11=
typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTIN5b=
oost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_trai=
tsIcESaIcEEEcEE]+0x18): undefined reference to `typeinfo for boost::program=
_options::value_semantic_codecvt_helper&lt;char&gt;'<br>/tmp/ccXdJ5o0.o:(.d=
ata.rel.ro._ZTIN5boost15program_options16validation_errorE[_ZTIN5boost15pro=
gram_options16validation_errorE]+0x10): undefined reference to `typeinfo fo=
r boost::program_options::error_with_option_name'<br>/tmp/ccXdJ5o0.o:(.data=
.rel.ro._ZTIN3uhd5rfnoc20replay_block_controlE[_ZTIN3uhd5rfnoc20replay_bloc=
k_controlE]+0x10): undefined reference to `typeinfo for uhd::rfnoc::noc_blo=
ck_base'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc13radio_controlE[_=
ZTIN3uhd5rfnoc13radio_controlE]+0x18): undefined reference to `typeinfo for=
 uhd::rfnoc::noc_block_base'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfn=
oc17duc_block_controlE[_ZTIN3uhd5rfnoc17duc_block_controlE]+0x10): undefine=
d reference to `typeinfo for uhd::rfnoc::noc_block_base'<br>/tmp/ccXdJ5o0.o=
: In function `uhd::type_error::~type_error()':<br>rfnoc_replay_samples_1_f=
rom_file.cpp:(.text._ZN3uhd10type_errorD2Ev[_ZN3uhd10type_errorD5Ev]+0xf): =
undefined reference to `vtable for uhd::type_error'<br>/tmp/ccXdJ5o0.o: In =
function `boost::program_options::variables_map::~variables_map()':<br>rfno=
c_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options13variabl=
es_mapD2Ev[_ZN5boost15program_options13variables_mapD5Ev]+0xf): undefined r=
eference to `vtable for boost::program_options::variables_map'<br>/tmp/ccXd=
J5o0.o: In function `boost::program_options::typed_value&lt;double, char&gt=
;::name[abi:cxx11]() const':<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
._ZNK5boost15program_options11typed_valueIdcE4nameB5cxx11Ev[_ZNK5boost15pro=
gram_options11typed_valueIdcE4nameB5cxx11Ev]+0x43): undefined reference to =
`boost::program_options::arg[abi:cxx11]'<br>/tmp/ccXdJ5o0.o: In function `b=
oost::program_options::typed_value&lt;unsigned long, char&gt;::name[abi:cxx=
11]() const':<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15pr=
ogram_options11typed_valueImcE4nameB5cxx11Ev[_ZNK5boost15program_options11t=
yped_valueImcE4nameB5cxx11Ev]+0x43): undefined reference to `boost::program=
_options::arg[abi:cxx11]'<br>/tmp/ccXdJ5o0.o: In function `boost::program_o=
ptions::typed_value&lt;std::__cxx11::basic_string&lt;char, std::char_traits=
&lt;char&gt;, std::allocator&lt;char&gt; &gt;, char&gt;::name() const':<br>=
rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11ty=
ped_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE4nameEv[_ZN=
K5boost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_t=
raitsIcESaIcEEEcE4nameEv]+0x43): undefined reference to `boost::program_opt=
ions::arg[abi:cxx11]'<br>/tmp/ccXdJ5o0.o: In function `boost::program_optio=
ns::typed_value&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;=
char&gt;, std::allocator&lt;char&gt; &gt;, char&gt;::xparse(boost::any&amp;=
, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;ch=
ar&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::ba=
sic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt=
; &gt; &gt; &gt; const&amp;) const':<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text._ZNK5boost15program_options11typed_valueINSt7__cxx1112basic_string=
IcSt11char_traitsIcESaIcEEEcE6xparseERNS_3anyERKSt6vectorIS7_SaIS7_EE[_ZNK5=
boost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_tra=
itsIcESaIcEEEcE6xparseERNS_3anyERKSt6vectorIS7_SaIS7_EE]+0x7a): undefined r=
eference to `boost::program_options::validate(boost::any&amp;, std::vector&=
lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::a=
llocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;=
char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &g=
t; const&amp;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char=
&gt;, std::allocator&lt;char&gt; &gt;*, int)'<br>/tmp/ccXdJ5o0.o: In functi=
on `void boost::program_options::validate&lt;double, char&gt;(boost::any&am=
p;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;=
char&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::=
basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&=
gt; &gt; &gt; &gt; const&amp;, double*, long)':<br>rfnoc_replay_samples_1_f=
rom_file.cpp:(.text._ZN5boost15program_options8validateIdcEEvRNS_3anyERKSt6=
vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT=
_l[_ZN5boost15program_options8validateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1=
112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x42): undefi=
ned reference to `boost::program_options::validators::check_first_occurrenc=
e(boost::any const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text._Z=
N5boost15program_options8validateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112ba=
sic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_=
options8validateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St1=
1char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x122): undefined reference to `boo=
st::program_options::invalid_option_value::invalid_option_value(std::__cxx1=
1::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;ch=
ar&gt; &gt; const&amp;)'<br>/tmp/ccXdJ5o0.o: In function `void boost::progr=
am_options::validate&lt;unsigned long, char&gt;(boost::any&amp;, std::vecto=
r&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std:=
:allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&l=
t;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; =
&gt; const&amp;, unsigned long*, long)':<br>rfnoc_replay_samples_1_from_fil=
e.cpp:(.text._ZN5boost15program_options8validateImcEEvRNS_3anyERKSt6vectorI=
NSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5=
boost15program_options8validateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basi=
c_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x42): undefined ref=
erence to `boost::program_options::validators::check_first_occurrence(boost=
::any const&amp;)'<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost=
15program_options8validateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_str=
ingIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options=
8validateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_t=
raitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x11d): undefined reference to `boost::pro=
gram_options::invalid_option_value::invalid_option_value(std::__cxx11::basi=
c_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; =
&gt; const&amp;)'<br>/tmp/ccXdJ5o0.o: In function `boost::program_options::=
error_with_option_name::error_with_option_name(boost::program_options::erro=
r_with_option_name const&amp;)':<br>rfnoc_replay_samples_1_from_file.cpp:(.=
text._ZN5boost15program_options22error_with_option_nameC2ERKS1_[_ZN5boost15=
program_options22error_with_option_nameC5ERKS1_]+0x27): undefined reference=
 to `vtable for boost::program_options::error_with_option_name'<br>/tmp/ccX=
dJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0_19error=
_info_injectorINS_15program_options16validation_errorEEEEE[_ZTVN5boost16exc=
eption_detail10clone_implINS0_19error_info_injectorINS_15program_options16v=
alidation_errorEEEEE]+0x28): undefined reference to `boost::program_options=
::error_with_option_name::what() const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._Z=
TVN5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15prog=
ram_options16validation_errorEEEEE[_ZTVN5boost16exception_detail10clone_imp=
lINS0_19error_info_injectorINS_15program_options16validation_errorEEEEE]+0x=
38): undefined reference to `boost::program_options::error_with_option_name=
::substitute_placeholders(std::__cxx11::basic_string&lt;char, std::char_tra=
its&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;) const'<br>/tmp=
/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_injecto=
rINS_15program_options16validation_errorEEE[_ZTVN5boost16exception_detail19=
error_info_injectorINS_15program_options16validation_errorEEE]+0x20): undef=
ined reference to `boost::program_options::error_with_option_name::what() c=
onst'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error=
_info_injectorINS_15program_options16validation_errorEEE[_ZTVN5boost16excep=
tion_detail19error_info_injectorINS_15program_options16validation_errorEEE]=
+0x30): undefined reference to `boost::program_options::error_with_option_n=
ame::substitute_placeholders(std::__cxx11::basic_string&lt;char, std::char_=
traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;) const'<br>/=
tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0_=
19error_info_injectorINS_15program_options20invalid_option_valueEEEEE[_ZTVN=
5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15program=
_options20invalid_option_valueEEEEE]+0x28): undefined reference to `boost::=
program_options::error_with_option_name::what() const'<br>/tmp/ccXdJ5o0.o:(=
.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0_19error_info_inj=
ectorINS_15program_options20invalid_option_valueEEEEE[_ZTVN5boost16exceptio=
n_detail10clone_implINS0_19error_info_injectorINS_15program_options20invali=
d_option_valueEEEEE]+0x38): undefined reference to `boost::program_options:=
:error_with_option_name::substitute_placeholders(std::__cxx11::basic_string=
&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; con=
st&amp;) const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_det=
ail19error_info_injectorINS_15program_options20invalid_option_valueEEE[_ZTV=
N5boost16exception_detail19error_info_injectorINS_15program_options20invali=
d_option_valueEEE]+0x20): undefined reference to `boost::program_options::e=
rror_with_option_name::what() const'<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN=
5boost16exception_detail19error_info_injectorINS_15program_options20invalid=
_option_valueEEE[_ZTVN5boost16exception_detail19error_info_injectorINS_15pr=
ogram_options20invalid_option_valueEEE]+0x30): undefined reference to `boos=
t::program_options::error_with_option_name::substitute_placeholders(std::__=
cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&l=
t;char&gt; &gt; const&amp;) const'<br>collect2: error: ld returned 1 exit s=
tatus<br>&lt;builtin&gt;: recipe for target 'rfnoc_replay_samples_1_from_fi=
le' failed<br>make: *** [rfnoc_replay_samples_1_from_file] Error 1<br><br><=
/div><div>From looking at the whole printout to the screen, it seems as tho=
ugh UHD functions as well as boost functions are not being seen, hence the =
"undefined reference" messages. I'm unclear as to why this is happening at =
the moment. This is a complete printout. </div></div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div=
><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_0202758600" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, August 25, 2021, 10:30:21 AM EDT, Tellrel=
l White via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv8453007228"><div><div class=3D"yiv845300=
7228ydpe3431cb5yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr"><div>Thanks for the reply. I tried the CMake appro=
ach following the steps you mentioned but received an error when building.&=
nbsp; </div></div><div><br clear=3D"none"></div><div dir=3D"ltr">First, I c=
reated CMakeLists which is pretty simple as shown below<br clear=3D"none"><=
/div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><div dir=3D=
"ltr"><pre class=3D"yiv8453007228ydp83236ee7default yiv8453007228ydp83236ee=
7s-code-block"><code class=3D"yiv8453007228ydp83236ee7hljs yiv8453007228ydp=
83236ee7language-scss">cmake_minimum_required(VERSION <span class=3D"yiv845=
3007228ydp83236ee7hljs-number">3.10</span>)

<span class=3D"yiv8453007228ydp83236ee7hljs-selector-id">#set</span> the pr=
oject name
project(Tutorial)

<span class=3D"yiv8453007228ydp83236ee7hljs-selector-id">#add</span> the ex=
ecutable
add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)<br clea=
r=3D"none"><br clear=3D"none">Then, I sourced the file, and set the flag fo=
r CMake. Lastly, inside of a build directory, I tried building the App and =
got the following printout <br clear=3D"none"><br clear=3D"none"></code></p=
re><div>/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libex=
ec/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/=
replay_example.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5bo=
ost15program_options11typed_valueIjcEE[_ZTVN5boost15program_options11typed_=
valueIjcEE]+0x1c): undefined reference to `boost::program_options::value_se=
mantic_codecvt_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; co=
nst&amp;, bool) const'<br clear=3D"none">/usr/local/share/uhd/images/y/sysr=
oots/x86_64-oesdk-linux/usr/libexec/arm-oe-linux-gnueabi/gcc/arm-oe-linux-g=
nueabi/9.2.0/real-ld: CMakeFiles/replay_example.dir/rfnoc_replay_samples_1_=
from_file.cpp.o:(.rodata._ZTVN5boost15program_options11typed_valueIdcEE[_ZT=
VN5boost15program_options11typed_valueIdcEE]+0x1c): undefined reference to =
`boost::program_options::value_semantic_codecvt_helper&lt;char&gt;::parse(b=
oost::any&amp;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::cha=
r_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt; &gt; &gt; const&amp;, bool) const'<br clear=3D"none">c=
ollect2: error: ld returned 1 exit status<br clear=3D"none">CMakeFiles/repl=
ay_example.dir/build.make:83: recipe for target 'replay_example' failed<br =
clear=3D"none">make[2]: *** [replay_example] Error 1<br clear=3D"none">CMak=
eFiles/Makefile2:75: recipe for target 'CMakeFiles/replay_example.dir/all' =
failed<br clear=3D"none">make[1]: *** [CMakeFiles/replay_example.dir/all] E=
rror 2<br clear=3D"none">Makefile:83: recipe for target 'all' failed<br cle=
ar=3D"none">make: *** [all] Error 2<br clear=3D"none"></div><div><br clear=
=3D"none"></div><div dir=3D"ltr">I'm not sure if this is a boost issue or s=
omething else.<br clear=3D"none"></div><br clear=3D"none"></div><div><br cl=
ear=3D"none"></div></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr"><br clear=3D"none"></div>
       =20
        </div><div class=3D"yiv8453007228yqt0422141400" id=3D"yiv8453007228=
yqt56248"><div class=3D"yiv8453007228yahoo_quoted" id=3D"yiv8453007228yahoo=
_quoted_0629161307">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon =
Pendlum &lt;jonathon.pendlum@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv8453007228"><div><div dir=3D"ltr">Hi Tel=
lrell,<div><br clear=3D"none"></div><div>Do not use the Xilinx SDK, only th=
e Yocto one, i.e.&nbsp;<span style=3D"font-size:13px;font-family:Helvetica,=
 Arial, sans-serif;">/usr/local/share/uhd/images/y/</span><span style=3D"fo=
nt-size:13px;font-family:Helvetica, Arial, sans-serif;">sysroots/cortexa9t2=
hf-neon-oe-</span><span style=3D"font-size:13px;font-family:Helvetica, Aria=
l, sans-serif;">linux-gnueabi</span></div><div><br clear=3D"none"></div><di=
v>You need to source the "environment-setup-cortexa9t2hf-neon-oe-linux-gnue=
abi"&nbsp;file before cross compiling. If you use cmake with building your =
application, you also need to set the flag "-DCMAKE_TOOLCHAIN_FILE=3D&lt;pa=
th to UHD&gt;/host/cmake/Toolchains/oe-sdk_cross.cmake".</div><div><br clea=
r=3D"none"></div><div>Also, if you just want to run the UHD example, it alr=
eady exists on the N310's root file system at: /usr/lib/uhd/examples/rfnoc_=
replay_samples_from_file</div><div><br clear=3D"none"></div><div>Jonathon</=
div></div><br clear=3D"none"><div class=3D"yiv8453007228gmail_quote"><div c=
lass=3D"yiv8453007228yqt7208477581" id=3D"yiv8453007228yqt79511"><div class=
=3D"yiv8453007228gmail_attr" dir=3D"ltr">On Tue, Aug 24, 2021 at 4:42 PM Te=
llrell White via USRP-users &lt;<a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv8453007228gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex;"><div><div style=3D"font-family:Helvetica, Arial, sa=
ns-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr">I'm trying to compile the source code using SDK 20=
19.1. I'm pointing the the SDK project to the directory for sysroot and als=
o to the directory for my linux toolchain which are the following</div><div=
 dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"> <span>/usr/local/sh=
are/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi<span><br clear=
=3D"none"></span></span></div><div dir=3D"ltr"><span><span><br clear=3D"non=
e"></span></span></div><div dir=3D"ltr"><span><span>/tools/Xilinx/SDK/2019.=
1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf</span></span></=
div><div dir=3D"ltr"><span><span><br clear=3D"none"></span></span></div><di=
v dir=3D"ltr"><span><span>I continue to get the following error stating tha=
t these files can't be found, however, they do exist. And, when I try addin=
g them within the project and refreshing nothing happens. <br clear=3D"none=
"></span></span></div><div dir=3D"ltr"><span><span><br clear=3D"none"></spa=
n></span></div><div><span></span><br clear=3D"none"><div>cannot find /lib/l=
d-linux-armhf.so.3&nbsp;&nbsp; <br clear=3D"none"></div><br clear=3D"none">=
<div dir=3D"ltr"><div><div>cannot find /lib/libc.so.6&nbsp;&nbsp;&nbsp; <br=
 clear=3D"none"></div><div><br clear=3D"none"><div>cannot find /usr/lib/lib=
c_nonshared.a&nbsp;&nbsp;&nbsp; <br clear=3D"none"></div><div><br clear=3D"=
none"></div><div dir=3D"ltr">Am I going about building this application cor=
rectly? I thought that linking my project to sysroot which I installed for =
the n310 and to the SDK toolchain( maybe I'm doing this incorrectly) would =
be pretty straightforward.<br clear=3D"none"></div><br clear=3D"none"></div=
><div dir=3D"ltr"><div><br clear=3D"none"></div></div><br clear=3D"none"></=
div><div><br clear=3D"none"></div></div><br clear=3D"none"></div><div dir=
=3D"ltr"><span><br clear=3D"none"></span></div><div dir=3D"ltr"><span></spa=
n><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div d=
ir=3D"ltr"><br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"yiv8453007228gmail-m_4135037161792215501yahoo_quot=
ed_0310847195">
            <div style=3D"font-family:Helvetica, Arial, sans-serif;font-siz=
e:13px;color:rgb(38,40,42);">
               =20
                <div>
                    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D.=
 Leech &lt;<a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv8453007228gmail-m_4135037161792215501yiv=
8850409427"><div>
    <div id=3D"yiv8453007228gmail-m_4135037161792215501yiv8850409427yqtfd55=
190"><div>On 2021-08-24 12:08 p.m., Tellrell
      White wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div id=3D"yiv8453007228gmail-m_413503716179=
2215501yiv8850409427yqtfd67013"></div><div><div style=3D"font-family:Helvet=
ica, Arial, sans-serif;font-size:13px;"><div id=3D"yiv8453007228gmail-m_413=
5037161792215501yiv8850409427yqtfd55908">
        </div><div dir=3D"ltr"><div id=3D"yiv8453007228gmail-m_413503716179=
2215501yiv8850409427yqtfd79456">Yep. Marcus you caught it!!
          That worked. Do I need to complete the sections on "Compiling
          MPM Natively" and "Building UHD"?? I understand that I need
          the cross-compiler for compiling SW for the device but I don't
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh'ing over the executable?
          </div><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    As far as I know, you should be able to just cross-compile the code
    you're interested in.<div id=3D"yiv8453007228gmail-m_413503716179221550=
1yiv8850409427yqtfd36793"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></div></div></div><div class=3D"yqt0422141400" id=3D"yqt30266=
">_______________________________________________<br clear=3D"none">USRP-us=
ers mailing list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.et=
tus.com" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect"=
 ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D=
"none"></div></div>
            </div>
        </div></body></html>
------=_Part_528749_74420697.1629939559983--

--===============0118259684190689730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0118259684190689730==--
